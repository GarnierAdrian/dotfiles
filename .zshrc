# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/agarnier/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall



# Begninig of prompt definition
eval "$(starship init zsh)"
# End of prompt definition


# Imported from bash
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Created by `pipx` on 2023-10-28 11:57:33
export PATH="$PATH:/home/agarnier/.local/bin"

export PATH=$PATH:/usr/local/go/bin

# Aliases
alias yt-playlist='yt-dlp --embed-metadata --embed-subs --embed-thumbnail --merge-output-format mkv -o "%(playlist_title)s/%(playlist_index)s-%(playlist_title)s.%(ext)s" '


alias ls='exa'
alias ll='exa -ahl'
alias tree='exa --tree'

alias cat='bat -n'
