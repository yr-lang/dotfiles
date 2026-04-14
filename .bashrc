if grep -q MINGW64 /proc/version; then cd $HOME; fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

kssh () { ssh -o ServerAliveInterval=60 $1; }
gf () { grep -rnw . -e "$1"; }

export PS1="\[\033[32m\]\u \[\033[34m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

alias ls='ls --color=auto --group-directories-first'
alias lsa='ls -a'
alias lsal='lsa -l'
alias diff='diff --color=auto'
alias grep='grep -n --color=auto'
alias cl="clear; cd"
alias c="clear"

alias yr="node /home/yrkit/.yr/yr-cli/main.js"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
