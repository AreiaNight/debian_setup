#!/bin/bash

# ==========================  ===============================
# Arch setup full configuration script
# Author: AreiaTheNight
# Date: ?????? 
#
# This script updates the system and allows you to install
# or configure an AUR helper (paru or yay). Designed for
# Arch Linux systems and create a functional setup for old
# hardware or related. 
#
# WARNING!
# - Use this script at your own risk.
# - Make sure to understand the commands before running them.
# - This script requires administrator privileges.
# - The only source of this scripts is on http://github.com/AreaTeNight
#
# LICENSE:
# This script is released under the Creative Commons 
# Universal Public Domain Dedication (CC0 1.0). You are 
# free to copy, modify, redistribute, and use this code 
# without restrictions. More info:
# https://creativecommons.org/publicdomain/zero/1.0/
# Just add me in the credis 
# ==========================  ===============================

# Colores
green="\e[0;32m\033[1m"
nocolor="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yell="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
turquoise="\e[0;36m\033[1m"
gray="\e[0;37m\033[1m"

cat << 'EOF'
%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%                                             %%%%%%%%%%%%%%%%%%%%%%%%
#####%%%%%%%%%%%%%%%%%%%%%%%%%%%                *         %                %%%%%%%%%%%%%%%%%########
###%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 %      %                  %%%%%%%%%%%%%############
####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%               #%     *%                  %%%%######%%%%%%#########
####%%###%%%%%%#####%#%%%%%%%%%%*           #%%%%  *### #%%%              %%%%%###########+#%%%#####
#################%%%%%%######%%#%           +#%%%%%%%%%%##%%%%            %%%%%###+###########%%%###
#############%%%%#############%#%*          +**#%%%%%%%%%%%%%%           %%%#############*#######%%%
###########%%####################%             **#%+++*%%%#             #%%####%##*##*##############
########%%#######################%%            ***%%++%#%*%#           ##%#####%##**##-#############
######%%##################**#****#%#    +*    :%%=+++++*%%%#*         ##%##*#####****=*#############
####%#########***-*##**#**********#%* =+*##** %%%#-+%**#%%%   %%    *###*****+=*+***=+***###########
##%##############**********#***+++###*=  +*%%%%%%#+-=*#% * #%%%%  +###***********#**#*+*#####       
%####          *##********+***+++++*##*   %--%=+*=++#%%% ###%%%%%###***********+*#**-**####         
##               ***+******#+++++++++***  ####%#*%%%%%%%%%%%%%#%%%%++++*****+*+***=+**####          
                    +=+**-***+=+++++===+*#*##..:+##=##%%%%%%%##%%%%+++++++++++:=+*==*###   % %%%%   
                    +*+**+**++++=-::-:::**=+*#%*%+****#%%%%%%%%%###%%#*+++++=-=#=:.####         %#  
                    ++++=***+++++===-:.**%##%%##%%%%%%%%%%%%%%%%%%%%%%%+++++=#==#=####              
                    +=-+=-#*+++++++-=+*+%%%%%%%%%%%%%%%%%%%%%%%%%%%========#*+###*###               
                    **-*:++*+++++++=   =#%##%%%%%%%%%#######=+%%%##%=*##*%%%%%**##%#                
                       *###**######=:###%##+#%%%%%%%##%####--=*#%%%#%###%%%#***#*%%                 
                           #%%%%###%%%%%#*+=#%%%%%%%#%####:::-= #%%%%%%%%       #%%                 
                                #%%%%%##   +#%%%%%%%%%%%%        %%%%%%          %                  
                                    * ##    *%%%%%%%%%%#%        #               %                  
                                      +    ++#%%%%%%%%#%%% %%%                                      
                                       %% *##%%%%%%%%%%#%#%%%%                                      
  *###***###***+                       #%##%%#%%%%%%%%%%%%%%%%                                      
###*#     ######*####                  ###%%%%%%%%%%%%%%%%%%%%#                                     
                 ####**##            * ####%%%%%%%%%%%%%%%%%%%%                                     
                     ###****         +*#%%%%%%%%%%%%%%%%%%%%%%%%                                    
               #%%%%%   ***+**     --##%#%%%%%%%%%%%%%%%%%%%%%%%%                                   



      .o.                           o8o            ooooooooooooo oooo                  ooooo      ooo  o8o             oooo            .  
     .888.                          `"'            8'   888   `8 `888                  `888b.     `8'  `"'             `888          .o8  
    .8"888.     oooo d8b  .ooooo.  oooo   .oooo.        888       888 .oo.    .ooooo.   8 `88b.    8  oooo   .oooooooo  888 .oo.   .o888oo
   .8' `888.    `888""8P d88' `88b `888  `P  )88b       888       888P"Y88b  d88' `88b  8   `88b.  8  `888  888' `88b   888P"Y88b    888  
  .88ooo8888.    888     888ooo888  888   .oP"888       888       888   888  888ooo888  8     `88b.8   888  888   888   888   888    888  
 .8'     `888.   888     888    .o  888  d8(  888       888       888   888  888    .o  8       `888   888  `88bod8P'   888   888    888 .
o88o     o8888o d888b    `Y8bod8P' o888o `Y888""8o     o888o     o888o o888o `Y8bod8P' o8o        `8  o888o `8oooooo.  o888o o888o   "888"
                                                                                                            d"     YD                     
                                                                                                            "Y88888P'                     
EOF


#Ctrl C función para salir
function ctrl_c(){
    echo -e "\n[!] Bye!\n"
    tput cnorm
    exit 1
}

# Capturar Ctrl+C
trap ctrl_c SIGINT

echo -e "${red}[!] Updating your system${nocolor}"
sudo apt update && upgrade -y

echo -e "${blue}Choose your window manager systme${nocolor}"
echo -e "\n\t${green}a) Awesome${nocolor}"
echo -e "\n\t${gray}b) Bspwm${nocolor}"
read replay

case replay in
    a ) awsm
        ;;
    b) bspwmInstall
        ;;
    * ) echo -e "${red}/nNon a valid option... Exiting!${nocolor}" exit 1
        ;;
esac


function awsm(){

    cat << "EOF"

     _______  _     _  _______  __   __ 
    |   _   || | _ | ||       ||  |_|  |
    |  |_|  || || || ||  _____||       |
    |       ||       || |_____ |       |
    |       ||       ||_____  ||       |
    |   _   ||   _   | _____| || ||_|| |
    |__| |__||__| |__||_______||_|   |_|
EOF

    sudo apt install awesome

}

function bspwmInstall(){


cat << "EOF"


██████╗ ███████╗██████╗ ██╗    ██╗███╗   ███╗
██╔══██╗██╔════╝██╔══██╗██║    ██║████╗ ████║
██████╔╝███████╗██████╔╝██║ █╗ ██║██╔████╔██║
██╔══██╗╚════██║██╔═══╝ ██║███╗██║██║╚██╔╝██║
██████╔╝███████║██║     ╚███╔███╔╝██║ ╚═╝ ██║
╚═════╝ ╚══════╝╚═╝      ╚══╝╚══╝ ╚═╝     ╚═╝
                                             

EOF

    sudo apt install bspwm sxhkd
    npath=$(pwd)
    cd ~/.config
    mkidr bspwm
    mkdir sxhkd
    cd $npath

}