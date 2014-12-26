apt-get update
apt-get install --no-install-recommends -y ubuntu-desktop

apt-get install -y --no-install-recommends git
apt-get install -y --no-install-recommends eclipse
apt-get install -y --no-install-recommends maven


if [[ ! -f /etc/lightdm/lightdm.conf ]] 
then
	echo seting up autologin
	cp /vagrant/conf/lightdm.conf /etc/lightdm/lightdm.conf
	chmod 644 /etc/lightdm/lightdm.conf
else 
	echo /etc/lightdm/lightdm.conf exists will not replace it
fi
grep 192.168.0.7 /etc/hosts || echo 192.168.0.7 server-lan >> /etc/hosts

#I dont know how to change the keyboard System->text entry
#I don't know how to disable the autolock System->security
#I don't know how to make it have multiple desktops

reboot

