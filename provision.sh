#see https://blog.versioneye.com/2015/05/05/setting-up-a-dev-environment-with-vagrant/
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y upgrade
apt-get install --no-install-recommends -y ubuntu-desktop
sudo apt-get install -y virtualbox-guest-dkms 
sudo apt-get install -y virtualbox-guest-utils 
sudo apt-get install -y virtualbox-guest-x11

sudo echo "allowed_users=anybody" > /etc/X11/Xwrapper.config

#sudo echo "LANG=en_US.UTF-8" >> /etc/environment
#sudo echo "LANGUAGE=en_US.UTF-8" >> /etc/environment
#sudo echo "LC_ALL=en_US.UTF-8" >> /etc/environment
#sudo echo "LC_CTYPE=en_US.UTF-8" >> /etc/environment

echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get -y install oracle-java8-installer

if [[ ! -d /opt/eclipse ]]
then
	#http://eclipse.mirror.dkm.cz/pub/eclipse/technology/epp/downloads/release/mars/2/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz
	sudo wget -qO /opt/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz http://eclipse.mirror.dkm.cz/pub/eclipse/technology/epp/downloads/release/mars/2/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz
	cd /opt/ && sudo tar -zxf /opt/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz
fi

        sudo wget -qO /opt/lombok.jar https://projectlombok.org/downloads/lombok.jar
        sudo java -jar /opt/lombok.jar  install /opt/eclipse
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

sudo apt-get install -y --no-install-recommends git
sudo apt-get install -y --no-install-recommends maven
sudo apt-get install -y --no-install-recommends python3-pip
sudo pip3 install git-remote-dropbox

sudo reboot 
