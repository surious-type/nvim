local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<leader>w', '<cmd>w<cr>', opts)
map('n', '<leader>q', '<cmd>q<cr>', opts)
map('n', '<leader>e', '<cmd>Oil<cr>', opts)
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)
map('n', '<leader>fs', '<cmd>Telescope lsp_document_symbols<cr>', opts)
map('n', '<leader>fS', '<cmd>Telescope lsp_workspace_symbols<cr>', opts)
map('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', opts)
map('n', '<leader>xa', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', opts)
map('n', '<leader>o', '<cmd>AerialToggle right<cr>', opts)

map('n', 'gd', vim.lsp.buf.definition, opts)
map('n', 'gD', vim.lsp.buf.declaration, opts)
map('n', 'gr', vim.lsp.buf.references, opts)
map('n', 'gi', vim.lsp.buf.implementation, opts)
map('n', 'gt', vim.lsp.buf.type_definition, opts)
map('n', 'K', vim.lsp.buf.hover, opts)
map('n', '<leader>rn', vim.lsp.buf.rename, opts)
map('n', '<leader>ca', vim.lsp.buf.code_action, opts)
map('n', '[d', vim.diagnostic.goto_prev, opts)
map('n', ']d', vim.diagnostic.goto_next, opts)

map("v", "<Tab>", ">gv")
map("v", "<S-Tab>", "<gv")
