# Setup fzf
# ---------
if [[ ! "$PATH" == */home/asrar/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/asrar/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/asrar/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/asrar/.fzf/shell/key-bindings.zsh"
