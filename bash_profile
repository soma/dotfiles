#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#[[ -s "$HOME/.bs/profile" ]] && source "$HOME/.bs/profile"

# Fix "Sorry, command-not-found has crashed!" on Ubuntu in Vagrant.
# # http://superuser.com/a/468792
unset command_not_found_handle

source ~/.bash/path.sh
source ~/.bash/env.sh
source ~/.bash/prompt.sh
source ~/.bash/aliases.sh
source ~/.bash/functions.sh

[[ -s "$HOME/.local_aliases" ]] && source "$HOME/.local_aliases"

