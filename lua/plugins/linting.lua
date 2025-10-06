return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			svelte = { "eslint_d" },
			python = { "mypy", "pylint" },
			css = { "stylelint" },
			html = { "htmlhint" },
			json = { "jsonlint" },
			markdown = { "markdownlint" },
			graphql = { "eslint_d" },
			lua = { "luacheck" },
			go = { "snyk" },
			rust = { "snyk" },
			c = { "cpplint", "trivy" },
			cpp = { "cpplint", "trivy" },
			csharp = { "trivy", "semgrep" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>l", function() -- <leader>l => Trigger linting for current file
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
