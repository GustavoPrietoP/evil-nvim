-- leader Key ( i like space)
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true})
vim.g.mapleader = ' '

-- no hl because its annoying
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- better window movement (I'm fast as fuck)
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- 🖕escape (not much explaining to do)
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode because why not
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Leader>tt', ':ToggleTerm<CR>', {silent = true})
vim.cmd('tnoremap <Esc> <C-\\><C-n>')

-- Fuzzy Finder just because
vim.api.nvim_set_keymap('n', '<Leader>f', ':Telescope oldfiles<CR>', {silent = true})

--=====================--
--    Disable keys     --
--=====================--

-- disable accidentally pressing ctrl-z and suspending
vim.cmd('nnoremap <c-z> <Nop>')

-- disable ex mode
vim.cmd('nnoremap Q <Nop>')

-- disable recording
vim.cmd('nnoremap q <Nop>')
