require("config.lazy")
--require("lua.remap")

-- REMAPS
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- NEOTREE
keymap('n', 'fs', ':Neotree<CR>', opts)

-- Move lines up/down
keymap('n', '<M-Up>', ':m .-2<CR>==', opts)
keymap('n', '<M-Down>', ':m .+1<CR>==', opts)
keymap('v', '<M-Up>', ":m '<-2<CR>gv=gv", opts)
keymap('v', '<M-Down>', ":m '>+1<CR>gv=gv", opts)
