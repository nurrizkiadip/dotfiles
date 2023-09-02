# ============================================================================
# DEFAULT LOCATION FOR RIZKI'S OWN
# ============================================================================
# ~/.bashrc


# ============================================================================
# PROGRAMMING ENVIRONMENT CONFIGURATION
# ============================================================================

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


eval "$(/usr/local/bin/starship init bash)"
export PATH=~/.local/bin:"$PATH"
export PATH=~/.cargo/bin:$PATH
[ -f ~/.fzf.bash ] && source ~/.fzf.bash


# ============================================================================
# ALIAS CONFIGURATION
# ============================================================================
# alias ls="exa"
alias ls="lsd"
alias ll="ls -l"
alias la="ls -al"
alias l="ls"

alias cp="cp -i"
alias mv="mv -i"
alias rm="trash-put"

# alias vi="nvim"
# alias vim="nvim"

# alias cat="bat"
alias less="less -i"
. "$HOME/.cargo/env"

# STARTUP COMMAND
nvm use 18

