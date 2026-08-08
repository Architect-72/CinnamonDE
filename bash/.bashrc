#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ftch='fastfetch'
alias upg='sudo pacman -Syyu'
alias upd='sudo pacman -Syu'
alias get='sudo pacman -S'
alias del='sudo pacman -Rns'
alias fnd='sudo pacman -Ss'
alias off='sudo systemctl poweroff'
alias rbt='sudo systemctl reboot'


PS1='\u \W >$ '
