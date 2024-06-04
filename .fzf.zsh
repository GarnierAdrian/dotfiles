# Setup fzf
# ---------
if [[ ! "$PATH" == */home/agarnier/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/agarnier/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/agarnier/.fzf/shell/completion.zsh"

# Key bindings
# ------------
# source "/home/agarnier/.fzf/shell/key-bindings.zsh"
