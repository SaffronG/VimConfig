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
vim.cmd([[highlight CursorLine cterm=bold gui=bold guibg=Grey40]])

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.showcmd = true

-- Backup and Search
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.hlsearch = true
