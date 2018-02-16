COLOR='\033[1;36m'
NC='\033[0m'

cprint() {
    TEXT=$1
    printf "\n${COLOR}${TEXT}${NC}\n"
}

cprint "Setting up xfce4 theme..."
xfconf-query -c xsettings -p /Net/ThemeName -t string -s Xfce-dusk
xfconf-query -c xsettings -p /Net/IconThemeName -t string -s elementary-xfce-darker
xfconf-query -c xfce4-panel -p /panels/panel-1/background-alpha -n -t int -s 0
xfconf-query -c xfce4-panel -p /plugins/plugin-1/button-icon -n -t string -s applications-java
xfconf-query -c xfce4-panel -p /plugins/plugin-1/button-title -n -t string -s ''
xfconf-query -c xfce4-panel -p /plugins/plugin-1/show-button-title -n -t bool -s false
xfconf-query -c xfce4-panel -p /plugins/plugin-13/style -n -t int -s 1


cprint "Completed xfce4 theme setup."
