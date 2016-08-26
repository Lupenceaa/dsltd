!/bin/sh
su user1 -c "dbus-launch --exit-with-session gsettings set org.gnome.system.proxy mode 'manual'"
su user1 -c "dbus-launch --exit-with-session gsettings set org.gnome.system.proxy.http host '192.168.88.1'"
su user1 -c "dbus-launch --exit-with-session gsettings set org.gnome.system.proxy.http port '8081'"
su user1 -c "dbus-launch --exit-with-session gsettings set org.gnome.system.proxy.https host '192.168.88.1'"
su user1 -c "dbus-launch --exit-with-session gsettings set org.gnome.system.proxy.https port '8081'"
