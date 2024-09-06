source ~/.profile

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"
