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
# ln -s /usr/local/bin/mvim ~/usr/local/bin/vim

# Barsoom
[[ -s "$HOME/.bs/profile" ]] && source "$HOME/.bs/profile"
