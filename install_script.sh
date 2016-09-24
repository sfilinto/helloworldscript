#!/bin/bash -vx
# this installing script will install the control web server & copy all source files to the requisite folders after creating them.
# chmod a+x install_script.sh
# sudo ./install_script.sh
apt-get update -y
apt-get upgrade -y

#install pip & flask ( web server )
apt-get install python-pip -y
pip install Flask
# Install tmux
apt-get install tmux -y
# Install samba from the store
apt-get install smb-app-osmc -y
# install MC
apt-get install mc -y
#crontab from the store
apt-get install cron-app-osmc -y

# apt-get install git-core -y
# apt-get install build-essential -y
# sept 2016. are the above installs needed ? i have commented them to verify

# pull the installable from github
# git clone git://git.drogon.net/wiringPi

# git clone https://github.com/sfilinto/helloworldscript.git

mkdir /usr/local/bin/controlws
mkdir /usr/local/bin/controlws/scripts

cp startws /usr/local/bin/controlws/
cp ws80.py /usr/local/bin/controlws/
cp -r scripts /usr/local/bin/controlws/

chmod a+x /usr/local/bin/controlws/startws
chmod a+x /usr/local/bin/controlws/ws80.py
chmod a+x /usr/local/bin/controlws/scripts/geyser
chmod a+x /usr/local/bin/controlws/scripts/next
chmod a+x /usr/local/bin/controlws/scripts/play1
chmod a+x /usr/local/bin/controlws/scripts/play2
chmod a+x /usr/local/bin/controlws/scripts/previous
chmod a+x /usr/local/bin/controlws/scripts/shutdownall
chmod a+x /usr/local/bin/controlws/scripts/sw1_1h
chmod a+x /usr/local/bin/controlws/scripts/sw1_reset

# line="@reboot sudo /usr/local/bin/controlws/startws"
# (crontab -u osmc -l; echo "$line" ) | crontab -u osmc -

# command to test the web server
# sudo /usr/local/bin/controlws/startws"
