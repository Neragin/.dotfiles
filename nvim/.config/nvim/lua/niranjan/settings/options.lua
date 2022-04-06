local opt = vim.opt
-- Visual
opt.cmdheight = 1
vim.o.conceallevel = 0 -- Don't hide quotes in markdown
vim.o.pumheight = 10
vim.o.showtabline = 2 -- Always show tabline
vim.o.termguicolors = true -- Use true colors, required for some pluggins
vim.o.title = true
vim.wo.cursorline = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"
opt.clipboard = "unnamedplus"

-- Behaviour
vim.o.expandtab = true -- Convert tabs to spaces.
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true -- Ignore case when using lowercase in search
vim.o.mouse = "a"
vim.o.scrolloff = 12 -- Minium offset in lines to screen borders
vim.o.shiftwidth = 2
vim.o.sidescrolloff = 8
vim.o.smartcase = true -- But don't ignore it when using uppper case
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.softtabstop = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.tabstop = 2

-- Vim specific
vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.fileencoding = "utf-8"
vim.o.hidden = true -- Do not save when switching buffers
vim.o.spelllang = "en_US"
vim.o.updatetime = 300 -- Delay until write to Swap and HoldCommand event
vim.o.wildmode = "longest,full" -- Display autocomplete in Command Mode

-- Disable default plugins
vim.g.loaded_netrwPlugin = false
