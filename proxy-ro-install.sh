#!/bin/sh

#download settings file
wget https://github.com/atrp/dsltd/raw/master/proxy-ro.sh -O /root/proxy-ro.sh

#delete proxy line if exists from cron
crontab -l | grep -v 'bash /root/proxy-ro.sh' | crontab -

#copy current cron
crontab -l > proxy.cron

#add proxy to cron file
echo "* * * * * bash /root/proxy-ro.sh" >> proxy.cron

#add proxy to cron
crontab proxy.cron

#remove proxy.cron
rm proxy.cron
