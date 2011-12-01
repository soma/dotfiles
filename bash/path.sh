# Homebrew
export PATH=~/.homebrew/bin:~/.homebrew/sbin:$PATH
export MANPATH=~/.homebrew/man:$MANPATH

# Custom scripts
export PATH=~/bin:$PATH


# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# brew install autojump
# https://github.com/joelthelion/autojump
if [ -f `bsbrew --prefix`/etc/autojump ]; then
  . `bsbrew --prefix`/etc/autojump
fi

# To get the GUI-less Vim from MacVim:
# ln -s ~/.homebrew/bin/mvim ~/.homebrew/bin/vim

# node.js
export NODE_PATH=~/.homebrew/lib/node

# Barsoom
[[ -s "$HOME/.bs/profile" ]] && source "$HOME/.bs/profile"
