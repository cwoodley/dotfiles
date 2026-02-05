# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=50000
# End of lines configured by zsh-newuser-install

export EDITOR=nvim
export VISUAL=nvim

alias reload='source "$HOME"/.zshrc'

if [ -d "/home/linuxbrew" ] ; then
    source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

[ -s '"$HOME"/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' ] && source "$HOME"/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -s '/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh' ] &&
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"

if [[ -r ~/aliases.sh ]]; then
    source ~/aliases.sh
fi

if [[ -d $HOME/.local/bin ]] ; then
  path+=("$HOME/.local/bin")
fi

if [[ -d $HOME/go ]] ; then
  export GOPATH="$HOME/go"
  path+=("$GOPATH/bin")
fi


if [[ -d /home/cale/.local/bin ]]; then
    export PATH="$PATH:/home/cale/.local/bin"
fi

if [ -d "$HOME/go" ] ; then
    export GOPATH="$HOME/go"
    export PATH="$GOPATH/bin:$PATH"
fi

eval "$(atuin init zsh --disable-up-arrow)"

# bun completions
if [[ -s "/home/cale/.bun/_bun" ]]; then
  source "/home/cale/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
fi

if [[ -x /usr/bin/mise ]]; then
    eval "$(/usr/bin/mise activate zsh)"
fi

export PATH

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
