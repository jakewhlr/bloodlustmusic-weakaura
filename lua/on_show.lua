if #aura_env.songs == 0 then
    print("No BloodlustMusicS2_ sounds available!")
    return
end

-- Store and modify sound settings within aura_env
aura_env.bloodlustOldVol = GetCVar("Sound_DialogVolume")
SetCVar("Sound_DialogVolume", aura_env.config["bloodlustVol"] / 100)

-- Select a song at random based on time
local songIndex = mod(floor(time() / 100), #aura_env.songs) + 1
local selectedSong = aura_env.songs[songIndex]

-- Fetch the full path from LSM and play the song
local songPath = LibStub("LibSharedMedia-3.0"):Fetch("sound", selectedSong)
if songPath then
    _, aura_env.bloodlustSoundHandle = PlaySoundFile(songPath, "Dialog")
else
    print("Error: Could not fetch path for selected song: " .. selectedSong)
end