# Autocompletion for the FluxCD CLI (flux).
if (( ! $+commands[flux] )); then
  return
fi

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `flux`. Otherwise, compinit will have already done that.
if [[ ! -f "$ZSH_CACHE_DIR/completions/_flux" ]]; then
  typeset -g -A _comps
  autoload -Uz _flux
  _comps[flux]=_flux
fi

flux completion zsh >| "$ZSH_CACHE_DIR/completions/_flux" &|

# flux Alias
if ! command -v abbrev-alias &> /dev/null;
then
alias fgsa="flux get sources all"
alias fgsa="flux get sources git"
alias fgsa="flux get sources helm"
alias fgsa="flux get sources chart"
alias fgkz="flux get kustomizations"
alias fghr="flux get helmreleases"
alias fdkz="flux describe kustomization "
alias fdhr="flux describe helmrelease "
alias frkz="flux reconcile kustomization"
alias frhr="flux reconcile helmrelease"
else
abbrev-alias fgsa="flux get sources all"
abbrev-alias fgsa="flux get sources git"
abbrev-alias fgsa="flux get sources helm"
abbrev-alias fgsa="flux get sources chart"
abbrev-alias fgkz="flux get kustomizations"
abbrev-alias fghr="flux get helmreleases"
abbrev-alias fdkz="flux describe kustomization "
abbrev-alias fdhr="flux describe helmrelease "
abbrev-alias frkz="flux reconcile kustomization"
abbrev-alias frhr="flux reconcile helmrelease"
fi