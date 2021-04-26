--  use `as` to alias a package name
-- use braces when passing an option

vim.cmd 'packadd paq-nvim'         -- Load package

local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function

paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself
-- Add your packages
paq {'Vhyrro/neorg'}
-- Markdown
paq {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
-- NvimTree
paq {'kyazdani42/nvim-tree.lua'}
paq {'kyazdani42/nvim-web-devicons'}
paq {"liuchengxu/vim-which-key"}
-- Lsp
paq {'neovim/nvim-lspconfig'}
paq {'glepnir/lspsaga.nvim'}
paq {'hrsh7th/nvim-compe'}
paq {'mfussenegger/nvim-jdtls'}
paq {'kabouzeid/nvim-lspinstall'}
paq {'onsails/lspkind-nvim'}
paq {'ray-x/lsp_signature.nvim'}
paq {'hrsh7th/vim-vsnip'}
paq {'mattn/emmet-vim'}
paq {"rafamadriz/friendly-snippets"}
-- formater
paq {'sbdchd/neoformat'}
-- Colorscheme
paq {'christianchiarulli/nvcode-color-schemes.vim'}
paq {'norcalli/nvim-colorizer.lua'}
paq {'GustavoPrietoP/doom-one.vim'}
paq {'bluz71/vim-nightfly-guicolors'}
paq {'tanvirtin/monokai.nvim'}
-- Telescope
paq {'nvim-lua/popup.nvim'}
paq {'nvim-lua/plenary.nvim'}
paq {'nvim-telescope/telescope.nvim'}
paq {'kevinhwang91/nvim-bqf'}
-- paq {'glepnir/dashboard-nvim'}
paq {'nvim-telescope/telescope-project.nvim'}
-- LuaGuide
paq {'nanotee/nvim-lua-guide'}
-- Autopairs
paq {'windwp/nvim-autopairs'}
-- Thing at the top lol
paq {'romgrk/barbar.nvim'}
-- Treesitter
paq {'nvim-treesitter/nvim-treesitter'}
paq {'GustavoPrietoP/nvim-ts-rainbow'}
paq {'lukas-reineke/indent-blankline.nvim', branch='lua'}
-- Debugger
paq {'mfussenegger/nvim-dap'}
-- Galaxy Line
paq {'glepnir/galaxyline.nvim'}
-- Everyone needs a terminal
paq {'akinsho/nvim-toggleterm.lua'}
