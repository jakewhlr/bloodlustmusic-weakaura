local LSM = LibStub("LibSharedMedia-3.0")

local prefix = "BloodlustMusicS2_" -- Your prefix
aura_env.songs = {} -- Cached song list

-- Build the song list ONCE when the WeakAura loads
for _, soundName in ipairs(LSM:List("sound")) do
    if string.sub(soundName, 1, #prefix) == prefix then
        table.insert(aura_env.songs, soundName)
    end
end

if #aura_env.songs == 0 then
    print("No BloodlustMusicS2_ sounds found in SharedMedia!")
end
