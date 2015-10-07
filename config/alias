# reload conf
alias rrb="source $HOME/.bashrc"
alias rrz="source $HOME/.zshrc"
alias rra="source $HOME/.alias"
alias rrt="tmux source-file $HOME/.tmux.conf"

# shorthand
alias n='node'
alias nn='node --harmony'
alias jj='jshint ^node_modules**/*.js *.js'
alias m='make'
alias e='echo -e '
alias gg='gulp'
alias sa='superagent'
alias md='mkdir -p'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output' 
alias rimraf='rm -rf'
alias grep='grep --color=always'
alias grepn='grep --color=always -n'

# net
alias wifi-menu='sudo wifi-menu'
alias netctl='sudo netctl'
alias netctls='sudo netctl switch-to'
alias pingtest='ping -c 2 google.com'


#npm shorthand
alias npmi='npm i'
alias npmis='npm i --save'
alias npmig='npm i -g'
alias npmid='npm i --save-dev'

# usefull navigation and location aliases
alias ..='cd ..'
alias ls='ls --color=auto'
alias ll='ls -l'
alias lal='ls -la'
alias la='ls -a'
alias l='ls -1'
alias tree='tree -C'

# jump to dir
alias gitz="cd $HOME/gitz"
alias bldz="cd $HOME/bldz"

# git shorthand
alias ga='git add -A'
alias gbranch='git branch'
alias gc='git commit -a -m'
alias gclean='git clean -f'
alias gcheck='git checkout'
alias glog='git log --graph --max-count=10'
alias gdiff='git diff'
alias gdtool='git difftool'
alias gmerge='git merge'
alias gmtool='git mergetool'
alias gp='git push origin'
alias gl='git pull origin'
alias gpush='git push'
alias gpull='git pull'
alias gs='git status'
alias gstash='git stash'
alias gspop='git stash pop'
alias greset='git reset'
alias gmv='git mv'
alias ginit='git init'
alias grao='git remote add origin'
alias gclone='git clone'

# arch shortcuts
alias pac="sudo pacman -S --color=always"
alias pacs="sudo pacman -Ss --color=always"
alias pacy="sudo pacman -Syy --color=always"
alias pacman="sudo pacman --color=always"
alias yao="yaourt -S"
alias yaos="yaourt -Ss"
yaon(){
  yaourt -S $@ --noconfirm
}

# man in full color
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
}
