#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ ' 
PS1=' \W \$ '

#me
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
    startx
fi

export PATH=/home/ian/.local/bin:$PATH

alias main="nvim main.cpp"
alias readme="nvim readme"
alias index="nvim index.html"
alias spy="cd ~/.code/spy/ && source ./bin/activate"
alias ds="cd ~/.code/ds/"
alias db="cd ~/.code/db/"
alias code="cd ~/.code/"
alias work="cd ~/work/"
alias gamma="xgamma"
alias light="xbacklight"
alias disco="df -h | grep sda; echo -e; lsblk"
alias path="echo $PATH | tr ':' '\n'"
alias day="cal --week && date"
alias cedila="setxkbmap -layout us -variant intl"
alias fet="clear; neofetch"
alias install="sudo pacman -S"
alias update="sudo pacman -Syu"
alias remove="sudo pacman -Rsnc"
alias hd="hexdump -C"
alias ~="cd ~"
alias ..="cd .."
alias vimrc="nvim ~/.config/nvim/init.vim"
alias bashrc="nvim ~/.bashrc"
alias books="cd ~/books/"
alias downloads="cd ~/downloads/"
alias dotfiles="cd ~/.dotfiles/"
alias suckless="cd ~/.suckless"
alias config="nvim config.def.h"
alias proc="ps aux | wc -l"
alias v="nvim"
alias py="python3"
alias ipy="ipython"
alias sql="sqlite3"
alias ls='ls --color=auto'
alias l="ls -F"
alias ll="ls -lia"
alias la="ls -a"
alias grep='grep --color=auto'
alias doit="sudo cp -v config.def.h config.h && make && sudo make clean install"
