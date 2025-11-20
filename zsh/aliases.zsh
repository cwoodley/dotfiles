alias sn="sudo nano"
alias nv="nvim"
alias v="nvim"

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias g="git status"
function gitCommitAllWithMsg-fn {
  git commit -am $1
}
alias gcm=gitCommitAllWithMsg-fn

# docker
alias d='docker'
function dsr-fn {
        docker stop $1;docker rm $1
}
alias dsr=dsr-fn
alias dcu="docker compose up -d"

function mkcd-fn {
  mkdir -p $1; z $1
}
alias mkcd=mkcd-fn
