#!/bin/sh

#remove proxy.sh if exists
rm /root/proxy.sh

#download settings file
wget https://raw.githubusercontent.com/atrp/dsltd/master/proxy.sh -O /root/proxy.sh

#delete proxy line if exists from cron
crontab -l | grep -v '/bin/bash /root/proxy.sh >/dev/null 2>&1' | crontab -

#copy current cron
crontab -l > proxy.cron

#add proxy to cron file
echo "* * * * * /bin/bash /root/proxy.sh >/dev/null 2>&1" >> proxy.cron

#add proxy to cron
crontab proxy.cron

#remove proxy.cron
rm proxy.cron
