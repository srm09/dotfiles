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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/muchhals/utils/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/muchhals/utils/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/muchhals/utils/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/muchhals/utils/google-cloud-sdk/completion.zsh.inc'; fi

# PKS related setup
export PATH=$PATH:$HOME/workspace/pks-home/bin
