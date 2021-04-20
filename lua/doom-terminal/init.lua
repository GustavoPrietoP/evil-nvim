require('toggleterm').setup{
    size = 10,
    open_mapping = [[~-t]], -- this is required in order to not get any errors. Please map this to something you will never use, you can use <Leader>tt to open the terminal
    shade_filetypes = {},
    shade_terminals = true,
    start_in_insert = true,
    persist_size = true,
    direction = 'horizontal',
}


