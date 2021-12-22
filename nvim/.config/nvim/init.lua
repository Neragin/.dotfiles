require "niranjan.plugins.cmp"
require "niranjan.plugins.plugins"
require "niranjan.settings.maps"
require "niranjan.settings.options"
require "niranjan.lsp"
require('Comment').setup()
require("bufferline").setup{}
require'lualine'.setup()
local base16 = require 'base16'
base16(base16.themes["material-palenight"], true)
