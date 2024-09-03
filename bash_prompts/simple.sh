## Colors
# Foreground
black="\[\e[30m\]"                      # #000000
white="\[\e[38;5;15m\]"                 # #FFFFFF
neon_green="\[\e[38;2;46;204;113m\]"    # #2ECC71
bright_blue="\[\e[38;2;52;152;219m\]"   # #3498DB
orange="\[\e[38;2;232;92;13m\]"         # #E85C0D
dark_purple="\[\e[38;2;27;32;72m\]"
dark_grey="\[\e[38;2;22;23;23m\]"       # #161717
red="\[\e[38;2;212;42;69m\]"            # #D42A45
blue_gray="\[\e[38;2;52;73;94m\]"
light_yellow="\[\e[38;2;249;231;159m\]" # #F9E79F


# Background
orange_bg="\[\e[30;48;5;202m\]"             # #E85C0D
bright_blue_bg="\[\e[48;2;52;152;219m\]"    # #3498DB
orange_bg="\[\e[48;2;232;92;13m\]"          # #E85C0D
dark_purple_bg="\[\e[48;2;27;32;72m\]"
dark_grey_bg="\[\e[48;2;22;23;23m\]"        # #161717


# Glyphs
folder=
folder2=🗁
folder3=
ubuntu=
triangle=$'\uE0B0'
lower_bend=$'\u256d'
upper_bend=$'\u2570'

# Commands
reset="\[\e[0m\]"  # Reset to default colors
bold="\[\e[1m\]"
dim="\[\e[2m\]"
italic="\[\e[3m\]"

# Load Git functions
parse_git_bg() {
  if git status -s &>/dev/null; then
    echo -e "⟩  $(__git_ps1 '%s')"
  fi
}

PS1=""

# Add to right side
# PS1+=$(printf "%*s\r%s" "$(tput cols)" "${light_yellow} $(date +%H:%M)${reset}" '')

# First line
PS1+="${bright_blue}${lower_bend}─${reset}"
PS1+="${bright_blue} ${folder3}  \W${reset}"
PS1+="${red} \$(parse_git_bg) ${reset}"

# New line
PS1+="\n"

# Second line
PS1+="${neon_green}${upper_bend}─❱ ${reset} "

export PS1
