source $HOME/terminal/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle kubectl
antigen bundle last-working-dir
antigen bundle web-search
antigen bundle z

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme robbyrussell
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# Tell Antigen that you're done.
antigen apply

export TERM="xterm-256color"
export PATH=$PATH:/usr/local/bin

# Add golang to PATH
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Setup rupa/z
. /usr/local/etc/profile.d/z.sh

# Setup aliases
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
#cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='code'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'
alias cls='clear'
alias die='exit'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/muchhals/utils/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/muchhals/utils/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/muchhals/utils/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/muchhals/utils/google-cloud-sdk/completion.zsh.inc'; fi

# PKS related setup
export PATH=$PATH:$HOME/workspace/pks-home/bin
