set PATH $HOME/.cargo/bin $PATH

alias wx="curl wttr.in"
alias radar="xdg-open 'https://www.aviationweather.gov/radar/site?product=NCR&id=MUX'"
alias reddit="xdg-open https://www.reddit.com"
alias hn="xdg-open https://news.ycombinator.com/"
alias twitch="xdg-open https://www.twitch.tv"
alias cheat='echo -n "Search command: " && read command && curl cheat.sh/$command'

alias reload="exec $SHELL -l"
alias find="fdfind"
alias ls="exa -la"
alias cat="bat"
alias virtualenv="virtualenv -p python3"
alias hibernate="systemctl suspend"
