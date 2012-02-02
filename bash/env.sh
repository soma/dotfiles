export EDITOR='vim'

# For e.g. "bundle open activerecord"
export BUNDLER_EDITOR='vim'

if test -n "$SSH_CONNECTION"; then
  # Over SSH.
  export RAILS_ENV='production'
fi

if [ -f `bsbrew --prefix`/etc/bash_completion ]; then
  . `bsbrew --prefix`/etc/bash_completion
fi
