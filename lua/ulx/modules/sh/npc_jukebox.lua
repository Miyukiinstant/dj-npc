function ulx.npc_jukebox( calling_ply)
    
    if calling_ply:GetInfoNum("npc_jukebox", "1") > 0 then
        calling_ply:ConCommand("stopsound")
        calling_ply:ConCommand("npc_jukebox 0")
    else
        calling_ply:ConCommand("npc_jukebox 1")
    end
end
local npc_jukebox = ulx.command( "Fun", "ulx music", ulx.music, "!music" )
npc_jukebox:defaultAccess( ULib.DEFAULT_ACCESS )