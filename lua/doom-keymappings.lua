-- leader Key ( i like space)
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true})
vim.g.mapleader = ' '

-- no hl because its annoying
vim.api.nvim_set_keymap('n', '<Leader>th', ':nohl<CR>', { noremap = true, silent = true })
function setup_tabs()
    -- Set up indenting
    vim.bo.expandtab = true
    vim.bo.copyindent = true
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4
    vim.bo.autoindent = true
    vim.bo.smartindent = true
end
vim.cmd [[ autocmd FileType * :lua setup_tabs() ]]
-- explorer
--vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- better window movement (Fast i guess)
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
vim.cmd('tnoremap <Esc> <C-\\><C-n>') -- get out of terminal insert mode into normal mode with Esc

-- Fuzzy Finder just because
vim.api.nvim_set_keymap('n', '<Leader>sl', ':SessionLoad<CR>', {noremap  = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ss', ':SessionSave<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fr', ':Telescope oldfiles<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fP', ':e ~/.config/nvim/lua/doom-settings.lua<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ft', ':Telescope help_tags<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope marks<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fp', ":lua require'telescope'.extensions.project.project{}<CR>", {noremap = true, silent = true})

-- whichkey
vim.cmd("nnoremap <silent> <leader> :WhichKey '<Space>'<CR>")


-- tab complete
--vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
--im.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
--im.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
--im.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- Markdown Preview keybindings
vim.cmd('nmap <C-m> <Plug>MarkdownPreviewToggle')

--============================--
-- Splits resizing keymappings--
--============================--

vim.cmd([[
  nnoremap <silent> <C-Up>    :resize -2<CR>
  nnoremap <silent> <C-Down>  :resize +2<CR>
  nnoremap <silent> <C-Right>  :vertical resize -2<CR>
  nnoremap <silent> <C-Left>  :vertical resize +2<CR>
]])

--=====================--
--    Disable keys     --
--=====================--

-- disable accidentally pressing ctrl-z and suspending
vim.cmd('nnoremap <c-z> <Nop>')

-- disable ex mode
vim.cmd('nnoremap Q <Nop>')

-- disable recording
vim.cmd('nnoremap q <Nop>')
