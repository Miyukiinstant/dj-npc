function ulx.npc_jukebox( calling_ply)
    local npc_jukebox = "npc_jukebox"
    local track_jukebox = "track_jukebox"
    local track2_jukebox = "track2_jukebox"
    if calling_ply:GetInfoNum(npc_jukebox, "1") > 0 then
        calling_ply:ConCommand("stopsound")
        calling_ply:ConCommand(npc_jukebox .. " 0")
    else
        calling_ply:ConCommand(track2_jukebox .. " 0")
        calling_ply:ConCommand(track_jukebox.." 0")
        calling_ply:ConCommand(npc_jukebox.." 1")        
    end
end
local npc_jukebox = ulx.command( "Fun", "ulx npcjukebox", ulx.npc_jukebox, "!npcjukebox" )
npc_jukebox:defaultAccess( ULib.DEFAULT_ACCESS )

function ulx.track_jukebox( calling_ply)
    local track_jukebox = "track_jukebox"
    local track2_jukebox = "track2_jukebox"
    local npc_jukebox = "npc_jukebox"
    if calling_ply:GetInfoNum(track_jukebox, "1") > 0 then
        calling_ply:ConCommand("stopsound")
        calling_ply:ConCommand(track_jukebox .." 0")
    else
        calling_ply:ConCommand(track2_jukebox .. " 0")
        calling_ply:ConCommand(npc_jukebox.." 0")
        calling_ply:ConCommand(track_jukebox.." 1")
    end
end
local track_jukebox = ulx.command( "Fun", "ulx track01", ulx.track_jukebox, "!track01" )
track_jukebox:defaultAccess( ULib.DEFAULT_ACCESS )

function ulx.track2_jukebox( calling_ply)
    local npc_jukebox = "npc_jukebox"
    local track2_jukebox = "track2_jukebox"
    local track_jukebox = "track_jukebox"
    if calling_ply:GetInfoNum(track2_jukebox, "1") > 0 then
        calling_ply:ConCommand("stopsound")
        calling_ply:ConCommand(track2_jukebox .. " 0")
    else
        calling_ply:ConCommand(track2_jukebox.." 1")
        calling_ply:ConCommand(track_jukebox.." 0")      
        calling_ply:ConCommand(npc_jukebox.." 0")     
    end
end
local track2_jukebox = ulx.command( "Fun", "ulx track02", ulx.track2_jukebox, "!track02" )
track2_jukebox:defaultAccess( ULib.DEFAULT_ACCESS )