vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set list listchars=tab:»·,trail:·')
vim.cmd('inoremap {} {}<ESC>i')
vim.cmd('inoremap {<RETURN> {}<ESC>i<CR><ESC>O') -- auto indent when for(){<Enter>
vim.cmd('syntax '..evil.syntax)
vim.cmd('colorscheme '..evil.scheme)
vim.o.background = evil.scheme_bg
vim.o.termguicolors = evil.termcolors
vim.o.cmdheight = evil.cmdheight
vim.o.showmode = evil.showmode
vim.o.hidden = evil.hidden
vim.o.title = evil.title
vim.o.wrap = evil.wrap
vim.o.relativenumber = evil.relative
vim.o.number = evil.number
vim.o.splitbelow = evil.split_below
vim.o.splitright = evil.split_right
vim.o.pumheight = evil.pum_height
vim.o.t_Co = evil.color_support
vim.o.conceallevel = evil.conceallevel
vim.o.cursorline = evil.line_highlight
vim.wo.signcolumn = evil.sign_column
vim.o.updatetime = evil.update_time
vim.o.timeoutlen = evil.timeout_len
vim.o.guifont = evil.guifont
vim.bo.smartindent = evil.smart_indent
vim.o.sw = evil.indent_spaces
vim.o.tabstop = evil.soft_tabstop
vim.o.softtabstop = evil.tabstop
vim.o.autoindent = evil.autoindent
vim.o.expandtab = evil.expand_tabs
vim.g.colors_name = evil.scheme

if evil.color_column == true then
    vim.o.colorcolumn = evil.column_value
end

if evil.scrolloff == true then
	vim.o.scrolloff = evil.scrolloff_count
end

if evil.clipboard == true then
    vim.o.clipboard = "unnamedplus"
end

if evil.title == true then
    vim.o.titlestring = evil.titlestring
end

if evil.mouse == true then
    vim.o.mouse = "a"
end
