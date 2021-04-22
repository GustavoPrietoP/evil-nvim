vim.cmd('set colorcolumn=99999') -- fix indentline for now
vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set noswapfile')
vim.cmd('syntax on')
vim.cmd('set nu')
vim.cmd('set list listchars=tab:»·,trail:·')
vim.cmd('inoremap {} {}<ESC>i')
vim.cmd('inoremap {<RETURN> {}<ESC>i<CR><ESC>O') -- auto indent when for(){<Enter>
vim.cmd [[ autocmd FileType * :norm '" ]] -- remove this if you dont want vim to preserve the last cursor editing position
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.nu = true
vim.o.relativenumber = true
vim.o.scrolloff = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.autoindent = true
vim.wo.wrap = false -- Display long lines as just one line
vim.o.number = true
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.mouse = "a" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.autoread = true
vim.o.termguicolors = true -- set term giu colors most terminals support this
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.t_Co = "256" -- Support 256 colors
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
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
vim.o.guifont = "SauceCodePro Nerd Font:h17"
