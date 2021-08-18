local soundfiles = {
   "music/vlvx_song0.mp3",
   "music/vlvx_song3.mp3",
   "music/vlvx_song9.mp3",
   "music/vlvx_song15.mp3",
   "music/vlvx_song22.mp3",
   "music/vlvx_song23.mp3",
   "music/vlvx_song23ambient.mp3",
   "music/vlvx_song24.mp3",
   "music/vlvx_song25.mp3",
   "music/vlvx_song26.mp3",
   "music/vlvx_song27.mp3",
   "music/vlvx_song28.mp3",
   "music/sector_sweep.mp3",
   "music/violation.mp3",
   "music/vortal_combat.mp3",
   "music/hunting_party.mp3"        
}

CreateClientConVar("npc_jukebox", 1, true, true, "Toggles npc jukebox",0 , 1)

timer.Create("npc_dj", 5000, 0, function()
    if GetConVar("npc_jukebox"):GetInt() > 0 then
        surface.PlaySound(table.Random(soundfiles))
    end
    
end)

