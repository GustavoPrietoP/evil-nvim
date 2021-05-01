vim.fn.sign_define(
    "LspDiagnosticsSignError",
    {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"}
)
vim.fn.sign_define(
    "LspDiagnosticsSignWarning",
    {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"}
)
vim.fn.sign_define(
    "LspDiagnosticsSignHint",
    {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"}
)
vim.fn.sign_define(
    "LspDiagnosticsSignInformation",
    {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"}
)
-- taken from https://github.com/neovim/nvim-lspconfig#keybindings-and-completion
-- changed servers and ctermbg=237
-- added buf_set_keymap('n', 'ga', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
local nvim_lsp = require('lspconfig')

-- Snippets support
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
 vim.lsp.diagnostic.on_publish_diagnostics, {
   virtual_text = {
     prefix = " ", -- change this to whatever you want your diagnostic icons to be
   },
 }
)

-- Signature help
require('lsp_signature').on_attach()

require('lspkind').init({
    with_text = true,
    symbol_map = {
        Text = '',
        Method = 'ƒ',
        Function = '',
        Constructor = '',
        Variable = '',
        Class = '',
        Interface = 'ﰮ',
        Module = '',
        Property = '',
        Unit = '',
        Value = '',
        Enum = '了',
        Keyword = '',
        Snippet = '﬌',
        Color = '',
        File = '',
        Folder = '',
        EnumMember = '',
        Constant = '',
        Struct = ''
    },
})

vim.cmd("nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>")
vim.cmd("nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>")
vim.cmd("nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>")
vim.cmd("nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>")
vim.cmd("nnoremap <silent> ca :Lspsaga code_action<CR>")
vim.cmd("nnoremap <silent> K :Lspsaga hover_doc<CR>")
-- vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.cmd("nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>")
vim.cmd("nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>")
-- scroll down hover doc or scroll in definition preview
vim.cmd("nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
-- scroll up hover doc
vim.cmd("nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")
vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()')
local on_attach = function(client, bufnr)
    -- Mappings.
    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
      buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    elseif client.resolved_capabilities.document_range_formatting then
      buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end
    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
      vim.api.nvim_exec([[
        hi LspReferenceRead ctermbg=237 guibg=LightYellow
        hi LspReferenceText ctermbg=237 guibg=LightYellow
        hi LspReferenceWrite ctermbg=237 guibg=LightYellow
        augroup lsp_document_highlight
          autocmd! * <buffer>
          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
      ]], false)
    end
end

--[[-----------------]]--
--      LSP Setup      --
--]]-----------------[[--
-- https://github.com/kabouzeid/nvim-lspinstall#advanced-configuration-recommended
local function setup_servers()
    -- Provide the missing :LspInstall
    require('lspinstall').setup()
    local servers = require('lspinstall').installed_servers()
    for _, server in pairs(servers) do
        nvim_lsp[server].setup{}
    end
    nvim_lsp["lua"].setup{
        settings = {
            Lua = {
                runtime = {
                    -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                    version = 'LuaJIT',
                    -- Setup your lua path
                    path = vim.split(package.path, ';')
                },
                diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    globals = {'vim', "use", "evil"}
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true},
                    maxPreload = 10000
                }
            }
        }
    }
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require('lspinstall').post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
