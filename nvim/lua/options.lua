local opt = vim.opt
local g = vim.g

-- потом включу
vim.cmd([[
    syntax off
    filetype off
    filetype plugin indent off
]])

-- Настройки вима

opt.ruler = true
opt.autoread = true
opt.number = true
opt.smartcase = true
opt.scrolloff = 5
opt.sidescrolloff = 5
opt.title = true
opt.titlestring="Editing %f..."
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.showmode = false
opt.termguicolors = true
opt.wrap = false
