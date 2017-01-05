# Make sure that homebrew versions of apps (like git) override builtin versions
export PATH=/usr/local/bin:$PATH

# Make sure that you have the bash-completion homebrew package installed and updated (brew install bash-completion)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
#  . $(brew --prefix)/share/bash-completion/bash_completion
#fi
