# Custom scripts
export PATH=/usr/local/bin:~/bin:$PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# brew install autojump
# https://github.com/joelthelion/autojump
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

# To get the GUI-less Vim from MacVim:
# ln -s /usr/local/bin/mvim ~/usr/local/bin/vim

# Barsoom
[[ -s "$HOME/.bs/profile" ]] && source "$HOME/.bs/profile"
