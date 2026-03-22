#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${HOME}/.config/nvim"
SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Installing base packages (Ubuntu/Debian)"
sudo apt update
sudo apt install -y neovim git curl unzip gcc make ripgrep fd-find xclip python3-venv luarocks clangd shfmt php-cs-fixer

echo "==> Installing npm-based tools"
if ! command -v npm >/dev/null 2>&1; then
  echo "npm not found. Install Node.js first."
else
  npm install -g prettier @fsouza/prettierd typescript typescript-language-server vscode-langservers-extracted bash-language-server intelephense
fi

echo "==> Installing Python tools"
python3 -m pip install --user --upgrade pip
python3 -m pip install --user pyright ruff

echo "==> Installing stylua"
if command -v cargo >/dev/null 2>&1; then
  cargo install stylua || true
else
  echo "cargo not found, skipping stylua"
fi

echo "==> Copying config to ${TARGET_DIR}"
rm -rf "${TARGET_DIR}"
mkdir -p "$(dirname "${TARGET_DIR}")"
cp -r "${SRC_DIR}" "${TARGET_DIR}"

echo "==> Done. Start with: nvim"
