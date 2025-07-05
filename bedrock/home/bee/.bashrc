#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nano='nvim'
alias sudo='doas '
alias doas='doas '
PS1='[\u@\h \W]\$ '

export PATH=$PATH:/home/bee/Documents/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux/gcc-arm-none-eabi-10.3-2021.10/bin

if [ -e "/sys/class/power_supply/BAT0/capacity" ]; then
 echo "WARNING: This system contains system-managed Python. Gross."
 echo "Battery:"
 echo `cat /sys/class/power_supply/BAT0/capacity`
fi

if [ -e "/usr/bin/pipx" ]; then
 # Created by `pipx` on 2025-01-29 04:53:30
 export PATH="$PATH:/home/bee/.local/bin:~/.nix-profile/bin"
 export PATH="$PATH:/opt/010editor" #ADDED BY 010 EDITOR
 export LD_LIBRARY_PATH=/home/bee/.local/lib/arch-mojo:$LD_LIBRARY_PATH
fi

alias neofetch=fastfetch
alias fastfetch='fastfetch --logo xenia_old'
export _JAVA_AWT_WM_NONREPARENTING=1 
alias root='sudo -EH --preserve-env=XDG_RUNTIME_DIR,WAYLAND_DISPLAY'

export PATH="$PATH:$HOME/tools/graudit"

export PATH="$PATH:$HOME/tools/xbps-pkg"

#systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
#exec 'dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway'
