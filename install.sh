#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🔧 dotfiles をインストールします..."

# バックアップディレクトリ
BACKUP_DIR="$HOME/.dotfiles_backup/$(date +%Y%m%d_%H%M%S)"

backup_and_link() {
    local src="$1"
    local dest="$2"

    if [ -e "$dest" ] || [ -L "$dest" ]; then
        mkdir -p "$BACKUP_DIR"
        echo "  📦 バックアップ: $dest → $BACKUP_DIR/"
        mv "$dest" "$BACKUP_DIR/"
    fi

    mkdir -p "$(dirname "$dest")"
    ln -s "$src" "$dest"
    echo "  ✅ リンク作成: $dest → $src"
}

# zsh
backup_and_link "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"

# git
backup_and_link "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
backup_and_link "$DOTFILES_DIR/git/.gitmessage" "$HOME/.gitmessage"

# VSCode
VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"
if [ -d "$HOME/Library/Application Support/Code" ]; then
    backup_and_link "$DOTFILES_DIR/vscode/settings.json" "$VSCODE_USER_DIR/settings.json"
else
    echo "  ⚠️  VSCode が見つかりません。スキップします。"
fi

echo ""
echo "🎉 完了！"
if [ -d "$BACKUP_DIR" ]; then
    echo "   バックアップ: $BACKUP_DIR"
fi
