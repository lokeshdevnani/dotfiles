ADWYZE_REPO_HOME=/Users/lokeshdevnani/clarisights/adwyze
export LDAP_USERNAME=lokesh

# other development scripts, $ADWYZE_REPO_HOME is exported in .bashrc
alias _k8s='ruby "$ADWYZE_REPO_HOME/scripts/dev/k8s.rb"'
alias k8s='_k8s -e prod'
alias review='bash "$ADWYZE_REPO_HOME/scripts/dev/rubycritic.sh"'
# get all staged spec files and run them
alias spec='rspec "$(git diff --name-only --cached | grep -i '_spec.rb')" -fd'
alias gssh='bash "$ADWYZE_REPO_HOME/../devops/scripts/gssh.sh"'

alias k='k8s -e prod'
WD=$ADWYZE_REPO_HOME
alias wd="cd $WD"

source "${ADWYZE_REPO_HOME}/scripts/dev/kubectl_aliases.sh"

function sentry { open "https://errors.clarisights.com/clarisights/adwyzecore-prod-1d/?query=$1"; }
function sentry-custom { open "https://errors.clarisights.com/clarisights/backend-custom-pods/?query=$1"; }
