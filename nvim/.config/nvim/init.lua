require "niranjan.settings.options"
require "niranjan.plugins.plugins"
require "niranjan.plugins.cmp"
require("niranjan.settings.maps")
require('Comment').setup()
require("bufferline").setup{}
require'lualine'.setup()
local base16 = require 'base16'
base16(base16.themes["material-palenight"], true)
