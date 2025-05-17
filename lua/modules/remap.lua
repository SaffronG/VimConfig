vim.g.mapleader = " "
-- Keymaps
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- NERDTree
keymap('n', 'fs', ':NERDTreeToggle<CR>', opts)
keymap('n', 'F', ':NERDTreeFocus<CR>', opts)
keymap('n', 'ntf', ':NERDTreeFind<CR>', opts)

-- Git mappings (assumes fugitive or similar)
keymap('n', 'gc', ':Git commit<CR>', opts)
keymap('n', 'gd', ':Git diff<CR>', opts)
keymap('n', 'gl', ':Git log<CR>', opts)
keymap('n', 'nhl', ':noh<CR>', opts)

-- Move lines up/down
keymap('n', '<M-Up>', ':m .-2<CR>==', opts)
keymap('n', '<M-Down>', ':m .+1<CR>==', opts)
keymap('v', '<M-Up>', ":m '<-2<CR>gv=gv", opts)
keymap('v', '<M-Down>', ":m '>+1<CR>gv=gv", opts)

-- Redo
keymap('n', '<C-a>', ':redo<CR>', opts)
