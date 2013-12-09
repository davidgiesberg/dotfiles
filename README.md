dotfiles
========

These are my dotfiles. There are many like them, but these are mine.

Managed with GNU `stow` (install with either `brew install stow` or `apt-get install stow`)

Auto-install

```
curl https://raw.github.com/davidgiesberg/dotfiles/master/remote-install.sh | bash
```

Install and bootstrap as follows:

```
git clone https://github.com/davidgiesberg/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./bootstrap
stow bash
stow git
stow useful_scripts
stow tmux
```
