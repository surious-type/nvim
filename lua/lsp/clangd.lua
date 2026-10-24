return {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--completion-style=detailed",
		"--header-insertion=iwyu",
		"--fallback-style={BasedOnStyle: LLVM, IndentWidth: 4, ContinuationIndentWidth: 4, ColumnLimit: 0, AlignAfterOpenBracket: DontAlign, BreakBeforeBraces: Allman}",
	},
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
}
