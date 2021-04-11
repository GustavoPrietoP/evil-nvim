require('nv-globals')
require('plugins')
require('keymappings')
require('settings')
require('config')

--colors
require('colorscheme')
require('nv-treesitter')

-- Plugs
require('nvim-autopairs').setup()
require('nv-barbar')
require('nv-colorizer')
require('nv-galaxyline')
require('nv-indentline')
require('nv-nvimtree')
require('nv-terminal')
require('nv-telescope')
require('nv-emmet')
-- LSP
require('nv-compe')
require('nv-dap')
require('lsp.lua-ls')
require('lsp.python-ls')
require('lsp.go-ls')
require('lsp.rs-ls')
require('lsp.ts-js')
require('nv-utils')
require('lsp.init')

-- VIM COMMANDS LOL
vim.cmd('source ~/.config/nvim/vimscript/dashboard/init.vim')
