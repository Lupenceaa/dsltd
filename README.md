# Zoiper unattended installer

su - (or sudo su -)

wget https://github.com/atrp/dsltd/raw/master/zoiper-install.sh

bash zoiper-install.sh

#Proxy PERMISSIVE install
su -

wget https://github.com/atrp/dsltd/raw/master/proxy-ro-install.sh

bash proxy-ro-install.sh

#Proxy RESTRICT_ALL install
su -

wget https://github.com/atrp/dsltd/raw/master/proxy-install.sh

bash proxy-install.sh
