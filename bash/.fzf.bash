# Setup fzf
# ---------
if [[ ! "$PATH" == */home/leddkire/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/leddkire/.fzf/bin"
fi

eval "$(fzf --bash)"
