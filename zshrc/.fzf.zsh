# Setup fzf
# ---------
if [[ ! "$PATH" == */home/leddkire/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/leddkire/.fzf/bin"
fi

source <(fzf --zsh)
