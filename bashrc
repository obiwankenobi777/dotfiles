#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ ' 
PS1=' \W \$ '

#ian
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
    startx
fi

export PATH=/home/ian/.local/bin:$PATH

setxkbmap -layout us -variant intl

alias inc="xbacklight -inc 1"
alias dec="xbacklight -dec 1"
alias install="sudo pacman -S"
alias update="sudo pacman -Syu"
alias remove="sudo pacman -Rsnc"
alias hd="hexdump -C"
alias ~="cd ~"
alias ..="cd .."
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias work="cd ~/.work/"
alias books="cd ~/books/"
alias downloads="cd ~/downloads/"
alias dotfiles="cd ~/.dotfiles/"
alias suckless="cd ~/.suckless"
alias dwm="cd ~/.suckless/dwm/"
alias st="cd ~/.suckless/st/"
alias dmenu="cd ~/.suckless/dmenu/"
alias slstatus="cd ~/.suckless/slstatus/"
alias config="vim config.def.h"
alias so="source"
alias proc="ps aux | wc -l"
alias v="vim"
alias py="python3"
alias ipy="ipython"
alias sql="sqlite3"
alias ls='ls --color=auto'
alias l="ls -F"
alias ll="ls -lia"
alias la="ls -a"
alias grep='grep --color=auto'
alias doit="sudo cp -v config.def.h config.h && make && sudo make clean install"
