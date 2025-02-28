StopSound(aura_env.bloodlustSoundHandle, 2000)

C_Timer.After(2, function() -- Waits 2 seconds before restoring volume
        SetCVar("Sound_DialogVolume", aura_env.bloodlustOldVol)
end)
