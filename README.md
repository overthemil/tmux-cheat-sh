# tmux-cheat-sh

https://github.com/overthemil/tmux-cheat-sh/assets/33297928/4e148b8a-d7e8-43f4-adaa-fcc1c1ddbb21


## Installation

### Requirements:
- [fzf](https://github.com/junegunn/fzf/)

### Install via [TPM](https://github.com/tmux-plugins/tpm/)
Add the following to `~/.tmux.conf`

```tmux
set -g @plugin 'overthemil/tmux-cheat-sh'
```

## Usage
The default key to open the popup is `PREFIX` + `/`. This can be modified by adding the following line to `~/.tmux.conf`
```tmux
TMUX_CHEAT_SH_LAUNCH_KEY="i"
```
This changes the key to open the popup to `PREFIX` + `i`

## Adding or Removing language and util options
The options that appear on the popup can be chosen by adding the following lines to `~/.tmux.conf`
```tmux
TMUX_CHEAT_SH_LANGUAGES="cpp|c|golang|lua|rust|typescript|javascript|nodejs|sql|zig|html|css|zsh|bash|python|tmux|gdb|radare2"
TMUX_CHEAT_SH_UTILS="mv|sed|awk|git|ps|ssh|cargo|tr|jq|docker|docker-compose"
```
The variables above represent the defaults that come with this plugin. Feel free to remove or add values that are relevant to you. Remember to separate each value with a `|`.

## Acknowledgements 
- Based on this [ThePrimeagen video](https://www.youtube.com/watch?v=hJzqEAf2U4I)
- The amazing plugin [tmux-fzf](https://github.com/sainnhe/tmux-fzf) was used as a reference
