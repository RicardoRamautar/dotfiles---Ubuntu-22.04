# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# # Colors
# blue="\[\e[30;48;5;153m\]"              # Foreground: #000000, Background: #D1E9F6
# yellow="\[\e[30;48;5;230m\]"            # Foreground: #000000, Background: #F6EACB
# pink="\[\e[30;48;5;224m\]"              # Foreground: #000000, Background: #F1D3CE
# dark_blue_bg="\[\e[30;48;5;23m\]"       # Foreground: #000000, Background: #1E3A5F
# darkgrey="\[\e[38;5;59m\]"              # Foreground: #343131
# dark_gray_bg="\[\e[38;5;15;48;5;59m\]"  # Foreground: #FFFFFF, Background: #343131
# white_fg="\[\e[38;5;15m\]"              # Foreground: #FFFFFF
# orange_bg="\[\e[30;48;5;202m\]"         # Foreground: #000000, Background: #E85C0D
# blue_fg="\[\e[38;5;153m\]"              # Foreground: #D1E9F6
# blue_bg="\[\e[48;5;153m\]"              # Foreground: #D1E9F6
# neon_green="\[\e[38;2;46;204;113m\]"    # Foreground: #2ECC71
# bright_blue="\[\e[38;2;52;152;219m\]"   # Foreground: #3498DB
# bright_blue_bg="\[\e[48;2;52;152;219m\]" # Foreground: #000000, Background: #3498DB

# reset="\[\e[0m\]"                       # Reset to default colors

# bold="\[\e[1m\]"

# folder=
# ubuntu=
# triangle=$'\uE0B0'

# lower_bend=$'\u256d'
# upper_bend=$'\u2570'




# ubuntu_logo="${darkgrey}${reset}${dark_gray_bg}${white_fg}${ubuntu} ${reset}"

# If not running interactively, don't do anything
case $- in 
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi



# if [ "$color_prompt" = yes ]; then
#     # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#     # PS1="\[\e[38;2;253;255;194m\]──➤ \[\e[0m\]\[\e[1m\]\W\[\e[0m\] "
#     # PS1="\[\e[38;2;46;204;113m\]  ❱ \[\e[0m\]\[\e[38;2;52;152;219m\]\[\e[1m\]❲\W❳\[\e[0m\] "
#     PS1="${debian_chroot:+($debian_chroot)}\[\e[38;2;46;204;113m\]  ❱ \[\e[0m\]\[\e[38;2;52;152;219m\]\[\e[1m\]❲\W❳\[\e[0m\] "
# else
#     # PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
# # PS1="\[\e[38;2;253;255;194m\]──➤ \[\e[0m\]\[\e[1m\]\W\[\e[0m\] "
#     PS1="\[\e[38;2;46;204;113m\]  ❱ \[\e[0m\]\[\e[38;2;52;152;219m\]\[\e[1m\]❲\W❳\[\e[0m\] "
# fi

# PS1="${debian_chroot:+($debian_chroot)}\[\e[38;2;46;204;113m\]  ❱ \[\e[0m\]\[\e[38;2;52;152;219m\]\[\e[1m\]❲\W❳\[\e[0m\] "

# PS1="${ubuntu_logo}${blue}${darkgrey}${reset}${blue} \w${reset}${reset}${blue_fg}${reset} \n\n${neon_green}  ❱ ${reset}${bright_glue}${bold}❲\W❳${reset} "

# PS1="${lower_bend}─${ubuntu_logo}${blue}${darkgrey}${reset}${blue} \w${reset}${reset}${blue_fg}${triangle}${reset}\n${upper_bend}──❱ ➤ ${neon_green}  ❱ ${reset}${bright_glue}${bold}❲\W❳${reset} "

# Colors
# blue="\[\e[30;48;5;153m\]"              # Foreground: #000000, Background: #D1E9F6
# yellow="\[\e[30;48;5;230m\]"            # Foreground: #000000, Background: #F6EACB
# pink="\[\e[30;48;5;224m\]"              # Foreground: #000000, Background: #F1D3CE
# dark_blue_bg="\[\e[30;48;5;23m\]"       # Foreground: #000000, Background: #1E3A5F
# darkgrey="\[\e[38;5;59m\]"              # Foreground: #343131
# dark_gray_bg="\[\e[38;5;15;48;5;59m\]"  # Foreground: #FFFFFF, Background: #343131
# white_fg="\[\e[38;5;15m\]"              # Foreground: #FFFFFF
# orange_bg="\[\e[30;48;5;202m\]"         # Foreground: #000000, Background: #E85C0D
# blue_fg="\[\e[38;5;153m\]"              # Foreground: #D1E9F6
# blue_bg="\[\e[48;5;153m\]"              # Foreground: #D1E9F6
# neon_green="\[\e[38;2;46;204;113m\]"    # Foreground: #2ECC71
# bright_blue="\[\e[38;2;52;152;219m\]"   # Foreground: #3498DB
# bright_blue_bg="\[\e[48;2;52;152;219m\]" # Foreground: #000000, Background: #3498DB

# light_blue="\[\e[30;48;5;153m\]"              # Foreground: #D1E9F6
# black="\[\e[30m\]"                            # Foreground: #000000

# orange_bg="\[\e[48;2;232;92;13m\]"              # Background: #E85C0D
# orange="\[\e[38;2;232;92;13m\]"              # Foreground: #E85C0D
# dark_purple="\[\e[38;2;27;32;72m\]"
# dark_purple_bg="\[\e[48;2;27;32;72m\]"
# orange_fg="\[\e[38;2;250;143;71m\]"  # Foreground: #FA8F47
# orange_bg="\[\e[48;2;250;143;71m\]"  # Foreground: #FA8F47



# reset="\[\e[0m\]"                       # Reset to default colors

# bold="\[\e[1m\]"
# dim="\[\e[2m\]"
# italic="\[\e[3m\]"


# folder=
# ubuntu=
# triangle=$'\uE0B0'

# lower_bend=$'\u256d'
# upper_bend=$'\u2570'


# ubuntu_logo="${bright_blue}${reset}${bright_blue_bg}${black}${ubuntu} ${reset}"

# PS1=""

# # First line
# PS1+="${bright_blue}${lower_bend}─${reset}"
# PS1+="${ubuntu_logo}"                        
# PS1+="${bright_blue}${orange_bg}${reset}"           
# PS1+="${orange_bg}${white_fg}${italic} \w${reset}"                   
# PS1+="${orange_fg}${reset}"        

# # New line
# PS1+="\n"

# # Second line
# PS1+="${neon_green}${upper_bend}─❱ ${reset}"                      
# PS1+="${bright_blue}❲\W❳${reset} "   

# function parse_git_branch {
#     if git rev-parse --is-inside-work-tree &>/dev/null; then
#         git_branch=$(git symbolic-ref --short HEAD 2>/dev/null)
#         git_repo=$(basename `git rev-parse --show-toplevel` 2>/dev/null)
#         if [ -n "$git_branch" ]; then
#             echo " [$git_repo:$git_branch]"
#         fi
#     fi
# }

source ~/bash_prompt.sh


unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Set path to polybar config
# polybar bar1 --config=~/.config/polybar/config.ini

# Source ROS2 humble
source /opt/ros/humble/setup.bash

# Alias for sioyek
alias sioyek='~/sioyek/Sioyek-x86_64.AppImage'

# Use xterm-256color
export TERM="xterm-256color"

# Use newer version of fzf that was git cloned
export PATH="$HOME/.fzf/bin:$PATH"

# Set up fzf key bindings and fuzzy completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Set "fuck" as alias for correcting typos
eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)

# Add nvim to path
export PATH="/usr/local/bin:$PATH"

#bind 'set show-all-if-ambiguous on'
#bind 'TAB:menu-complete'

# Source ble.sh
source ~/Downloads/ble.sh/out/ble.sh

# Set UTF-8 settings to US
export LC_NUMERIC=en_US.UTF-8
