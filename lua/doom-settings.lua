vim.cmd('set colorcolumn=99999') -- fix indentline for now
vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set noswapfile') -- no swap files
vim.cmd('set relativenumber') -- remove this if you don't want to use relative numbers
vim.cmd('set scrolloff=4')
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vim.cmd('set ts=4') -- Insert 2 spaces for a tab vim.cmd('set whichwrap+=<,>,[,],h,l') -- move to next line with theses keys
vim.cmd('syntax on') -- move to next line with theses keys
vim.cmd('highlight nCursor guibg=#51afef')
vim.cmd('set guicursor=n-v-c:block-nCursor')
vim.cmd('set guicursor+=i:ver100-iCursor')
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.wo.wrap = false -- Display long lines as just one line
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.mouse = "a" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.autoread = true
vim.o.termguicolors = true -- set term giu colors most terminals support this
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.t_Co = "256" -- Support 256 colors
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.wo.number = true -- set numbered lines
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 100 -- Faster completion
vim.o.timeoutlen = 200 -- By default timeoutlen is 1000 ms
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.o.cmdheight=1 -- increase this to make galaxyline move up
vim.o.guifont = "SauceCodePro Nerd Font"
