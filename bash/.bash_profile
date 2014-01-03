# Make sure that homebrew versions of apps (like git) override builtin versions
export PATH=/usr/local/bin:$PATH
. /Users/david/.bashrc.load
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
