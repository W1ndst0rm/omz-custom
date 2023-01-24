if (( ! $+commands[terraform] )); then
  return
fi

if ! command -v abbrev-alias &> /dev/null;
then
# Terraform Alias
alias tf="terraform"
alias tfi="terraform import"
alias tff="terraform fmt -recursive"
alias tfup="terraform init --upgrade"
alias tfpo="terraform plan -out=plan.tfplan"
alias tfpov="terraform plan -out=plan.tfplan -var-file=variables.tfvars"
alias tfpnl="terraform plan -lock=false"
alias tfap="terraform apply plan.tfplan"
alias tfaro="terraform apply -refresh-only"

# Terragrunt Alias
alias tg="terragrunt"
alias tgf="terragrunt hclfmt -recursive"

else
# Terraform Alias
abbrev-alias tf="terraform"
abbrev-alias tfi="terraform import"
abbrev-alias tff="terraform fmt -recursive"
abbrev-alias tfup="terraform init --upgrade"
abbrev-alias tfpo="terraform plan -out=plan.tfplan"
abbrev-alias tfpov="terraform plan -out=plan.tfplan -var-file=variables.tfvars"
abbrev-alias tfpnl="terraform plan -lock=false"
abbrev-alias tfap="terraform apply plan.tfplan"
abbrev-alias tfaro="terraform apply -refresh-only"

# Terragrunt Alias
abbrev-alias tg="terragrunt"
abbrev-alias tgf="terragrunt hclfmt -recursive"
fi
