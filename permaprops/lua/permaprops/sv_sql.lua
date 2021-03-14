--[[
____                                    ____                                 
/\  _`\                                 /\  _`\                               
\ \ \L\ \ __   _ __    ___ ___      __  \ \ \L\ \_ __   ___   _____     ____  
 \ \ ,__/'__`\/\`'__\/' __` __`\  /'__`\ \ \ ,__/\`'__\/ __`\/\ '__`\  /',__\ 
  \ \ \/\  __/\ \ \/ /\ \/\ \/\ \/\ \L\.\_\ \ \/\ \ \//\ \L\ \ \ \L\ \/\__, `\
   \ \_\ \____\\ \_\ \ \_\ \_\ \_\ \__/.\_\\ \_\ \ \_\\ \____/\ \ ,__/\/\____/
    \/_/\/____/ \/_/  \/_/\/_/\/_/\/__/\/_/ \/_/  \/_/ \/___/  \ \ \/  \/___/ 
                                                                \ \_\         
                                                                 \/_/         
    File: sv_sql.lua
    Author: Summe

    For internal purposes.
    The SQL stuff is handled here.
]]--

hook.Add("PermaProps.Loaded", "InitializePermaPropsMySQL", function()
    if PermaProps.Config.UseMySQL then
        PermaProps:Print(Color(255,175,55), "Use mysql as database type.")
        require("mysqloo")

        PermaProps:SQLConnect()
    else
        PermaProps:Print(Color(255,175,55), "Use local sv.db as database type.")
        hook.Run("PermaProps.SQLReady")
    end
end)


function PermaProps:SQLQuery(queryString, callback, shouldWait, useLocalDB)

    if PermaProps.Config.UseMySQL and not useLocalDB then
        local query = PermaProps.MySQL:query(queryString)
        query.onSuccess = function(_, data)
            if(callback) then
                callback(data)
            end
        end
        query.onError = function(q, err, sql)
            print(err)
        end
        query:start()

        if shouldWait then
            query:wait()
        end

    else
        local data = sql.Query(queryString)
        if(callback) then
            callback(data)
        end
    end
end

function PermaProps:SQLConnect()
    PermaProps.MySQL = mysqloo.connect(PermaProps.Config.MySQL["host"], PermaProps.Config.MySQL["username"], PermaProps.Config.MySQL["password"], PermaProps.Config.MySQL["db"], PermaProps.Config.MySQL["port"])

    function PermaProps.MySQL:onConnected()
        PermaProps:Print(Color(13,158,0), "MySQL database connection successfully established.")
        hook.Run("PermaProps.SQLReady")
    end

    function PermaProps.MySQL:onConnectionFailed(error)
        PermaProps:Print(Color(255,55,55), "Could not connect to MySQL database!")
        PermaProps:Print(Color(255,55,55), "[Error] ")
        PermaProps:Print(Color(255,55,55), db)
    end

    PermaProps.MySQL:connect()
end