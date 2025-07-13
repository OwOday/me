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

install_dir=/home/bee/tools/silicon/skywater_pdk
caravel_dir_name=caravel_user_project

export PDK_ROOT=$install_dir/pdk
export OPENLANE_ROOT=$install_dir/openlane
export PDK=sky130A

export MGMT_AREA_ROOT=$install_dir/$caravel_dir_name/mgmt_core_wrapper
export DESIGNS=$install_dir/$caravel_dir_name
export TARGET_PATH=$DESIGNS
export CARAVEL_ROOT=$DESIGNS/caravel 
export MCW_ROOT=$DESIGNS/mgmt_core_wrapper 
export CORE_VERILOG_PATH=$MCW_ROOT/verilog

export PATH=$PATH:$install_dir/oss-cad-suite/bin


export GCC_PATH=$install_dir/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14/bin/
export PATH=$PATH:$GCC_PATH
export GCC_PREFIX=riscv64-unknown-elf 

export PATH=$PATH:$install_dir/openlane_summary/

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

export PATH="$PATH:$HOME/tools/magic"
export XDG_RUNTIME_DIR="/tmp/XDG"

#systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
#exec 'dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway'
