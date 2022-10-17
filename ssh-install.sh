function get-update() {
printf "${blue}[*] updating... ${reset}\n"
apt update 
apt upgrade -y
printf "${greem}[*] Successfully updated... ${reset}\n"
}

function get-openssh() {
clear
printf "${blue}[*] installing open ssh... ${reset}\n"
pkg install openssh -y
printf "${green}[*] Successfully installed... ${reset}\n"
}
function get-nmap() {
clear
printf "${blue}[*] installing nmap... ${reset}\n"
pkg install nmap -y
printf "${green}[*] nmap successfully installed... ${reset}\n"
}

function get-sshd() {
sshd
nmap
}

function banner() {
clear
printf "${red}############################################\n"  
printf "${red}##          _       _              _      ##\n"
printf "${red}##  ___ ___| |__   | |_ ___   ___ | |___  ##\n"
printf "${red}## / __/ __| '_ \  | __/ _ \ / _ \| / __| ##\n"
printf "${red}## \__ \__ \ | | | | || (_) | (_) | \__ \ ##\n"
printf "${red}## |___/___/_| |_|  \__\___/ \___/|_|___/ ##\n"
printf "${red}##                                        ##\n"
printf "${red}####### developer telegram: @Eobrd #########\n"
}
function helper() {
printf "${green}[*] ssh tools Successfully installed...${reset}\n"
printf "${blue}[*]The server was started successfully..${reset}\n"
printf "${green}########################################${reset}\n"

printf "${green}[+]To get port type: sshd && nmap localhost${reset}\n"
printf "${green}[+]Your port is: tcp open oa-system${reset}\n\n"
printf "${green}########################################${reset}\n"
printf "${green}[+]To get username type: whoami ${reset}\n"
printf "${green}[+] set username password type: passwd (username) ${reset}\n\n"
printf "${green}########################################${reset}\n"
printf "${green}[+]To get your ip type: ifconfig ${reset}\n\n"
printf "${blue}######### GET CONNECT TO SSH #############${reset}\n"
printf "${blue}[1] set username password type: passwd (username) ${reset}\n\n"
printf "${blue}[2]To activate the server each time type: sshd\n"
printf "${blue}[3]To connect to ssh with a computer,first open windows \n  powershell and type as follows:${reset}\n"
printf "${blue}[4] example:ssh  (user name)@(your ip) -p (your port)  ${reset}\n"
printf "${blue}[5]Now enter your password! ${reset}\n\n"

}
##              Main            ##

# Add some colours
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
light_cyan='\033[1;96m'
reset='\033[0m'
yes=`y`
EXTRA_ARGS=""
if [[ ! -z $1 ]]; then
    EXTRA_ARGS=$1
    if [[ $EXTRA_ARGS != "--insecure" ]]; then
        EXTRA_ARGS=""
    fi
fi
get-update
 get-openssh
 get-nmap
get-sshd
banner
helper
