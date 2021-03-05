set PATH $HOME/.cargo/bin $PATH

alias wx="curl wttr.in"
alias ttv="xdg-open https://www.twitch.tv"
alias reddit="xdg-open https://www.reddit.com"
alias hn="xdg-open https://news.ycombinator.com"
alias chatty="java -jar ~/Downloads/Chatty/Chatty.jar"
alias radar="xdg-open 'https://radar.weather.gov/'"

alias cheat='echo -n "Search command: " && read command && curl cheat.sh/$command'

alias cat="bat"
alias find="fdfind"
alias reload="exec $SHELL -l"
alias virtualenv="virtualenv -p python3"

alias l="exa"
alias la="exa --all"
alias lt="exa --tree"
alias lg="exa --long --git"
alias ll="exa --all --long --grid"

alias hibernate="systemctl suspend"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/steve/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/home/steve/Downloads/google-cloud-sdk/path.fish.inc'; end
