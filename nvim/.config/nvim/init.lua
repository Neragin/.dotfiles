require("niranjan.settings")
require("niranjan.plugins.conf.cmp")
require("niranjan.lsp")
require("niranjan.plugins")

vim.cmd("set guicursor+=i:blinkwait0")


require("lualine").setup({
	options = {
    options = {globalstatus = true}
	},
})

vim.opt.laststatus = 3
vim.opt.fillchars:append({
    horiz = '━',
    horizup = '┻',
    horizdown = '┳',
    vert = '┃',
    vertleft = '┨',
    vertright = '┣',
    verthoriz = '╋',
})

vim.g.catppuccin_flavour = "mocha"
vim.cmd[[colorscheme catppuccin]]
