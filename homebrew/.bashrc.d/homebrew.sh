# Make sure that homebrew versions of apps (like git) override builtin versions
export PATH=/usr/local/bin:$PATH

# Compatible with homebrew bash-completion@2
export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d"
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"
