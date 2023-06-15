#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

[ -z "$TMUX_CHEAT_SH_LAUNCH_KEY" ] && TMUX_CHEAT_SH_LAUNCH_KEY="/"
tmux bind-key "$TMUX_CHEAT_SH_LAUNCH_KEY" display-popup -E "$CURRENT_DIR/main.sh"
