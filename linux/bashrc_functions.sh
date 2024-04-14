#!/bin/bash


# ****************** my startups
~/github/linux/hebtime $(date +%Y) $(date +%m) $(date +%d) 32.7940 34.9896 $(date +%Z) 0

# ****************** my functions
PROMPT_DIRTRIM=2
function s(){
    PROMPT_DIRTRIM=$1
}

function gcr()
{
    trap ERR
    gc $@ -o "${1%.c}.bin"
    if [ $? -eq 0 ]; then
        ./"${1%.c}.bin"
    fi
}

function gdr()
{
    trap ERR
    gd $@ -o "${1%.c}.bin"
    if [ $? -eq 0 ]; then
        ./"${1%.c}.bin"
    fi
}

function gcr9()
{
    trap ERR
    gc9 $@ -o "${1%.c}.bin"
    if [ $? -eq 0 ]; then
        ./"${1%.c}.bin"
    fi
}

function gdr9()
{
    trap ERR
    gd9 $@ -o "${1%.c}.bin"
    if [ $? -eq 0 ]; then
        ./"${1%.c}.bin"
    fi
}


function gpush()
{
    RED='\033[0;31m'
    NC='\033[0m'

    if [ $# -eq 0 ]; then
        echo -e "${RED}No files were entered.${NC}"
        return
    fi

    files=$1
    git add $@
    git checkout
    read -p "Do you want to continue? (y/n): " choice
    if [ $choice == "y" ];then
        read -p "Enter messege for commit: " messege
        git commit -m "$messege"
        git push
    else
        echo -e "\n${RED}changes are retrived${NC}\n"
        git restore --stage .
        git status --short
    fi

}

function fixtime()
{
    timedatectl set-local-rtc 1 --adjust-system-clock
    sudo apt remove ntp
    sudo apt install --reinstall systemd-timesyncd
    sudo dpkg-reconfigure tzdata
}

function loop()
{
    while true
    do 
        "$@"
    done 
}