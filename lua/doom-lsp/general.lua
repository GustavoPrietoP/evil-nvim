require'lspinstall'.setup()
local on_attach = function(client, bufnr)
    function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local nvim_lsp = require('lspconfig')
nvim_lsp["efm"].setup {on_attach = on_attach}
nvim_lsp["go"].setup {on_attach = on_attach}
nvim_lsp["dockerfile"].setup {on_attach = on_attach}
nvim_lsp["python"].setup {on_attach = on_attach}
nvim_lsp["cpp"].setup {on_attach = on_attach}
nvim_lsp["bash"].setup {on_attach = on_attach}
nvim_lsp["cmake"].setup {on_attach = on_attach}
nvim_lsp["yaml"].setup {on_attach = on_attach}
nvim_lsp["html"].setup {on_attach = on_attach}
nvim_lsp["typescript"].setup { on_attach = on_attach }
nvim_lsp["rust"].setup { on_attach = on_attach }
nvim_lsp["angular"].setup { on_attach = on_attach }
nvim_lsp["lua"].setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {globals = {"vim", "use"}},
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
                },
                maxPreload = 10000
            }
        }
    }
}
