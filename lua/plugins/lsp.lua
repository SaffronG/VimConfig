return {
	"neovim/nvim-lspconfig",
	event = "BufReadPre",
	config = function()
		require("lspconfig").clangd.setup({})
	end,
}
