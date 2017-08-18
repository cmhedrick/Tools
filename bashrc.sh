# yes I use VIM
export EDITOR=vim
# update everything quickly
alias quickUpdate="sudo apt-get update && sudo apt-get dist-upgrade -y"
# turn off IPv6 for crappy VPN
alias ipv6Kill="sudo sh -c 'echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6'"
alias ipv6Restore="sudo sh -c 'echo 0 > /proc/sys/net/ipv6/conf/all/disable_ipv6'"
# working with git
alias s='git status'
alias d='git diff HEAD | colordiff | less -R'
# django development
alias act='source env/bin/activate'
alias rs='python manage.py runserver 0.0.0.0:8000'
# init raspberry pi connection
alias raspi='sudo screen /dev/ttyUSB0 115200'
# dirs with specific bins
PATH=$PATH:/home/$USER/pycharm:/home/$USER/pycharm/bin
PATH=$PATH:/home/$USER/android-studio/platform-tools
PATH=$PATH:/home/$USER/nodejs/bin
