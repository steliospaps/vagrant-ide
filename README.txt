for guest additions:
vagrant plugin install vagrant-vbguest

following the vagrant up
on the host box:

cat ~/.git-remote-dropbox.json | vagrant ssh -c 'cat > ~/.git-remote-dropbox.json'
cat ~/.ssh/id_rsa | vagrant ssh -c 'mkdir -p ~/.ssh;umask 077; cat > ~/.ssh/id_rsa'

on the virtual box:
change the the keyboard System->text entry
disable the autolock System->security
make it have multiple desktops

