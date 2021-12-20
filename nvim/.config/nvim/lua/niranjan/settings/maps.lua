local utils = require "niranjan.settings.utils"
local map = utils.map



map("n", "<leader>e", ":NvimTreeToggle <CR>")
map("n", "<leader>r", ":NvimTreeFocus <CR> ")

map("n", "<Esc>", ":noh <CR>")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

map("n", "<leader>ff", ":Telescope find_files <CR>")
