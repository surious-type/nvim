return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "markdown" },
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			latex = {
				enabled = true,
				inline = true,
				block = true,
				converter = { "utftex", "latex2text" },
			},
		},
		keys = {
			{
				"<leader>mp",
				"<cmd>RenderMarkdown preview<cr>",
				desc = "Markdown preview",
			},
			{
				"<leader>mr",
				"<cmd>RenderMarkdown toggle<cr>",
				desc = "Toggle Markdown rendering",
			},
		},
	},
}
