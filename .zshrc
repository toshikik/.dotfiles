# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# history
HISTSIZE=1000000
SAVEHIST=1000000
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# initialize comp
autoload -Uz compinit
compinit

# source antidote
if [ -f ~/.antidote/antidote.zsh ]; then
  source ~/.antidote/antidote.zsh

  # initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
  antidote load
else
  echo "antidote.zsh not found"
  # run: git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
fi

# xterm-ghostty might not be available.
# export TERM=xterm-256color

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

for f in ~/.zsh_custom/*.zsh; do
  source $f
done
