if (( ! $+commands[kubectl] )); then
  return
fi

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `kubectl`. Otherwise, compinit will have already done that.
if [[ ! -f "$ZSH_CACHE_DIR/completions/_kubectl" ]]; then
  typeset -g -A _comps
  autoload -Uz _kubectl
  _comps[kubectl]=_kubectl
fi

kubectl completion zsh 2> /dev/null >| "$ZSH_CACHE_DIR/completions/_kubectl" &|

alias kc=kubectl
alias kcd='kubectl describe'
alias kcg='kubectl get'
alias kcgp='kubectl get pods'
alias kcpga='kubectl get pods -A'

# Only run if the user actually has kubectl installed
if (( ${+_comps[kubectl]} )); then
  function kcj() { kubectl "$@" -o json | jq; }
  function kcjx() { kubectl "$@" -o json | fx; }
  function kcy() { kubectl "$@" -o yaml | yq; }
  function kcyh() { kubectl "$@" -o yaml | yh; }

  compdef kj=kubectl
  compdef kjx=kubectl
  compdef ky=kubectl
fi

alias docker=nerdctl # Rancher Desktop
alias kx=kubectx
alias kn=kubens