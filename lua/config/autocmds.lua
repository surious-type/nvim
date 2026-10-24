local autocmd = vim.api.nvim_create_autocmd

autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client then
      client.server_capabilities.semanticTokensProvider = nil
    end
  end,
})

autocmd('FileType', {
  pattern = { 'c', 'cpp', 'cuda' },
  group = vim.api.nvim_create_augroup('cpp-indent', { clear = true }),
  callback = function()
    -- Align a closing ')' with the start of its matching opening line.
    vim.opt_local.cinoptions:append('m1')
  end,
})
