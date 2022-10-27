#!/usr/bin/env bash
set -euo pipefail
PREFS_DIR="~/dotfiles/iTerm2"

# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$PREFS_DIR"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
