local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile"

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
	-- Add your packages
	use {'Vhyrro/neorg'}
	-- Markdown
	use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
	-- NvimTree
	use {'kyazdani42/nvim-tree.lua'}
   	use {"ryanoasis/vim-devicons"}
    use "kyazdani42/nvim-web-devicons"

	use {"liuchengxu/vim-which-key"}
	-- Lua
    --use {
    --  "folke/which-key.nvim",
    --  config = function()
    --    require("which-key").setup {
    --      -- your configuration comes here
    --      -- or leave it empty to use the default settings
    --      -- refer to the configuration section below
    --    }
    --  end
    --}
	-- Lsp
	use {'neovim/nvim-lspconfig'}
	use {'glepnir/lspsaga.nvim'}
	use {'hrsh7th/nvim-compe'}
	use {'mfussenegger/nvim-jdtls'}
	use {'kabouzeid/nvim-lspinstall'}
	use {'onsails/lspkind-nvim'}
	use {'ray-x/lsp_signature.nvim'}
	use {'hrsh7th/vim-vsnip'}
	use {'mattn/emmet-vim'}
	use {"rafamadriz/friendly-snippets"}
	-- Colorscheme
	use {'christianchiarulli/nvcode-color-schemes.vim'}
	use {'norcalli/nvim-colorizer.lua'}
	use {'GustavoPrietoP/doom-one.vim'}
	use {'bluz71/vim-nightfly-guicolors'}
	use {'tanvirtin/monokai.nvim'}
    	use {'GustavoPrietoP/nvim-ts-rainbow'}
	-- Telescope
	use {'nvim-lua/popup.nvim'}
	use {'nvim-lua/plenary.nvim'}
	use {'nvim-telescope/telescope.nvim'}
	use {'kevinhwang91/nvim-bqf'}
	use {'glepnir/dashboard-nvim'}
	use {'nvim-telescope/telescope-project.nvim'}
	-- LuaGuide
	use {'nanotee/nvim-lua-guide'}
	-- Autopairs
	use {'windwp/nvim-autopairs'}
	-- Thing at the top lol
	use {'romgrk/barbar.nvim'}
	-- Treesitter
	use {'nvim-treesitter/nvim-treesitter'}
	use {'lukas-reineke/indent-blankline.nvim', branch='lua'}
	-- Debugger
	use {'mfussenegger/nvim-dap'}
	-- Galaxy Line
	use {'glepnir/galaxyline.nvim'}
	-- Everyone needs a terminal
	use {'akinsho/nvim-toggleterm.lua'}
end)

