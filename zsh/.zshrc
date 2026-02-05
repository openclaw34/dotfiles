# zsh補完システムの初期化
autoload -Uz compinit
compinit

# Node.js非推奨警告を抑制
export NODE_NO_WARNINGS=1

# OpenClaw Completion
source <(openclaw completion --shell zsh)

# Starship プロンプト
eval "$(starship init zsh)"

# ===== Aliases =====

# Git
alias g="git"
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias gl="git log --oneline -20"
alias gd="git diff"
alias ga="git add"
alias gco="git checkout"
alias gbr="git branch"

# npm
alias ni="npm install"
alias nr="npm run"
alias nrd="npm run dev"
alias nrb="npm run build"

# ディレクトリ移動
alias ..="cd .."
alias ...="cd ../.."
alias proj="cd ~/projects"

# ユーティリティ
alias ll="ls -la"
alias cls="clear"
