# ============================================================================
# DEFAULT LOCATION FOR RIZKI'S OWN
# ============================================================================
# ~/.zshrc


# ============================================================================
# REQUIREMENTS
# ============================================================================
# - lsd -> rust, cargo
# - fzf
# - colorls
# - neofetch


# ============================================================================
# GLOBAL VARIABLE
# ============================================================================
source ~/.zplug/init.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# set NeoVim as devault text editor
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export PATH=~/.cargo/bin:$PATH

# Maintain terminal color compatibility with tmux
export TERM="xterm-256color"


# ============================================================================
# PROGRAMMING ENVIRONMENT CONFIGURATION
# ============================================================================

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


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
#alias rm="trash-put"

#alias vi="nvim"
#alias vim="nvim"

# alias cat="bat"
alias less="less -i"

# Timedoctor2
alias timedoctor2="/home/nurrizkiadip/timedoctor2/timedoctor2"
alias start-timedoctor2="export QTWEBENGINE_DISABLE_SANDBOX=1; timedoctor2"

# ============================================================================
# BASIC ZSH CONFIGURATION
# ============================================================================

# cd by typing directory name if it is not a command
setopt auto_cd

# automatically use menu completion
setopt auto_menu

# move cursor to end if word had one match
setopt always_to_end

# remove older duplicate entries from history
setopt hist_ignore_all_dups

# remove superfluous blanks from history items
setopt hist_reduce_blanks

# save history entries as soon as they are entered
setopt inc_append_history

# share history between different instances
setopt share_history

# autocorrect commands
setopt correct_all

# allow comments in interactive shells
setopt interactive_comments

# automatically list choices on ambiguous completion
setopt auto_list

# allow completion from within a word/phrase
setopt complete_in_word

# when using auto-complete, put the first option on the line immediately
setopt menu_complete

# turn on completion for aliases as well
setopt complete_aliases

# cycle through menus horizontally instead of vertically
setopt list_rows_first

# select completions with arrow keys
zstyle ':completion:*' menu select

# group results by category
zstyle ':completion:*' group-name ''

# enable approximate matches for completion
zstyle ':completion:::::' completer _expand _complete _ignored _approximate


# ============================================================================
# CUSTOM STARTUP
# ============================================================================
# neofetch

autoload -U compinit
compinit
autoload -U promptinit; promptinit

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

eval "$(/usr/local/bin/starship init zsh)"

# Command History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
