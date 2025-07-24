if (( ! $+commands[git] )); then
  return
fi

if ! command -v abbrev-alias &> /dev/null;
then
  # Git Alias
  alias catt="git commit -a -S -m "
  alias gpom="git push origin main"
  alias gpod="git push origin development"
  alias gpos="git push origin stable"
  alias gpomt="git push origin main --tags"
  alias gpoma="git push origin master"
  alias gpol="git push origin live"
  alias gpop="git push origin production"
  alias gpob="git push origin buildout"
  alias gpo="git push origin"
  alias gpot="git push origin --tags"
  alias gs="git status"
  alias gg="ghq get"
else
# Git Alias with abbrev-alias expansion
  abbrev-alias catt="git commit -a -S -m "
  abbrev-alias gpom="git push origin main"
  abbrev-alias gpod="git push origin development"
  abbrev-alias gpos="git push origin stable"
  abbrev-alias gpomt="git push origin main --tags"
  abbrev-alias gpoma="git push origin master"
  abbrev-alias gpol="git push origin live"
  abbrev-alias gpop="git push origin production"
  abbrev-alias gpob="git push origin buildout"
  abbrev-alias gpo="git push origin"
  abbrev-alias gpot="git push origin --tags"
  abbrev-alias gs="git status"
  abbrev-alias gg="ghq get"
fi
