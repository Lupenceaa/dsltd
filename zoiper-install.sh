#!/bin/sh

cd ~
wget https://raw.githubusercontent.com/atrp/dsltd/master/Zoiper_3.3_Linux_Free_64Bit.run
chmod +x Zoiper_3.3_Linux_Free_64Bit.run
# ./Zoiper_3.3_Linux_Free_64Bit.run --mode unattended --unattendedmodeui minimal
./Zoiper_3.3_Linux_Free_64Bit.run --mode unattended
rm ~/Zoiper_3.3_Linux_Free_64Bit.run

wget  -O /home/user1/.Zoiper/Config.xml
chown user1:user1 /home/user1/.Zoiper/Config.xml

cp /usr/share/applications/zoiper.desktop /home/user1/Desktop/Zoiper.desktop
chown user1:user1 /home/user1/Desktop/Zoiper.desktop
chmod +x /home/user1/Desktop/Zoiper.desktop
