# Replacement Alias
alias cat="bat"
alias pcat="bat -pp"
alias ls="exa"
alias df="duf"
alias du="dust"
alias curl="curlie"
alias find="fd"
alias watch="hwatch"

if ! command -v abbrev-alias &> /dev/null;
then
# General Alias
# alias cdc="cd $HOME/code/work/corp"
alias cde="cd $HOME/code/work/engineering"
alias sshpk="cat .ssh/id_rsa.pub"
alias sshpkc="cat .ssh/id_rsa.pub | pbcopy"
alias untar="tar xzvf"
alias tarup="tar czvf"
alias grep="grep --color"
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

#Pre-Commit Alias
alias pcra="pre-commit run --all-files"
alias pcin="pre-commit install"
alias pctr="pre-commit try-repo"
else
# General Alias
# abbrev-alias cdc="cd $HOME/code/work/corp"
abbrev-alias cde="cd $HOME/code/work/engineering"
abbrev-alias sshpk="cat .ssh/id_rsa.pub"
abbrev-alias sshpkc="cat .ssh/id_rsa.pub | pbcopy"
abbrev-alias untar="tar xzvf"
abbrev-alias tarup="tar czvf"
abbrev-alias grep="grep --color"
abbrev-alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

#Pre-Commit Alias
abbrev-alias pcra="pre-commit run --all-files"
abbrev-alias pcin="pre-commit install"
abbrev-alias pctr="pre-commit try-repo"
fi