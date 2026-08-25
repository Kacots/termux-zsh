# Basic Aliias
alias cp="cp -i"
alias rm="rm -i"
alias l.="ls --color=auto -d .*"
alias l="ls --color=auto"
alias ls="ls --color=auto"
alias la="ls --color=auto -a"
alias rmdl="rm -rf"
alias ctx="cots"
alias src="source"
alias pkg-upgradable="apt list --upgradable"
alias py="python3"
alias pyB="python3 -B" # tidak membuat cache saat mengimport = ($python3 -B)
alias ..="cd ../" # untuk ke path sebelum nya
alias ...="cd ../../"
alias vv="python3 -m venv $PYTHON_VENV_NAME"
alias vrun="source $PYTHON_VENV_NAME/bin/activate"

# git aliases
alias g="git"
alias gi="git init"
alias gi.="git init ."
alias ga="git add"
alias gaA="git add -A"
alias ga.="git add ."
alias gcl="git clone"
alias gb="git branch"
alias gba="git branch -a"
alias gco="git checkout"
alias gst="git status"
alias gcm="git commit -m"
alias gr="git remote"
alias gra="git remote add"
alias gp="git push"
alias gpu="git push -u"


