alias sn="sudo nano"
alias nv="neovim"
alias v="neovim"

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# docker
alias d='docker'
function dsr-fn {
        docker stop $1;docker rm $1
}
alias dsr=dsr-fn
alias dcu="docker compose up -d"
