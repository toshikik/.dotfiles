if [[ -f /opt/homebrew/opt/chruby/share/chruby/chruby.sh ]]; then
    source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
    source /opt/homebrew/opt/chruby/share/chruby/auto.sh
    chruby ruby-3.3.0
fi
