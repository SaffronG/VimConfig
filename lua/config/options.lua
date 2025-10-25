-- Remaps
local options = vim.opt
local api_conf = vim.api

-- Basic Settings
options.fileformat = "unix"
options.encoding = "utf-8"

-- Indentation
options.tabstop = 3
options.softtabstop = 3
options.shiftwidth = 4
options.autoindent = true
options.smarttab = true
options.expandtab = true
options.wrap = false

-- Cursor line highlighting
options.cursorline = true
api_conf.nvim_set_hl(0, "CursorLine", { cterm = { bold = true }, bold = true, bg = "Grey40" })

-- Line Numbers
options.number = true
options.relativenumber = true
options.scrolloff = 8
options.showcmd = true

-- Backup and Search
options.backup = false
options.writebackup = false
options.hlsearch = true
