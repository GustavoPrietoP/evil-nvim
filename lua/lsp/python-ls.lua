-- npm i -g pyright
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.pyright.setup{}
