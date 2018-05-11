apt update
apt install powerline build-essential cmake python-dev python3-dev
#python2 -m pip install fonts-powerline

rm /etc/update-motd.d/10-help-text
cp -f /opt/dotfiles/config/60-extras /etc/update-motd.d
chmod ugo+x /etc/update-motd.d/60-extras

cp -f /opt/dotfiles/config/landscape-sysinfo.wrapper /usr/share/landscape
sudo -H cp -f -r /opt/dotfiles/config/powerline /usr/share
sudo -H cp -f -r /opt/dotfiles/config/vimrc.local /etc/vim

cp -f -r /opt/dotfiles/config/.vim $1
cp -f -r /mnt/storage/video/Other/bundle ~/.vim

# Install Go
cd ~
sudo curl -O https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz
sudo tar -xvf go1.9.1.linux-amd64.tar.gz
sudo mv go /usr/local
export PATH=$PATH:/usr/local/go/bin

# Compile YouCompleteMe
cd $1/.vim/bundle/YouCompleteMe
./install.py --install

cd /opt/dotfiles
cp -f /opt/dotfiles/config/gitpushall /usr/local/bin
sudo update-motd

echo "run chown <user>.<user> ~/.vim -R"
