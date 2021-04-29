require'nvim-treesitter.configs'.setup {
    ensure_installed = evil.treesitter.ensure_installed, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = evil.treesitter.ignore_install,
    highlight = {
        enable = evil.treesitter.highlight.enabled -- false will disable the whole extension
    },
    rainbow = {
        enable = evil.treesitter.rainbow.enabled,
        extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    }
}
