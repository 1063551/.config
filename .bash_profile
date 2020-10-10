
#!/usr/local/bin bash

export PS1="\[\033[38;5;7m\][\@]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;69m\]\h\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;3m\]\W\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;9m\]|\[$(tput sgr0)\] \[$(tput sgr0)\]"
export CLICOLOR=1

clear

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias python=python3
alias vim=nvim

alias gb="go build"
alias gr="go run"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH="$HOME/.cargo/bin:$PATH"
alias em='emacs'

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
