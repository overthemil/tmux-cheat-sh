#!/usr/bin/env bash

[[ -z "$TMUX_CHEAT_SH_LANGUAGES" ]] && TMUX_CHEAT_SH_LANGUAGES="cpp|c|golang|lua|rust|typescript|javascript|nodejs|sql|zig|html|css|zsh|bash|python|tmux|gdb|radare2"
[[ -z "$TMUX_CHEAT_SH_UTILS" ]] && TMUX_CHEAT_SH_UTILS="mv|sed|awk|git|ps|ssh|cargo|tr|jq|docker|docker-compose"

items="$(printf "%s|%s" "$TMUX_CHEAT_SH_LANGUAGES" "$TMUX_CHEAT_SH_UTILS" | tr '|' '\n')"

selected="$(printf "[Cancel]\n%s" "$items" | fzf)"

[[ "$selected" == "[Cancel]" || -z "$selected" ]] && exit

read -p "$(printf "Enter query for (%s): " "$selected")" input
query="$(echo $input | tr ' ' '+')"

if printf "%s" "$TMUX_CHEAT_SH_LANGUAGES" | grep -qs "$selected"; then
  curl -s cheat.sh/$selected/$query | less -R
else
  curl -s cheat.sh/$selected~$query | less -R
fi

