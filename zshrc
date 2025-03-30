# Basic ZSH Configuration

# History Configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS

# Basic auto/tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files

# Basic prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Useful aliases
alias ls='ls --color=auto'
alias ll='ls -lah'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# Basic key bindings
bindkey -e  # Use emacs key bindings
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Environment variables
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'
export LANG=en_US.UTF-8

# Path modifications
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Basic color support
autoload -U colors && colors

# Directory stack
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# Basic correction
setopt CORRECT
setopt CORRECT_ALL

# Allow comments in interactive shell
setopt INTERACTIVE_COMMENTS

# Load additional custom configurations if they exist
for config_file (~/.zsh/*.zsh(N)); do
  source $config_file
done

# Basic plugins (if you want to add them later)
# This is where you'd source plugins like zsh-autosuggestions or zsh-syntax-highlighting

PATH=$PATH:/opt/homebrew/bin
export FPATH="/Users/sagar/eza/completions/zsh:$FPATH"

# Init starship
eval "$(starship init zsh)"
