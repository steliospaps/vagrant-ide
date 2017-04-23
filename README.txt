for graphical environments the first time I have to run:
vagrant up && vagrant halt && vagrant up

This will provision it properly. after the first time vagrant up is enough.

following the vagrant up
on the host box:

cat ~/.git-remote-dropbox.json | vagrant ssh -c 'cat > ~/.git-remote-dropbox.json'
cat ~/.ssh/id_rsa | vagrant ssh -c 'mkdir -p ~/.ssh;umask 077; cat > ~/.ssh/id_rsa'

on the virtual box:
change the the keyboard System->text entry
disable the autolock System->security
make it have multiple desktops

