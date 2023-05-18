#!/usr/bin/env bash

# Script to setup environment variables before cron jobs

CRON_ENV=${CRON_ENV:-$HOME/.cache/cron.env}
echo "Output file: $CRON_ENV"

echo "# Autogenerated file" > $CRON_ENV
echo "export CRON_ENV=$CRON_ENV" >> $CRON_ENV
echo "export PATH=$PATH" >> $CRON_ENV
echo "export DISPLAY=$DISPLAY" >> $CRON_ENV
echo "export WAYLAND_DISPLAY=$WAYLAND_DISPLAY" >> $CRON_ENV
echo "export DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS" >> $CRON_ENV
echo "export XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR" >> $CRON_ENV
echo "export SHELL=$SHELL" >> $CRON_ENV
echo "export DESKTOP_SESSION=$DESKTOP_SESSION" >> $CRON_ENV
echo "export SWAYSOCK=$SWAYSOCK" >> $CRON_ENV

cat $CRON_ENV
