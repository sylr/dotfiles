eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

PATH="/usr/local/opt/tcl-tk/bin:$PATH"
PATH="/usr/local/opt/curl/bin:$PATH"
PATH="/opt/homebrew/opt/node@18/bin:$PATH"
PATH="/opt/homebrew/opt/curl/bin:$PATH"
PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
PATH="~/perl5/bin${PATH:+:${PATH}}"
PATH=".venv/bin:$PATH"
PATH="~/.cargo/bin:$PATH"
PATH="~/go/bin:$PATH"
PATH="~/bin:$PATH"

#RPROMPT='%{$fg[yellow]%}%D{%H:%M:%S}%{$reset_color%}'
WORDCHARS='*?_-.[]~&;!#$%^(){}<>|'
PS1='%{%f%b%k%}%{%K{black}%}%{%F{default}%} %(!.%{%F{yellow}%}.)%n@%F{yellow}%m %{%K{blue}%F{black}%}n0%{%F{black}%} %~ %{%k%F{blue}%}n0%{%f%} '

PERL5LIB="/Users/sylvain/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/sylvain/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/sylvain/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/sylvain/perl5"; export PERL_MM_OPT;

export LESS=-FXRK
export GPG_TTY=$(tty)

bindkey -e
bindkey '[C' forward-word
bindkey '[D' backward-word

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

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias rgrep="grep -r"
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias knodes="kubectl get nodes -L topology.kubernetes.io/zone -L node.kubernetes.io/instance-type -L KERNEL-VERSION -L karpenter.sh/capacity-type -L artex.io/dedicated"
alias knodes2="kubectl get nodes -o custom-columns=NAME:.metadata.name,ZONE:.metadata.labels.topology\.kubernetes\.io/zone,TYPE:.metadata.labels.node\.kubernetes\.io/instance-type,CAPACITY:.metadata.labels.karpenter\.sh/capacity-type"
alias knodes3='kubectl get nodes -o custom-columns=NAME:.metadata.name,DEDICATED:".metadata.labels.artex\.io/dedicated",ZONE:".metadata.labels.topology\.kubernetes\.io/zone",TYPE:".metadata.labels.node\.kubernetes\.io/instance-type",CAPACITY:".metadata.labels.karpenter\.sh/capacity-type",KERNEL:".status.nodeInfo.kernelVersion",KUBERNETES:".status.nodeInfo.kubeletVersion"'
alias jqnoerror="jq -R 'fromjson?'"
alias jqsecret="jq '.data|map_values(@base64d)'"

alias cloud-infra-k8s="op read 'op://Team SRE Prod/nkmu7ciluqwlzkig76pfozevqe/private key?ssh-format=openssh'"
alias cloud-infra-k8s.pub="op read 'op://Team SRE Prod/nkmu7ciluqwlzkig76pfozevqe/public key'"
alias cloud-infra-terraform="op read 'op://Team SRE Prod/e3nseosujao62q3drc7pppg2iy/private key?ssh-format=openssh'"
alias cloud-infra-terraform.pub="op read 'op://Team SRE Prod/e3nseosujao62q3drc7pppg2iy/public key'"
alias cloud-infra-terraform-rsa="op read 'op://Team SRE Prod/xe2vppm2gcmkzhsw6dpmjriari/private key'"

# Created by `pipx` on 2024-03-04 15:58:55
export PATH="$PATH:/Users/sylvain/.local/bin"
