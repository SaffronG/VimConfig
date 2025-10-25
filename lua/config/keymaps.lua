-- REMAPS
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
local harpoon = require("harpoon")

-- NEOTREE
keymap("n", "fs", ":Neotree<CR>", opts) -- OPEN NEOTree
keymap.set("n", "<leader>n", ":Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle Neo-tree" })

harpoon:setup() -- Harpoon Setup

keymap("n", "<leader>a", function()
	harpoon:list():add()
end)
keymap("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)
keymap("n", "<leader>q", function()
	harpoon:list():remove()
end)
keymap("n", "<C-1>", function()
	harpoon:list():select(1)
end)
keymap("n", "<C-2>", function()
	harpoon:list():select(2)
end)
keymap("n", "<C-3>", function()
	harpoon:list():select(3)
end)
keymap("n", "<C-4>", function()
	harpoon:list():select(4)
end)
keymap("n", "<C-Left>", function()
	harpoon:list():prev()
end)
keymap("n", "<C-Right>", function()
	harpoon:list():next()
end)
