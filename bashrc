#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ ' 
PS1=' \W \$ '

#btw... i use arch
#if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
#    startx
#fi

export XDG_CURRENT_DESKTOP=sway
export PATH=/home/ian/.local/bin:$PATH

alias bright="brightnessctl"
alias disco="df -h | grep sda; echo -e; lsblk"
alias path="echo $PATH | tr ':' '\n'"
alias day="cal --week && date && uptime -p"
alias cedila="setxkbmap -layout us -variant intl"
alias install="sudo pacman -S"
alias update="sudo pacman -Syu"
alias remove="sudo pacman -Rsnc"
alias hd="hexdump -C"
alias ~="cd ~"
alias ..="cd .."
alias wmrc="vim ~/.config/sway/config"
alias termrc="vim ~/.config/foot/foot.ini"
alias vimrc="vim ~/.vimrc"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias bashrc="vim ~/.bashrc"
alias add="cd ~/work/anuncios/"
alias code="cd ~/.code/"
alias work="cd ~/work/"
alias books="cd ~/books/"
alias downloads="cd ~/downloads/"
alias dotfiles="cd ~/.config/dotfiles/"
alias proc="ps aux | wc -l"
alias v="vim"
alias n="nvim"
alias py="python3"
alias ipy="ipython"
alias sql="sqlite3"
alias ls='ls --color=auto'
alias l="ls -F"
alias ll="ls -lia"
alias la="ls -a"
alias grep='grep --color=auto'
alias mv="mv -v"
alias cp="cp -v"
alias suckless="cd ~/.config/suckless/"
alias config="nvim config.def.h"
alias doit="sudo cp -v config.def.h config.h && make && sudo make clean install"
