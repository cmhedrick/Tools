#!/bin/bash

# line to add to crontab
# 00 */1 * * * $HOME/cron/cronjob-example.sh > $HOME/cron/log.log 2>&1

# create tmp dir to store pid of process for program
mkdir -p "$HOME/tmp"
PIDFILE="$HOME/tmp/program.pid"

# check if program is running
# if running exit script
if [ -e "${PIDFILE}" ] && (ps -u $(whoami) -opid= |
                           grep -P "^\s*$(cat ${PIDFILE})$" &> /dev/null); then
  echo "[-] Currently running"
  exit 99
fi

path/to/program-to-cron.sh > $HOME/path/to/program.log &

echo $! > "${PIDFILE}"
chmod 644 "${PIDFILE}"