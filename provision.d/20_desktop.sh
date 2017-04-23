sudo apt-get install -y --no-install-recommends ubuntu-desktop

sudo mkdir -p /etc/lightdm/lightdm.conf.d
sudo bash -c "echo '[SeatDefaults]
autologin-user=ubuntu
' > /etc/lightdm/lightdm.conf.d/vagrant_autologin.conf"
