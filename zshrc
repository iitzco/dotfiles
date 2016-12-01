#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

set -o vi

alias tigs='tig status'

alias wvim='vim -c "Prose"'

alias got='ps aux | grep'

cdAndTmux() {
        cd $1
        tmux
}
alias cmux=cdAndTmux

anybar() {
    if [ $1 = "start" ]; then
        ANYBAR_PORT=$((${2:-0}+1738)) open -na AnyBar
    else
      echo -n $1 | nc -4u -w0 localhost $((${2:-0}+1738))
    fi
}

alias noti=anybar
