# 30 September 2016
xyz

# Pre-requisites & Installation:
```
sudo apt-get install git-core -y  
git clone https://github.com/sfilinto/helloworldscript.git  
cd helloworldscript  
chmod a+x install_script.sh  
sudo ./install_script.sh  

apt-get install build-essential -y  
git clone git://git.drogon.net/wiringPi  
cd wiringPi  
git pull origin  
./build  
gpio -v  
gpio readall  

gpio -g mode 17 out
/usr/local/bin/gpio -g write 17 1
sleep .4
/usr/local/bin/gpio -g write 17 0

```

# Post Installation:
command to manually start the web server
```
sudo /usr/local/bin/controlws/startws
```

Add the below line to the crontab (crontab -e)  to have the web server auto start at boot
```
@reboot sudo /usr/local/bin/controlws/startws  
```


http://www.learningembedded.com/raspberry-pi/raspberry-pi-buzzer-interfacing/
https://sourceforge.net/p/raspberry-gpio-python/wiki/BasicUsage/

sudo apt-get install gcc python-dev python-pip i2c-tools libi2c-dev python-smbus
sudo pip install RPi.GPIO

export PYTHONPATH=$PATH

import RPi.GPIO as GPIO
