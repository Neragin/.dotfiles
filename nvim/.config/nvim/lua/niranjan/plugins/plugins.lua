local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- deps
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
	use("kyazdani42/nvim-web-devicons")
	use({
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").opts)
		end,
	})

	-- GUI
	use("nvim-lualine/lualine.nvim")
use 'Mofiqul/dracula.nvim'
	use("lewis6991/impatient.nvim")
	use("norcalli/nvim-base16.lua")
	use({ "norcalli/nvim-colorizer.lua", event = "BufRead" })
	use("lukas-reineke/indent-blankline.nvim")
	use("antoinemadec/FixCursorHold.nvim") -- This is needed to fix lsp doc highlight
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	})
	use("akinsho/bufferline.nvim")
use "rebelot/kanagawa.nvim"
	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")
  use({"petertriho/cmp-git", requires = "nvim-lua/plenary.nvim"})

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- LSP
	use("neovim/nvim-lspconfig") -- enable LSP
	use("williamboman/nvim-lsp-installer") -- simple to use language server installer
	use("tamago324/nlsp-settings.nvim") -- language server settings defined in json for
	use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
	use({
		"folke/trouble.nvim",
		cmd = { "Trouble", "TroubleToggle" },
	})

	-- Telescope
	use({ "nvim-telescope/telescope.nvim", cmd = "Telescope" })
	use("ahmedkhalf/project.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	 use({
		 "numToStr/Comment.nvim",
		 config = function()
			 require("Comment").setup()
		 end,
	 })

	-- misc
	use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
	-- Git
	-- use 'ActivityWatch/aw-watcher-vim'
	use("TimUntersberger/neogit") -- maybe switch?
  use("p00f/nvim-ts-rainbow")
  use("windwp/nvim-ts-autotag")
  use("JoosepAlviste/nvim-ts-context-commentstring")
	use("ThePrimeagen/vim-be-good")
	use("andweeb/presence.nvim")
	use("famiu/bufdelete.nvim")
	use("tpope/vim-fugitive")
	use({
		"jghauser/kitty-runner.nvim",
		config = function()
			require("kitty-runner").setup()
		end,
	})
	use("sindrets/diffview.nvim")
	-- misc

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
