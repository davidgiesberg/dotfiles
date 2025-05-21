alias ls="ls -G"
alias src="cd $HOME/src; ls ."
alias ccat="source-highlight --out-format=esc -o STDOUT -i"
alias gitclean='git branch --merged main | grep -v "\* main" | xargs -n 1 git branch -d'
