# path

# OPATH remembers the original path set by the system

OPATH=${OPATH:-$PATH}
export OPATH

PATH=$OPATH
if [[ -d $HOME/bin ]]; then
    PATH=$HOME/bin:$PATH
fi
if [[ -d /opt/homebrew/bin ]]; then
    PATH=$PATH:/opt/homebrew/bin:/opt/homebrew/sbin
fi
if [[ -d $HOME/homebrew/bin ]]; then
    PATH=$PATH:$HOME/homebrew/bin:$HOME/homebrew/sbin
fi
if [[ -d /opt/X11/bin ]]; then
    PATH=$PATH:/opt/X11/bin
fi
if [[ -d $HOME/src/cmake/bin ]]; then
    PATH=$PATH:$HOME/src/cmake/bin
fi
if [[ -d $HOME/.pyenv/bin ]]; then
    PATH=$HOME/.pyenv/bin:$PATH
fi
if [[ -d /usr/local/texlive/2015/bin/x86_64-darwin ]]; then
    PATH=$PATH:/usr/local/texlive/2015/bin/x86_64-darwin
fi
if [[ -d $HOME/flutter ]]; then
    PATH=$PATH:$HOME/flutter/bin
fi
if [[ -d /usr/games ]]; then
    PATH=$PATH:/usr/games
fi
if [[ -d $HOME/.cargo/bin ]]; then
    PATH=$PATH:$HOME/.cargo/bin
fi
if [[ -d $HOME/depot_tools ]]; then
    PATH=$PATH:$HOME/depot_tools
fi
if [[ -d $HOME/go/bin ]]; then
    PATH=$PATH:$HOME/go/bin
fi
if [[ -d /usr/local/go/bin ]]; then
    PATH=$PATH:/usr/local/go/bin
fi
if [[ -d $HOME/Library/Python/3.8/bin ]]; then
    PATH=$PATH:$HOME/Library/Python/3.8/bin
fi
if [[ -d $HOME/.juliaup/bin ]]; then
    PATH=$PATH:$HOME/.juliaup/bin
fi
if [[ -d $HOME/x-tools/arm-unknown-linux-gnueabi/bin ]]; then
    PATH=$PATH:$HOME/x-tools/arm-unknown-linux-gnueabi/bin
fi

# Local Variables:
# mode: shell-script
# End:
