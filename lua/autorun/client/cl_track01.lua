local soundfiles = {
    "music/track01/clues_in_the_darkness.mp3",
    "music/track01/hl2_alien.mp3",
    "music/track01/hl2_calabi.mp3",
    "music/track01/hl2_lab.mp3",
    "music/track01/hl2_slow_light.mp3",
    "music/track01/hl2_triple.mp3",
    "music/track01/metro_ost.mp3"
 }
 CreateClientConVar("track_jukebox", 0, true, true, "Toggles track01 jukebox",0 , 1)
 local function playMusic()
     surface.PlaySound(table.Random(soundfiles))
 end
 if cvars.Bool("track_jukebox") then
     playMusic()
 end
 
 timer.Create("track_dj", 200, 0, function()
     if cvars.Bool("track_jukebox") then
         playMusic()
     end
     
 end)
 
 cvars.AddChangeCallback("track_jukebox", function(cvar_name, old_cvar, new_cvar)
     if cvars.Bool(cvar_name) then
         text = "Track 01 playing"
         playMusic()
     else
         text = "Track 01 OFF"
         RunConsoleCommand("stopsound")
     end
     notification.AddLegacy(text, 0, 2)
 end, "track_jukebox_id")
 
 