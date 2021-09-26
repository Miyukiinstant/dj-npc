local jukebox= "track2_jukebox"
local soundfiles = {
    "music/track02/black_mesa_tension.mp3",
    "music/track02/hl_sector_sweep.mp3",
    "music/track02/hl2_alyx_anti_citizen.mp3",
    "music/track02/hl2_alyx_arena.mp3",
    "music/track02/hl2_ep1.mp3",
    "music/track02/yamantau.mp3"
 }
 CreateClientConVar(jukebox, 0, true, true, "Toggles track02 jukebox",0 , 1)
 local function playMusic()
     surface.PlaySound(table.Random(soundfiles))
 end
 if cvars.Bool(jukebox) then
     playMusic()
 end
 
 timer.Create("track2_dj", 200, 0, function()
     if cvars.Bool(jukebox) then
         playMusic()
     end
     
 end)
 
 cvars.AddChangeCallback(jukebox, function(cvar_name, old_cvar, new_cvar)
     if cvars.Bool(cvar_name) then
         text = "Track 02 playing"
         playMusic()
     else
         text = "Track 02 OFF"
         RunConsoleCommand("stopsound")
     end
     notification.AddLegacy(text, 0, 2)
 end, "track2_jukebox_id")
 
 