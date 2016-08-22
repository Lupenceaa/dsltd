# Zoiper unattended installer

su - (or sudo su -)

wget https://github.com/atrp/dsltd/raw/master/zoiper-install.sh

bash zoiper-install.sh

#Proxy install
su -

wget https://github.com/atrp/dsltd/raw/master/proxy-ro.sh

crontab -e -u user1

* * * * * /root/proxy-ro.sh >/dev/null 2>&1

