# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/berny/.zshrc'

fpath=(/usr/share/zsh/site-functions $fpath)

zstyle ':completion:*:*:git:*' script \
    /usr/share/git/completion/git-completion.bash

autoload -Uz compinit
compinit
# End of lines added by compinstall
if [[ "$TERM" != "linux" ]]; then
	eval "$(starship init zsh)"
fi

# For some reason, blendkit addon keeps creating this useless dir
rm blenderkit_data -rf

# Colored ls full output
alias lsf='ls -lha --color=always'
