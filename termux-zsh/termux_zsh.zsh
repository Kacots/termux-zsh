#custom Zsh style (Kacots)

# Path dan global variable
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=2000
export PYTHON_VENV_NAME="venv"

setopt appendhistory sharehistory hist_ignore_dups prompt_subst

# Auto complete (dari zsh)
autoload -Uz compinit add-zsh-hook
compinit -d ~/.zcompdump

# Styling
# Completion style
zstyle ':completion:*' menu select

# KeyBinding (opsional, untuk mode vim editor)
source "$HOME/.termux-zsh/bindkey.zsh"

# Alias
source "$HOME/.termux-zsh/cots.aliases.zsh"


source "$HOME/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

source "$HOME/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"


source "$HOME/.termux-zsh/plugins/git.zsh"

add-zsh-hook precmd _git_async_update
add-zsh-hook chpwd _git_async_update


PROMPT='%F{blue}%~%f $(_git_async_read) ➜ '
