require('doom-plugins')
require('doom-utils')
vim.cmd('luafile ~/.config/nvim/evilrc')
require('doom-autocommands')
require('doom-settings')
require('doom-keymappings')

--colors
require('doom-treesitter')
-- Plugs
require('doom-autopairs')
require('doom-barbar')
require('doom-icons')
require('doom-colorizer')
require('doom-galaxyline')
require('doom-indentline')
require('doom-tree')
require('doom-terminal')
require('doom-telescope')
require('doom-emmet')

--require('doom-keys')
-- LSP
require('doom-compe')
require('doom-dap')
require('doom-lsp.init')

-- VIM COMMANDS
vim.cmd('source ~/.config/nvim/vimscript/dashboard/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/markdown/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/doom-whichkey/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/highlights.vim')
