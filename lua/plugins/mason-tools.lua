return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "mason.nvim" },
		opts = {
			ensure_installed = {

				-- lua
				-- "stylua",

				-- web
				"prettier",

				-- python
				"ruff",

				-- shell
				"shfmt",

				-- php
				"php-cs-fixer",
			},
			auto_update = false,
			run_on_start = true,
			start_delay = 3000,
		},
	},
}
