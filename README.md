# Thinkpad-P51-Linux
Scripts that I made for getting some functions of the Thinkpad P51 working under Linux. I use Arch Linux btw, but the scripts should work on other distros as well.
I use KDE, so you may need to change a few things for other DEs (mostly things like 'konsole' to your own terminal software of choice, etc.)

## File Structure
I will upload the scripts according to the directories I have them installed in. I don't use relative file paths, but I will add a comment on the end of the lines that need to be changed for your file path.

## Scripts

1. ~/Desktop/StartExtDP.sh & ~/Scripts/ExternalDisplay/* - Used for allowing the laptop to use it's external video outputs while using *Bumblebee (An NVIDIA Hybrid Graphics Manager Program)*. Operating steps:
    1. First plug in the external display into the laptop (either with HDMI or DP)
    2. Run the StartExtDP.sh script after that's done
    3. Using Fn+F7 you can select the way the external screen will function. (If using Arch with KDE, you will need the *kscreen* package for it, most other distros have their DE's screen manager installed by default). 
    4. If you want to exit, you can just go into the terminal it opened, and press Ctrl+C.  
2. ~/Script/Thunderbolt.sh & /lib/systemd/system/startthunderbolt.service - Used for enabling *Thunderbolt* capability on the laptop. This script will need to run at every startup, so we will add a service to manage it. Installation steps:
    1. Copy the */lib/systemd/system/startthunderbolt.service* into the same (*/lib/systemd/system/*) directory on your laptop.
    2. Use the following command to set the right permissions: ```sudo chmod 644 /lib/systemd/system/startthunderbolt.service```
    3. Use the following command to start the service: ```sudo systemctl start startthunderbolt.service```
    4. Restart the laptop and run ```sudo systemctl status startthunderbolt.service``` to check if it works.
    
    
    **Reminder: Thunderbolt being enabled may result in a bit lower battery life even if it isn't used, that's how force power works.**
