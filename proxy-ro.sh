#!/bin/sh
su user1 -c "gsettings set org.gnome.system.proxy mode 'manual'"
su user1 -c "gsettings set org.gnome.system.proxy.http host '192.168.88.1'"
su user1 -c "gsettings set org.gnome.system.proxy.http port '8082'"
su user1 -c "gsettings set org.gnome.system.proxy.https host '192.168.88.1'"
su user1 -c "gsettings set org.gnome.system.proxy.https port '8082'"
