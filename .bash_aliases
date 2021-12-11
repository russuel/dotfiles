alias gco='git checkout'
alias gl='git pull --prune'
alias gca='git commit -a'
alias gp='git push origin HEAD'
alias www='cd ~/Dropbox/Repos/'
alias s='www;subl .;gco master;gl'
alias update='sudo apt update && sudo apt upgrade'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias ?=duck
alias ??=google

open() {
  setsid nohup xdg-open $1 > /dev/null 2> /dev/null
  }
