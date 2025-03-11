#!/bin/bash

# Options
lock=" Lock"
suspend="󰤄 Suspend"
logout="󰍃 Log out"
reboot=" Reboot"
shutdown=" Shutdown"

runFuzzel() {
	echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown\n" | fuzzel --dmenu -l 5
}

chosen="$(runFuzzel)"
case ${chosen} in
	$lock)
		loginctl lock-session
	;;
	$suspend)
		systemctl suspend
	;;
	$logout)
		loginctl terminate-user $USER
	;;
	$reboot)
		systemctl reboot
	;;
	$shutdown)
		systemctl poweroff
	;;
esac
