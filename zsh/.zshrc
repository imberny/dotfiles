# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# enable python's virtual environment
source ~/.venv/bin/activate

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

export SHELL=/bin/zsh

# Wine
export WINEARCH=win64

alias ls='ls --color'
alias ll='ls -l --color'
alias lh='ll -h'

# flatpaks
alias blender='org.blender.Blender'

# To use nvim as Godot's external code editor
alias gdvim='nvim -u ~/.config/nvim/gd_init.lua --listen /tmp/godot.pipe'
alias godot='/home/bernardc/.local/share/Godot-Manager/versions/4.4-stable/Godot_v4.4-stable_linux.x86_64'

