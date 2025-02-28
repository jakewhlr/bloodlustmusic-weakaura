# BloodlustMusic WeakAura

BloodlustMusic is a **World of Warcraft WeakAura** that plays custom music whenever **Bloodlust**, **Heroism**, or a similar event is triggered. The songs are synchronized across all players running this WeakAura to enhance the group experience.

# Acknowledgments

This WeakAura was inspired by the addon [BloodlustMusic](https://www.curseforge.com/wow/addons/bloodlustmusic) by [Yellowdevil1](https://www.curseforge.com/members/yellowdevil1/projects).

## Installation
### 1️⃣ Add Custom Assets
Install the SharedMedia pack on CurseForge

### 2️⃣ Import WeakAura
- Open **WeakAuras** in WoW (`/wa` command).
- Click **Import** and paste the contents of `weakaura.json`.

## File Structure
```
bloodlustmusic-weakaura/
│── lua/
│   ├── on_init.lua        # Runs when the aura loads
│   ├── on_show.lua        # Handles music playback
│   ├── on_hide.lua        # Stops the music and resets volume
│── media/
│   ├── icon.tga           # Custom icon
│── weakaura.json          # Full WeakAura export
│── .gitignore             # Ignore unnecessary files
│── README.md              # This file
```
