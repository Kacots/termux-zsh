# KeyBinding (opsional, untuk mode vim editor)
bindkey -e
# HOME / END
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# Alternatif (fallback umum Termux)
bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line

# Arrow keys
bindkey '^[[A' up-line-or-history
bindkey '^[[B' down-line-or-history
bindkey '^[[C' forward-char
bindkey '^[[D' backward-char

# Delete & Backspace
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char

# Ctrl + Arrow (word navigation, jika didukung)
bindkey '^[OC' forward-word
bindkey '^[OD' backward-word
