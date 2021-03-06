COLOR='\033[1;33m'
NC='\033[0m'

cprint() {
    TEXT=$1
    printf "\n${COLOR}${TEXT}${NC}\n"
}

cprint "Configuring xfce4 keymap"
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Primary><Alt>t" -n -t string -s "terminator"

xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Left" -n -t string -s "left_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Right" -n -t string -s "right_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Shift><Alt>Left" -n -t string -s "move_window_left_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Shift><Alt>Right" -n -t string -s "move_window_right_workspace_key"

xfconf-query -c keyboard-layout -p /Default/XkbDisable -n -t bool -s false
xfconf-query -c keyboard-layout -p /Default/XkbLayout -n -t string -s 'ca'
xfconf-query -c keyboard-layout -p /Default/XkbVariant -n -t string -s multix

cprint "Done."
