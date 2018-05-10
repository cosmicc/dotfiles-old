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

cd $1/.vim/bundle/YouCompleteMe
./install.py --all

cd /opt/dotfiles

sudo update-motd

