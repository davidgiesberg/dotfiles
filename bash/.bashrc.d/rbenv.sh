if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
