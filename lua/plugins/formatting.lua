return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" }, -- to make sure we lazy-load whenever we open or create a new buffer
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				lua = { "stylua" },
				python = { "black", "isort" },
				go = { "gofumt" },
				rust = { "rustfmt", lsp_format = "fallback" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				csharp = { "csharpier" },
				haskell = { "fourmolu" },
			},
			format_on_save = {
				lsp_fallback = true, -- use lsp if no formatter available
				async = false,
				timeout_ms = 1000,
			},
		})

		--vim.api.nvim_create_autocmd("BufWritePre", {
		--pattern = "*",
		--callback = function(args)
		--require("conform").format({ bufnr = args.buf })
		--end,
		--})
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

		-- FORMATTER KEYMAPS --
		vim.keymap.set({ "n", "v" }, "<leader>mp", function() -- format by using <leader>mp
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
