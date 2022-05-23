require("niranjan.settings.options")
require("niranjan.settings.keymaps")
require("niranjan.plugins.plugins")
require("niranjan.plugins.conf.cmp")
require("niranjan.lsp")
require("niranjan.plugins.conf.telescope")
require("niranjan.plugins.conf.treesitter")
require("niranjan.plugins.conf.autopairs")
require("niranjan.plugins.conf.comment")
require("niranjan.plugins.conf.nvim-tree")
require("niranjan.plugins.conf.bufferline")
require("niranjan.plugins.conf.project")
require("niranjan.plugins.conf.impatient")
require("niranjan.plugins.conf.indentline")
require("niranjan.plugins.conf.neogit")

vim.cmd("set guicursor+=i:blinkwait0")


require("lualine").setup({
	options = {
		theme = "kanagawa",
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
require'kanagawa'.setup({ globalStatus = true })
vim.cmd("colorscheme kanagawa")
