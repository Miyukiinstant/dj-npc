local soundfiles = {
   "music/npc/vlvx_song0.mp3",
   "music/npc/vlvx_song3.mp3",
   "music/npc/vlvx_song9.mp3",
   "music/npc/vlvx_song15.mp3",
   "music/npc/vlvx_song22.mp3",
   "music/npc/vlvx_song23.mp3",
   "music/npc/vlvx_song23ambient.mp3",
   "music/npc/vlvx_song24.mp3",
   "music/npc/vlvx_song25.mp3",
   "music/npc/vlvx_song26.mp3",
   "music/npc/vlvx_song27.mp3",
   "music/npc/vlvx_song28.mp3",
   "music/npc/sector_sweep.mp3",
   "music/npc/violation.mp3",
   "music/npc/vortal_combat.mp3",
   "music/npc/hunting_party.mp3"        
}
CreateClientConVar("npc_jukebox", 0, true, true, "Toggles npc jukebox",0 , 1)
local function playMusic()
    surface.PlaySound(table.Random(soundfiles))
end
if cvars.Bool("npc_jukebox") then
    playMusic()
end

timer.Create("npc_dj", 200, 0, function()
    if cvars.Bool("npc_jukebox") then
        playMusic()
    end
    
end)

cvars.AddChangeCallback("npc_jukebox", function(cvar_name, old_cvar, new_cvar)
    if cvars.Bool(cvar_name) then
        text = "NPC Music Playing"
        playMusic()
    else
        text = "NPC Music OFF"
        RunConsoleCommand("stopsound")
    end
    notification.AddLegacy(text, 0, 2)
end, "npc_jukebox_id")

