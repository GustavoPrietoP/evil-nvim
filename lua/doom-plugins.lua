
--vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
    -- refactor  {highlight_definitions  {enable = }
local fn = vim.fn

local install_path =  fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path) execute 'packadd packer.nvim' end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function(use)
  -- Packer can manage itself as an ional plugin
    use {'wbthomason/packer.nvim'}

    -- very special org mode!
     use { 'Vhyrro/neorg', config = function()

      require('neorg').setup {}
  end}

	-- Markdown
	use {'iamcco/markdown-preview.nvim',  run=  'cd app && yarn install'}
    -- NvimTree
    use {'kyazdani42/nvim-tree.lua'}
	use {'kyazdani42/nvim-web-devicons'}
    use {"liuchengxu/vim-which-key"}
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
    -- formater
    use {'sbdchd/neoformat'}

	-- Colorscheme
    --use 'christianchiarulli/nvcode-color-schemes.vim'
    use {"npxbr/gruvbox.nvim", requires=  {"rktjmp/lush.nvim"}}
	use {'norcalli/nvim-colorizer.lua'}
	--use {'GustavoPrietoP/doom-one.vim}' -- [Darker version] --if you want this , comment the darker doom-one, restart nvim, :PackerClean, restart, uncomment this one, :PackerInstall
    use {'NTBBloodbath/doom-one.vim'}
	use {'bluz71/vim-nightfly-guicolors'}

    -- Telescope
    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-telescope/telescope.nvim'}
    use {'kevinhwang91/nvim-bqf'}
    use {'nvim-telescope/telescope-project.nvim'}
    -- LuaGuide
    use {'nanotee/nvim-lua-guide'}

    -- Autopairs
    use {'windwp/nvim-autopairs'}

    -- Thing at the top lol
    use {'romgrk/barbar.nvim'}

	-- Treesitter
    use {'nvim-treesitter/nvim-treesitter'}
    use {'GustavoPrietoP/nvim-ts-rainbow'}
    use {'lukas-reineke/indent-blankline.nvim', branch=  'lua'}
	-- Debugger
    use {'mfussenegger/nvim-dap'}

	-- Start Screen
	use {'glepnir/dashboard-nvim'}

	-- Galaxy Line
	use {'glepnir/galaxyline.nvim'}

	-- Everyone needs a terminal
	use {'akinsho/nvim-toggleterm.lua'}
end)
