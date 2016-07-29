#!/bin/sh

# add to rc.local the following lines
# wget https://raw.githubusercontent.com/atrp/dsltd/master/create-tiger-icon.sh /root/create-tiger-icon.sh
# /bin/bash /root/create-tiger-icon.sh

touch /home/user1/Desktop/tiger.desktop
chown user1:user1 /home/user1/Desktop/tiger.desktop
chmod 755 /home/user1/Desktop/tiger.desktop

cat > /home/user1/Desktop/tiger.desktop <<- EOM
[Desktop Entry]
Comment=
Terminal=false
Name=Tiger RDP
Exec=rdesktop -a 8 -u bosticka tiger.dandsltd.com
Type=Application
Icon=gnome-panel-launcher
EOM
