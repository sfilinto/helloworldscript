# 2 November 2016
I have used wiringPi to control the GPIOs on my raspberry Pi extensivelly in the past. Unfortunatelly i dont have any use for this anymore becuase i am using a python script now.

Documented below are the steps to install wiringPi:  
```
apt-get install build-essential -y  
git clone git://git.drogon.net/wiringPi  
cd wiringPi  
git pull origin  
./build  
gpio -v  
gpio readall  

```

Documented below are the steps to use wiringPi:  
```
gpio -g mode 17 out
/usr/local/bin/gpio -g write 17 1
sleep .4
/usr/local/bin/gpio -g write 17 0
```



xyz

# Pre-requisites & Installation:
```
sudo apt-get install git-core -y  
git clone https://github.com/sfilinto/helloworldscript.git  
cd helloworldscript  
chmod a+x install_script.sh  
sudo ./install_script.sh  
```



# Post Installation:
command to manually start the web server
```
sudo /usr/local/bin/controlws/startws
```
