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
require('lsp.general')
require('nv-compe')
require('nv-dap')
require('lsp.init')
require('nv-utils')

-- VIM COMMANDS LOL
vim.cmd('source ~/.config/nvim/vimscript/dashboard/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/markdown/init.vim')
