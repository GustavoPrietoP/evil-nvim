require('doom-settings')
require('doom-globals')
require('doom-plugins')
require('doom-keymappings')
require('doom-config')
--colors
require('doom-colorscheme')
require('doom-treesitter')

require('doom-rainbow')
require('doom-autopairs')
require('doom-barbar')
require('doom-colorizer')
require('doom-galaxyline')
require('doom-indentline')
require('doom-tree')
require('doom-terminal')
require('doom-telescope')
require('doom-emmet')
-- LSP
require('doom-lsp.general')
require('doom-compe')
require('doom-dap')
require('doom-lsp.init')
require('doom-utils')
-- VIM COMMANDS
vim.cmd('source ~/.config/nvim/vimscript/dashboard/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/markdown/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/doom-whichkey/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/highlights.vim')
