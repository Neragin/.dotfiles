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

vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_dark_sidebar = true
vim.g.tokyonight_dark_float = true
vim.g.tokyonight_lualine_bold = true
vim.cmd([[colorscheme tokyonight]])

require("lualine").setup({
	options = {
		theme = "catppuccin",
	},
})

-- Lua
vim.cmd[[colorscheme catppuccin]]
vim.diagnostic.config({
  virtual_text = false,
})
