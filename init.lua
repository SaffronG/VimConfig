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

-- Harpoon Keybinds

-- Basic Settings
vim.opt.fileformat = "unix"
vim.opt.encoding = "utf-8"

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.wrap = false

-- Cursor line highlighting
vim.opt.cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { cterm = { bold = true }, bold = true, bg = "Grey40" })

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.showcmd = true

-- Backup and Search
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.hlsearch = true

-- Harpoon Setup
local harpoon = require('harpoon')

harpoon:setup()

vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end)
vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set('n', '<leader>q', function() harpoon:list():remove() end)

vim.keymap.set('n', '<C-1>', function() harpoon:list():select(1) end)
vim.keymap.set('n', '<C-2>', function() harpoon:list():select(2) end)
vim.keymap.set('n', '<C-3>', function() harpoon:list():select(3) end)
vim.keymap.set('n', '<C-4>', function() harpoon:list():select(4) end)

vim.keymap.set('n', '<C-Left>', function() harpoon:list():prev() end)
vim.keymap.set('n', '<C-Right>', function() harpoon:list():next() end)
