vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Synchronizez thhe system clipbaord
-- with Neovim's clopboard.
vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

-- Make a split window to 
-- preview global changes
vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.termguicolors = true

--make a leader key
vim.g.mapleader = " "

-- set a keybind for updating the file
vim.keymap.set("n", "<C-S>", ":update<CR>", {})

-- for insert mode
vim.keymap.set("i", "<C-S>", "<Esc>:update<CR>", {})
