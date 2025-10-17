-- REMAPS
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- NEOTREE
keymap("n", "fs", ":Neotree<CR>", opts)

-- Move lines up/down
keymap("n", "<M-Up>", ":m .-2<CR>==", opts)
keymap("n", "<M-Down>", ":m .+1<CR>==", opts)
keymap("v", "<M-Up>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "<M-Down>", ":m '>+1<CR>gv=gv", opts)

-- Harpoon Setup
local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set("n", "<leader>q", function()
	harpoon:list():remove()
end)

vim.keymap.set("n", "<C-1>", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-2>", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-3>", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-4>", function()
	harpoon:list():select(4)
end)

vim.keymap.set("n", "<C-Left>", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<C-Right>", function()
	harpoon:list():next()
end)
