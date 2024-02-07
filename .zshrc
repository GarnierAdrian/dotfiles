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
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1] /p'
}

function parse_git_status() {
    COLOR_GIT=$'%F{blue}'
    if [[ -n 'git status --porcelain' ]]; then
        COLOR_GIT=$'%F{red}'
    else
        COLOR_GIT=$'%F{green}'
    fi
}

COLOR_DEF=$'%f'
COLOR_USR=$'%F{magenta}'
COLOR_DIR=$'%F{yellow}'
#COLOR_GIT=$'%F{blue}'
parse_git_status
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%2~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DIR}λ ${COLOR_DEF}'
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
