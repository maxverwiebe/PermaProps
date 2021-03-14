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
    File: sh_config.lua
    Author: Summe

    A wide variety of things can be customized here.
    But keep in mind that after some changes a mapchange is necessary.
]]--

PermaProps.Config = {}

-- Here the UI can be customized a bit.
PermaProps.Config.Theme = {
    bg = Color(27,27,27),
    navButton = Color(34,34,34),
    primary = Color(255,30,0),
    textEntryText = Color(168,168,168)
}

-- Model paths and classes can be specified here, which can not be permapropped.
PermaProps.Config.ForbiddenEntities = {
    "models/props_c17/lockers001a.mdl",
}

-- The limit of PermaProps on a map.
PermaProps.Config.Limit = 1000

-- How many props to download at once in the overview menu.
PermaProps.Config.PerDownload = 30

-- Actually only for internal purposes. Is there to optimize keyvalues so that not so much data is stored.
PermaProps.Config.IgnoreKeyvalues = {"BreakModelMessage","Damagetype","ExplodeDamage","LightningOrigin","LightningOriginHack","PerformanceMode","PressureDelay","ResponeContext","SetBodyGroup","TeamNum","avelocity","basevelocity","body","classname","cycle","damagefilter","damagetoenablemotion","effects","fademaxdist","fademindist","fadescale","forcetoenablemotion","friction","globalname","gravity","hammerid","health","hitboxset","inertiascale","ltime","massscale","max_health","minhealthdmg","modelindex","modelscale","overridescript","parentname","physdamagescale","paybackrate","puntsound","rendercolor","renderfx","rendermode","sequence","shadowcastdist","skin","spawnflags","speed","target","textframeindex","velocity","view_ofs","waterlevel","ExplodeRadius","LightingOrigin","LightingOriginHack","ResponseContext","playbackrate","texframeindex"}

-- Whether PermaProps should be automatically respawned when doing an Admin Cleanup.
PermaProps.Config.SpawnOnCleanup = true

-- Here you can specify the time how long an entity should remain highlighted.
PermaProps.Config.HighlightTime = 30

-- Time notations
--
-- For European time: %H:%M:%S - %d.%m.%Y
-- For American time: %I:%M:%S %p - %m/%d/%Y
-- More info https://wiki.facepunch.com/gmod/os.date
--
PermaProps.Config.TimeString = "%H:%M:%S - %d.%m.%Y"

-- MySQL
--
-- Here you can set up a MySQL connection.
-- But for this the MySQLOO module is needed.
-- https://github.com/FredyH/MySQLOO
--
PermaProps.Config.UseMySQL = false
PermaProps.Config.MySQL = {}
PermaProps.Config.MySQL["username"] = "test" -- Username
PermaProps.Config.MySQL["password"] = "test" -- Password
PermaProps.Config.MySQL["host"] = "127.0.0.1" -- Host
PermaProps.Config.MySQL["port"] = "3006" -- Port
PermaProps.Config.MySQL["db"] = "permaprops_test" -- Schema (database) to use