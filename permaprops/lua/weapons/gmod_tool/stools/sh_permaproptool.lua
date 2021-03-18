TOOL.Category = "Other"
TOOL.Name = "PermaProps"
TOOL.Command = nil
TOOL.ConfigName = nil
 
cleanup.Register("permaprops")

if CLIENT then
    language.Add("Tool.sh_permaproptool.name", "Create PermaProp")
    language.Add("Tool.sh_permaproptool.desc", "Make an entity permanent, which reappears on the map after every server restart and map change.")
    language.Add("Tool.sh_permaproptool.0", "Left click: Make entity permanent | Right click: Remove permanent status | Reload: Open perma prop information")
    language.Add("sh_permaproptool", "Left click: Make entity permanent | Right click: Remove permanent status | Reload: Open perma prop information")

end

if SERVER then

    net.Receive("PermaProps.Tool.PermaProp", function(len, ply)
        local ent = net.ReadEntity()
        PermaProps:AddProp(ply, ent, false)
    end)

    net.Receive("PermaProps.Tool.DePermaProp", function(len, ply)
        local ent = net.ReadEntity()
        PermaProps:RemoveProp(ply, ent)
    end)

end

function TOOL:LeftClick(trace)
    if not IsFirstTimePredicted() then return false end

    if CLIENT then
        local ent = trace.Entity
        if !ent or !ent:IsValid() or ent:IsPlayer() or ent:IsWorld() and not ent:GetClass("sammyservers_textscreen") then return false end

        if not PermaProps:PlayerHasPermission(LocalPlayer(), "PermaProps.CanPermaProp", false) then return end

        net.Start("PermaProps.Tool.PermaProp")
            net.WriteEntity(trace.Entity)
        net.SendToServer()
        
    end

    return true
end
 
function TOOL:RightClick(trace)
    if not IsFirstTimePredicted() then return false end

    if CLIENT then
        local ent = trace.Entity
        if !ent or !ent:IsValid() or ent:IsPlayer() or ent:IsWorld() and not ent:GetClass("sammyservers_textscreen") then return false end
        if not PermaProps:PlayerHasPermission(LocalPlayer(), "PermaProps.CanPermaProp", false) then return end
        net.Start("PermaProps.Tool.DePermaProp")
            net.WriteEntity(trace.Entity)
        net.SendToServer()
        
    end

    return true
end

function TOOL:Reload(trace)
    if not IsFirstTimePredicted() then return false end

    if CLIENT then
        local ent = trace.Entity
        if !ent or !ent:IsValid() or ent:IsPlayer() or ent:IsWorld() and not ent:GetClass("sammyservers_textscreen") then return false end
        if not PermaProps:PlayerHasPermission(LocalPlayer(), "PermaProps.CanPermaProp", false) then return end

        net.Start("PermaProps.RequestID")
        net.WriteEntity(ent)
        net.SendToServer()

        net.Receive("PermaProps.RequestID", function()
            local id = net.ReadInt(32)
            if not id or id == -1 then return end

            PermaProps.Overview:OpenMenu(id)   
        end)
    end

    return true
end
 
function TOOL:BuildCPanel()
    if SERVER then return end

    self:AddControl("Header", {
        Text = "PermaProps",
        Description = "Make an entity permanent, which reappears on the map after every server restart and map change."
    })

    self:AddControl("Button", {
        Label = "Perma Prop Overview", 
        Command = "permaprops_open_overview"
    })

    self:AddControl("Button", {
        Label = "Perma Prop Settings", 
        Command = "permaprops_open_admin"
    })
end