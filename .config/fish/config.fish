set PATH $HOME/.cargo/bin $PATH

alias wx="curl wttr.in"
alias radar="xdg-open 'https://www.aviationweather.gov/radar/site?product=NCR&id=MUX'"
alias reddit="xdg-open https://www.reddit.com"
alias twitch="xdg-open https://www.twitch.tv"
alias police="xdg-open https://www.broadcastify.com/listen/ctid/225"
alias police2="xdg-open https://www.broadcastify.com/listen/feed/19186/web"
alias cheat='echo -n "Search command: " && read command && curl cheat.sh/$command'

alias reload="exec $SHELL -l"
alias find="fdfind"
alias ls="exa -la"
alias cat="bat"
alias virtualenv="virtualenv -p python3"
alias hibernate="systemctl suspend"
