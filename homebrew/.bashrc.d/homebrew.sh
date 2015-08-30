# Make sure that homebrew versions of apps (like git) override builtin versions
export PATH=/usr/local/bin:$PATH

# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#   set -x
#   . $(brew --prefix)/etc/bash_completion
#   set +x
# fi
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  . $(brew --prefix)/share/bash-completion/bash_completion
fi
