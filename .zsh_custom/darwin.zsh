case "$OSTYPE" in
darwin*)
    if type brew &>/dev/null; then
        FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
        autoload -Uz compinit && compinit
    fi
    alias mosh='LC_ALL=en_US.UTF-8 mosh --server="LANG=en_US.UTF-8 mosh-server"'
    ;;
esac
