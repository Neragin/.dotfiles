afetch
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

#!/bin/sh
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
unsetopt BEEP
#
autoload -Uz compinit
# autoload -U compinit
zstyle ":completion:*" menu select
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.
#
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
#
autoload -Uz colors && colors	# Load colors
#
source "$ZDOTDIR/zsh-exports"
source "$ZDOTDIR/zsh-aliases"
source "$ZDOTDIR/zsh-functions"
source "$ZDOTDIR/zsh-prompt"
source "$ZDOTDIR/zsh-vim-mode"
#
#
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
zsh_add_plugin "zdharma-continuum/fast-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-autosuggestions"
# zsh_add_plugin "marlonrichert/zsh-autocomplete"
# source "$ZDOTDIR/plugins/zsh-you-should-use/you-should-use.plugin.zsh"
. /usr/share/LS_COLORS/dircolors.sh
#
[ -f $ZDOTDIR/completion/_git ] && fpath+="$ZDOTDIR/completion/"
compinit

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
#C
