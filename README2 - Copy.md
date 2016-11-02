# 20 October 2016
This repository contains the scripts i run on my home automation server. It consists of:  
1. Scripts to Mount & Unmount NAS Storage  
2. Add sfplay to the path  
3. Add a daily alarm  

# Installation:
```
git clone https://github.com/sfilinto/home_automation_script_v3_miscellaneousscripts.git
cd home_automation_script_v3_miscellaneousscripts
chmod a+x install_script
sudo ./install_script
```

# Post Installation:

Add the below line to the crontab (crontab -e)  to have the drives mount at boot
```
@reboot /usr/local/bin/misc/mountdrives.sh
```

Add the below line to the crontab (crontab -e)  to have the daily alarm trigger.
```
# m h dom mon dow command
00 05 * * * /usr/local/bin/misc/alarm1.bash
```

Use the below line to manually start the music player
```
/usr/local/bin/misc/sfplay
```