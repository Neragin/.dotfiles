require "niranjan.settings.options"
require "niranjan.settings.keymaps"
require "niranjan.plugins.plugins"
require "niranjan.plugins.conf.cmp"
require "niranjan.lsp"
require "niranjan.plugins.conf.telescope"
require "niranjan.plugins.conf.treesitter"
require "niranjan.plugins.conf.autopairs"
require "niranjan.plugins.conf.comment"
require "niranjan.plugins.conf.nvim-tree"
require "niranjan.plugins.conf.bufferline"
require "niranjan.plugins.conf.project"
require "niranjan.plugins.conf.impatient"
require "niranjan.plugins.conf.indentline"

require'lualine'.setup()
-- local base16 = require 'base16'
-- base16(base16.themes["material-palenight"], true)
vim.cmd("colorscheme kanagawa")
vim.cmd("set guicursor+=i:blinkwait0")

