#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @sydney-lights-tmux_theme)"

case $SELECTED_THEME in
*)
  # Default to night theme
  declare -A THEME=(
    ["background"]="#0F1634"
    ["foreground"]="#FBFCF0"
    ["black"]="#414868"
    ["blue"]="#2978A0"
    ["cyan"]="#7dcfff"
    ["green"]="#20FC8F"
    ["magenta"]="#DD317C"
    ["red"]="#B80050"
    ["white"]="#FBFCF0"
    ["yellow"]="#F1CA20"

    ["bblack"]="#2A2F41"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#ff9e64"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;
esac

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
