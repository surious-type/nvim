return {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--completion-style=detailed",
		"--header-insertion=iwyu",
		-- clangd only accepts a named fallback style; WebKit uses four-space indentation.
		"--fallback-style=WebKit",
	},
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
}
