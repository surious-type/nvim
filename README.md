# Neovim IDE-like config (lazy.nvim)

Этот конфиг собран как один базовый набор с модульной структурой под языки.
Он рассчитан на Linux и ориентирован на сценарий: подсветка, LSP, автодополнение,
outline справа, поиск по проекту, автоформат при сохранении.

## Что внутри

- `lazy.nvim` — менеджер плагинов
- `tokyonight.nvim` — тема
- `lualine.nvim` — статуслайн
- `telescope.nvim` — поиск файлов, grep, символы
- `oil.nvim` — файловый менеджер без постоянного дерева слева
- `nvim-treesitter` — современная подсветка
- `nvim-lspconfig` + `mason.nvim` — LSP и установка серверов
- `nvim-cmp` + `LuaSnip` — автодополнение и сниппеты
- `conform.nvim` — автоформат при сохранении
- `aerial.nvim` — outline/символы справа
- `trouble.nvim` — список ошибок и диагностик
- `gitsigns.nvim` — git-маркеры в буфере
- `which-key.nvim` — подсказки по хоткеям

## Структура

- `init.lua` — вход
- `lua/config/*` — базовые настройки, hotkeys, autocmd
- `lua/plugins/*` — плагины
- `lua/lsp/*` — настройки по языкам

## Быстрый старт

1. Убедись, что у тебя установлен Neovim, git, gcc/make и шрифт Nerd Font.
2. Скопируй папку в `~/.config/nvim`:

```bash
rm -rf ~/.config/nvim
cp -r nvim-ide-config ~/.config/nvim
```

3. Запусти Neovim:

```bash
nvim
```

При первом запуске `lazy.nvim` подтянет плагины автоматически.

## Что желательно поставить в систему

### База

```bash
sudo apt update
sudo apt install -y neovim git curl unzip gcc make ripgrep fd-find xclip python3-venv luarocks
```

### Форматтеры

```bash
npm install -g prettier @fsouza/prettierd typescript typescript-language-server vscode-langservers-extracted bash-language-server
npm install -g intelephense
pip install pyright ruff
cargo install stylua
sudo apt install -y clangd shfmt php-cs-fixer
```

Если `php-cs-fixer` недоступен из apt, можно поставить через composer или скачать бинарник отдельно.

## Какие LSP включены

- `lua_ls`
- `clangd`
- `pyright`
- `ts_ls`
- `intelephense`
- `html`
- `cssls`
- `jsonls`
- `yamlls`
- `bashls`

`mason.nvim` попытается поставить то, что умеет. Часть инструментов удобнее иметь в системе напрямую.

## Горячие клавиши

- `<leader>e` — открыть `oil.nvim`
- `<leader>ff` — найти файл
- `<leader>fg` — grep по проекту
- `<leader>fb` — буферы
- `<leader>fh` — help tags
- `<leader>fs` — символы файла
- `<leader>fS` — символы workspace
- `<leader>o` — открыть/закрыть outline справа
- `<leader>xx` — все диагностики
- `<leader>xa` — диагностики текущего буфера
- `gd` — перейти к определению
- `gr` — найти использования
- `gi` — implementation
- `gt` — type definition
- `K` — hover
- `<leader>rn` — rename
- `<leader>ca` — code action
- `[d` / `]d` — предыдущая/следующая диагностика

## Под твои языки

### C/C++
Самое важное — `compile_commands.json`. Без него `clangd` часто будет видеть проект хуже.
Для CMake можно генерировать так:

```bash
cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
ln -sf build/compile_commands.json compile_commands.json
```

### Python
Сейчас стоит `pyright` для анализа и `ruff_format` для форматирования.
Если захочешь жёстче линтить, можно добавить `ruff` как линтер отдельно.

### JS/TS/React
Сейчас стоит простой и понятный стек: `ts_ls` + `prettier`.
Если позже захочешь быстрее и единообразнее, можно перевести фронтенд на `biome`.

### PHP/Laravel
Стоит `intelephense` + форматирование `php-cs-fixer`.
Для Laravel это нормальная база. Позже можно добавить Laravel-специфичные плагины.

## Как жить с несколькими конфигами

Если захочешь не ломать текущий конфиг, используй `NVIM_APPNAME`:

```bash
cp -r nvim-ide-config ~/.config/nvim-main
NVIM_APPNAME=nvim-main nvim
```

Тогда твой текущий `~/.config/nvim` останется нетронутым.

## Docker-вариант

Да, так можно. Но для твоего сценария на своём Linux проще и быстрее держать конфиг в git.
Docker имеет смысл, если ты часто поднимаешь окружение на чистых машинах.

## Codex

В этот конфиг Codex-плагин специально не добавлялся, чтобы не тащить лишнюю сложность.
Самый практичный вариант — держать `codex` в соседней tmux-панели рядом с Neovim.
Когда база устоится, можно отдельно подключить AI-плагин.

## Что можно добавить потом

- DAP/отладчик
- `biome` для web
- плагины под Laravel
- отдельный профиль под C/C++/CUDA
- AI-плагин под Codex или другой агент
