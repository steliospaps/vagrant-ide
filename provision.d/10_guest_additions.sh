URL=http://download.virtualbox.org/virtualbox/5.1.18/VBoxGuestAdditions_5.1.18.iso
LOCALNAME=/tmp/vboxguesadditions.iso
wget -nv $URL -O $LOCALNAME
sudo apt-get install -y --no-install-recommends gcc make perl linux-headers-virtual
sudo mkdir /media/iso
sudo mount -o loop $LOCALNAME /media/iso
sudo yes | sudo bash /media/iso/VBoxLinuxAdditions.run 
sudo umount /media/iso
