# General Alias
# alias cdc="cd $HOME/code/work/corp"
alias cde="cd $HOME/code/work/engineering"
alias sshpk="cat .ssh/id_rsa.pub"
alias sshpkc="cat .ssh/id_rsa.pub | pbcopy"
alias untar="tar xzvf"
alias tarup="tar czvf"
alias grep="grep --color"
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

# Replacement Alias
alias cat="bat"
alias pcat="bat -pp"
alias ls="exa"
alias df="duf"
alias du="dust"
alias curl="curlie"
alias find="fd"
alias watch="hwatch"

#Pre-Commit Alias
alias pcra="pre-commit run --all-files"
alias pcin="pre-commit install"
alias pctr="pre-commit try-repo"