if [ -f "$HOME/.profile" ]; then
    . "$HOME/.profile"
fi

export PATH="/home/ip/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PS1="\e[33m\h\e[37m[\e[36m\u\e[37m]\e[39m \W $ "
