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
    
## Recommendations & Modifications

**Light tweaking**: I recommend using *TLP* and [*TLPUI*](https://github.com/d4nj1/TLPUI) for getting better performance and longer battery life out of the P51, as it needs some tweaking after installation. You can even set battery charge percentages and related stuff on this model, if you want a longer battery lifespan.
I get about **5-6 hours of light/regular usage** *(web browsing, coding, etc)* on maximum brightness with the tweaks. 

**Touchscreen display**: If you get the laptop with a touchscreen display, be prepared for *some extreme glossiness*. The glossiness makes it pretty hard to use in direct sunlight. There are anti-gloss screen protectors available for this model, *that are a must if you want to use it outdoors*. Also, the touchscreen display is only available in 1080p, but that wasn't a problem for me as I don't have a need for higher resolutions, and I like the reduced power the 1080p panel takes, even with the touchscreen enabled.

**Installing a 4G modem**: You can install a 4G modem inside the laptop as well, but there is a whitelist. Both the EM7455 (the official part for this model, a bit pricey), and older modems from the same company (with modifying them to appear as the EM7455 to bypass the whitelist) can work with the laptop, but they will need some configuration for using them with 4G and GPS. If you don't have the laptop prepared for WWAN, you can buy the antennas for it online by searching the FRU that's on the Lenovo website for the laptop. There isn't a GPS antenna available for the device, so if you want to use it, you either have to wire it out from the chassis, or install a smaller GPS antenna inside it (like I did, pictures will be added at a later time). Both [this](https://forums.lenovo.com/t5/Ubuntu/Getting-Sierra-EM7455-and-similar-to-work-on-X1C6/td-p/4326043) and [this](https://www.reddit.com/r/thinkpad/comments/bwmt20/thinkpad_x1c6t480s_sierra_wireless_em7455em7565/) can be used, in the second one **you need to skip the blocks starting with '[EM7455]' and [EM7565]**, as *if you do them you will need to reset the device and bypass the whitelist at boot*, which are pretty hard steps I will go into later. I used the second one, as it has more detailed steps, and also helps with getting the GPS working. The script for enabling GPS will be also added later.

**Intel ME**: Right now, Intel ME cannot be neutralized on this model, so if you're thinking of buying one at the moment and need to have it ME neutralized, you need to look to other models.

**Maintenance**: I recommend cleaning the insides of the laptop at least once every year, and removing and applying new thermal paste on the CPU every two years. The easiest method for cleaning the keyboard is using *compressed air*, but you can also use any lower pressure blower for cleaning it. Compressed air is also pretty good for cleaning the insides of the computer, as dust can get stuck in some smaller cavities that are hard to clean without using it. *I would recommend doing maintenance in an ESD-safe location, as it's pretty expensive if you screw anything up. As always, remove the battery/batteries (main battery brick along with the RTC battery if possible) and disconnect power before doing anything else*
    
## Contributions
If you have some scripts that you use on your P51 for getting some features to work, I will be more than happy to include them in this repo. Just send a pull request or an issue with them, and I will add them after reviewing.
