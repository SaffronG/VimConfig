-- REMAPS
local keymap = vim.keymap -- ✅ use the keymap *table*, not the function
local opts = { noremap = true, silent = true }

local harpoon = require("harpoon")

-- NEOTREE
keymap.set("n", "fs", ":Neotree<CR>", opts) -- Open Neo-tree
keymap.set("n", "<leader>n", ":Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle Neo-tree" })

-- Harpoon setup
harpoon:setup()

keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end, opts)

keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, opts)

keymap.set("n", "<leader>q", function()
	harpoon:list():remove()
end, opts)

keymap.set("n", "<C-1>", function()
	harpoon:list():select(1)
end, opts)

keymap.set("n", "<C-2>", function()
	harpoon:list():select(2)
end, opts)

keymap.set("n", "<C-3>", function()
	harpoon:list():select(3)
end, opts)

keymap.set("n", "<C-4>", function()
	harpoon:list():select(4)
end, opts)

keymap.set("n", "<C-Left>", function()
	harpoon:list():prev()
end, opts)

keymap.set("n", "<C-Right>", function()
	harpoon:list():next()
end, opts)
