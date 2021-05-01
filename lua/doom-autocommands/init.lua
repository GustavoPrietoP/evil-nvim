vim.cmd('autocmd BufNewFile,BufRead evilrc set filetype=lua')
vim.cmd('autocmd BufNewFile,BufEnter * set cpoptions+=d')
vim.cmd("autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2")
vim.cmd("autocmd BufEnter * :syntax sync fromstart")
vim.cmd("autocmd BufWritePost init.lua,evilrc PackerCompile profile=true")

