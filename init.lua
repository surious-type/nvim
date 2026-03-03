vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                c = { "clang_format" },
                cpp = { "clang_format" },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
        },
    },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme tokyonight")
        end,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
        require("nvim-autopairs").setup({})
        end,
    },
})
