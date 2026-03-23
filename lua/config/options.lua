local opt = vim.opt
local g = vim.g

g.mapleader = ' '
g.maplocalleader = ' '

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = 'yes'
opt.termguicolors = true
opt.wrap = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.updatetime = 250
opt.timeoutlen = 300
opt.completeopt = { 'menu', 'menuone', 'noselect' }
opt.undofile = true
opt.confirm = true
opt.pumheight = 12
opt.showmode = false
opt.laststatus = 3
opt.cmdheight = 0
opt.shortmess:append('c')

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smartindent = true

opt.fillchars = {
  eob = ' ',
  fold = ' ',
  foldopen = '',
  foldclose = '',
  foldsep = ' ',
  diff = '╱',
}
