return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

	config = function()
		-- Neo-tree setup
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = false, -- hide filtered items by default
					hide_dotfiles = true,
					hide_gitignored = true,
				},
			},
		})
		-- Keymap: Toggle hidden files
		local function ToggleHiddenFiles()
			local manager = require("neo-tree.sources.manager")
			local fs_commands = require("neo-tree.sources.filesystem.commands")

			local state = manager.get_state("filesystem")
			if not state then
				print("Neo-tree not open")
				return
			end

			state.filtered_items_visible = not state.filtered_items_visible
			fs_commands.toggle_hidden(state)
		end

		vim.keymap.set(
			"n",
			"<leader>h",
			ToggleHiddenFiles,
			{ noremap = true, silent = true, desc = "Toggle hidden files" }
		)

		-- Optional: auto-open Neo-tree with hidden files visible on startup
		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				vim.cmd("Neotree show filesystem left")
				local state = require("neo-tree.sources.manager").get_state("filesystem")
				if state then
					state.filtered_items_visible = true
					require("neo-tree.sources.filesystem.commands").toggle_hidden(state)
				end
			end,
		})
	end,
}
