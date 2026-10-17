#!/bin/bash


# -- vim
#
# // not working as expected
# MYVIMRC="${HOME}/cs/lnxcli/vim/vimrc"
# alias vim="vim -u $MYVIMRC"
#
# // ~/.vimrc
# MYVIMRC="${HOME}/cs/lnxcli/vim/vimrc"
# if filereadable(expand("$MYVIMRC"))
#   source "$MYVIMRC"
# endif
#
# MYVIMRC="${HOME}/cs/lnxcli/vim/vimrc"
MYVIMRC="/opt/lnxcli/vim/vimrc"
export VIMINIT="source $MYVIMRC"


# -- tmux
#
# // caution
# kill all of the tmux seesions before tuning
#
# // ~/.tmux.conf
# MYTMUXRC="${HOME}/cs/lnxcli/tmux/tmux.conf"
# source-file -q "$MYTMUXRC"
#
# MYTMUXRC="${HOME}/cs/lnxcli/tmux/tmux.conf"
# MYTMUXRC18="${HOME}/cs/lnxcli/tmux/tmux18.conf"
MYTMUXRC="/opt/lnxcli/tmux/tmux.conf"
MYTMUXRC18="/opt/lnxcli/tmux/tmux18.conf"
TMUXVER=$(tmux -V 2>/dev/null |awk '{print $2}' 2>/dev/null)
if [ "$TMUXVER" = "1.8" ] || [ "$TMUXVER" = "1.6" ]; then
  alias tmux="tmux -f $MYTMUXRC18"
else
  alias tmux="tmux -f $MYTMUXRC"
fi


# -- bash
#
# // ~/.bashrc
# source ~/cs/lnxcli/env.sh
#
# // ~/.bashrc
# MYBASHRC="${HOME}/cs/lnxcli/bash/bashrc"
# [ -f "$MYBASHRC" ] && source "$MYBASHRC"
#
# MYBASHRC="${HOME}/cs/lnxcli/bash/bashrc"
MYBASHRC="/opt/lnxcli/bash/bashrc"
[ -f "$MYBASHRC" ] && source "$MYBASHRC"


# -- bash (custom)
#
# // ~/.bashrc
# source ~/cs/lnxcli/env.sh
#
# // ~/.bashrc
# MYBASHRC="${HOME}/cs/lnxcli/bash/bashrc"
# [ -f "$MYBASHRC" ] && source "$MYBASHRC"
#
# MYBASHRC="${HOME}/cs/lnxcli/bash/bashrc"
MYBASHRC="/opt/lnxcli/_custom_/bash/bashrc"
[ -f "$MYBASHRC" ] && source "$MYBASHRC"
