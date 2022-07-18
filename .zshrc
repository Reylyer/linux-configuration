# Created by newuser for 5.9
autoload -U colors && colors
autoload -U compinit && compinit
autoload -U promptinit && promptinit


zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

setopt correctall
setopt autocd

export PS1="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg[blue]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}% > "
if [ -f ~/.paths ]; then
	. ~/.paths
fi


if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

alias refreshenv='. ~/.zshrc'