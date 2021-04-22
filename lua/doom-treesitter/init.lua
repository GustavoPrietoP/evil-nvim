require'nvim-treesitter.configs'.setup {
	ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	highlight = {enable = true}, -- false will disable the whole extension
	indent = { enable = false}, -- auto indent, no needs for this
    autotag = {enable = false}, -- auto htlm tags
	rainbow = {enable = true}, -- rainbow braces, false will disable it
}
