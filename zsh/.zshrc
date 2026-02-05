# zsh補完システムの初期化
autoload -Uz compinit
compinit

# Node.js非推奨警告を抑制
export NODE_NO_WARNINGS=1

# OpenClaw Completion
source <(openclaw completion --shell zsh)

# Starship プロンプト
eval "$(starship init zsh)"
