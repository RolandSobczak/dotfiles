if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## OTHER ###

# Postman
export PATH="$PATH:$HOME/Postman"

### CLI TOOLS ###

# nvim
alias v=nvim

# cd
alias cd=exa

# cat
alias cat=batcat

# kube
alias k=kubectl

# eza
alias ls="eza --color=always --git --no-filesize --icons=always --no-time --no-user"
alias ll="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --all"
alias l="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --all"
alias tree="eza --tree --no-time --no-user --git"

# zoxide
eval "$(zoxide init zsh)"
alias cd=z

# # the fuck
# # eval $(thefuck --alias)
# # eval $(thefuck --alias fk)

### VARS ###
export XDG_CONFIG_HOME=~/.config/
export SHELL=/usr/bin/zsh
export EDITOR=nvim
export KUBE_EDITOR=nvim

### PYTHON ###

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Created by `pipx` on 2024-04-28 14:29:34
export PATH="$PATH:/home/rolandsobczak/.local/bin"


### CPP ###

# vcpkg
export VCPKG_ROOT="/home/rolandsobczak/vcpkg"
export PATH="$VCPKG_ROOT:$PATH"

### JS ####

# bun completions
[ -s "/home/rolandsobczak/.bun/_bun" ] && source "/home/rolandsobczak/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# export NVM_DIR="$HOME/.config//nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### GO ###
export PATH=$PATH:/usr/local/go/bin


