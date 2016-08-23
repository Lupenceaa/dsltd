#!/bin/sh

#remove proxy-ro.sh if exists
rm /root/proxy-ro.sh

#download settings file
wget https://github.com/atrp/dsltd/raw/master/proxy-ro.sh -O /root/proxy-ro.sh

#delete proxy line if exists from cron
crontab -l | grep -v 'bash /root/proxy-ro.sh' | crontab -

#copy current cron
crontab -l > proxy.cron

#add proxy to cron file
echo "* * * * * /bin/bash /root/proxy-ro.sh >/dev/null 2>&1" >> proxy.cron

#add proxy to cron
crontab proxy.cron

#remove proxy.cron
rm proxy.cron
