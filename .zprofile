export GOPATH=~/go
export GOBIN=$GOPATH/bin

export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH=$GOBIN:$PATH
export PATH=~/bin:$PATH

export RPROMPT='%{$fg[yellow]%}%D{%H:%M:%S}%{$reset_color%}'

export LESS=-FXRK
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

export PS1='%{%f%b%k%}%{%K{black}%}%{%F{default}%} %(!.%{%F{yellow}%}.)%n@%F{yellow}%m %{%K{blue}%F{black}%}%{%F{black}%} %~ %{%k%F{blue}%}%{%f%} '

#alias helm="~/bin/helm --kubeconfig=/Users/s.rabot/.kube/config-helm"

source ~/.iterm2_shell_integration.zsh

bindkey -e
bindkey '[C' forward-word
bindkey '[D' backward-word

HISTSIZE=1000000000
SAVEHIST=1000000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>|'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias rgrep="grep -r"
alias colordiff="/usr/local/bin/colordiff | /usr/local/opt/git/share/git-core/contrib/diff-highlight/diff-highlight"
# Add .NET Core SDK tools
export PATH="$PATH:/Users/s.rabot/.dotnet/tools"
export PATH="/Users/s.rabot/.gem/ruby/2.6.0/bin:$PATH"
