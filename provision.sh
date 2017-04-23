for i in /vagrant/provision.d/[0-9]*.sh
do
	echo $i
	$i || exit 1
done

#sudo apt-get install -y --no-install-recommends git
#sudo apt-get install -y --no-install-recommends maven
#sudo apt-get install -y --no-install-recommends python3-pip
#sudo pip3 install git-remote-dropbox
#docker
#sudo apt-get install -y --no-install-recommends docker.io
#sudo gpasswd -a vagrant docker
#sudo apt-get install cgroup-bin

