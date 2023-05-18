#!/usr/bin/env sh

# Script to change current wallpaper picking a random image from a directory
# By default, this script uses pywal, but you can easily modify it to use feh,
# swaybg, nitrogen or any other utility you want

# Source environment variables
# This is needed in order to run this script as a cron job
# See my script 'setup_cron_env.sh' if you don't know how to generate this file
# If you don't want to setup a cron job, you can comment these lines

#CRON_ENV=
source ${CRON_ENV:-~/.cache/cron.env}

shopt -s nullglob
#SET_WALLPAPER_DIR=
images=(${SET_WALLPAPER_DIR:-`xdg-user-dir PICTURES`/Wallpapers}/*.{png,jpg,jpeg,gif})
shopt -u nullglob

[[ ${#images[@]} -eq 0 ]] && echo "Aborting: empty directory" && exit

random=$(($RANDOM % ${#images[@]}))

printf "Found ${#images[@]} files:\n\n"
printf '[%q]\n' "${images[@]}"
printf "\nPicked ${images[$random]}\n\n"

#echo ${images[$random]}

pkill -9 swaybg

case $1 in
    '--wal')
        [[ -x /usr/bin/wal ]] || exit
        wal -i ${images[$random]}
        ;;
    # Note that while swaymsg only works on sway, swaybg can be used in a lot
    # of Wayland compositors
    '--swaybg')
        [[ -x /usr/bin/swaybg ]] || exit
        [[ -x /usr/bin/wal ]] && wal -ni ${images[$random]}
        nohup swaybg -i ${images[$random]} -m fill &> /dev/null &
        ;;
    *)
        [[ -x /usr/bin/swaymsg ]] || exit
        [[ -x /usr/bin/wal ]] && wal -ni ${images[$random]}
        swaymsg output "*" bg ${images[$random]} fill
        ;;
esac

if [[ $2 == '--reload-waybar' ]] ; then
    #pkill -9 waybar && waybar
    #ps aux | awk -e '$11 ~ /^waybar*/ {print $2}'
    #ps aux | awk '$11 = /waybar/ {for(i=11; i <= NF; i++) printf "%s ", $i; print ""}'
    pkill -USR2 waybar
fi


# Uncomment this line to check if cron environment variables are set correctly
#env > ~/test_cron.env
