#!/bin/sh
gsettings set org.gnome.system.proxy mode 'manual'
gsettings set org.gnome.system.proxy.http host '192.168.88.1'
gsettings set org.gnome.system.proxy.http port '8082'
gsettings set org.gnome.system.proxy.https host '192.168.88.1'
gsettings set org.gnome.system.proxy.https port '8082
