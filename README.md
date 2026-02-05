# dotfiles

個人の設定ファイル管理リポジトリ。

## 含まれるファイル

| カテゴリ | ファイル | 説明 |
|---------|---------|------|
| zsh | `.zshrc` | zsh設定（補完、Starship、OpenClaw） |
| git | `.gitconfig` | Git基本設定 |
| git | `.gitmessage` | Conventional Commits テンプレート |
| VSCode | `settings.json` | エディタ設定 |

## セットアップ

### 1. クローン

```bash
git clone git@github.com:openclaw34/dotfiles.git ~/projects/dotfiles
```

### 2. インストール

```bash
cd ~/projects/dotfiles
chmod +x install.sh
./install.sh
```

既存ファイルは `~/.dotfiles_backup/` に自動バックアップされます。

## 依存ツール

- [Starship](https://starship.rs/) - プロンプト
- [OpenClaw](https://openclaw.dev/) - AI補完

```bash
# Starship インストール
brew install starship
```

## 手動設定が必要なもの

- VSCode拡張機能（Material Icon Theme, Prettier, ESLint, emacs-mcx）
- SSH鍵の設定

## ライセンス

MIT
