local doom_utils = {}
function doom_utils.define_augroups(definitions) -- {{{1
   for group_name, definition in pairs(definitions) do
        vim.cmd('augroup ' .. group_name)
        vim.cmd('autocmd!')

        for _, def in pairs(definition) do
            local command = table.concat(vim.tbl_flatten {'autocmd', def}, ' ')
            vim.cmd(command)
        end

        vim.cmd('augroup END')
    end
end

doom_utils.define_augroups({
    _general_settings = {
        {'TextYankPost', '*', 'lua require(\'vim.highlight\').on_yank({higroup = \'Search\', timeout = 200})'},
        {'BufWinEnter', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        {'BufRead', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        {'BufNewFile', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        {'FileType', 'markdown', 'setlocal wrap'}, {'FileType', 'markdown', 'setlocal spell'},
		{'FileType', 'java', 'luafile ~/.config/nvim/lua/doom-lsp/java-ls.lua'},
        {'FileType', 'java', 'nnoremap ca <Cmd>lua require(\'jdtls\').code_action()<CR>'},
        {'BufWinEnter', '.sol', 'setlocal filetype=solidity'},
        {'FileType', 'dashboard', 'setlocal nocursorline noswapfile synmaxcol& signcolumn=no norelativenumber nocursorcolumn nospell  nolist  nonumber bufhidden=wipe colorcolumn= foldcolumn=0 matchpairs= '},
        {'FileType', 'dashboard', 'set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2'},
        {'BufRead', '*.sol', 'setlocal filetype=solidity'}, {'BufNewFile', '*.sol', 'setlocal filetype=solidity'},
    }
})

function doom_utils.add_to_workspace_folder()
    vim.lsp.buf.add_workspace_folder()
end

function doom_utils.clear_references()
    vim.lsp.buf.clear_references()
end

function doom_utils.code_action()
    vim.lsp.buf.code_action()
end

function doom_utils.declaration()
    vim.lsp.buf.declaration()
    vim.lsp.buf.clear_references()
end

function doom_utils.definition()
    vim.lsp.buf.definition()
    vim.lsp.buf.clear_references()
end

function doom_utils.document_highlight()
    vim.lsp.buf.document_highlight()
end

function doom_utils.document_symbol()
    vim.lsp.buf.document_symbol()
end

function doom_utils.formatting()
    vim.lsp.buf.formatting()
end

function doom_utils.formatting_sync()
    vim.lsp.buf.formatting_sync()
end

function doom_utils.hover()
    vim.lsp.buf.hover()
end

function doom_utils.implementation()
    vim.lsp.buf.implementation()
end

function doom_utils.incoming_calls()
    vim.lsp.buf.incoming_calls()
end

function doom_utils.list_workspace_folders()
    vim.lsp.buf.list_workspace_folders()
end

function doom_utils.outgoing_calls()
    vim.lsp.buf.outgoing_calls()
end

function doom_utils.range_code_action()
    vim.lsp.buf.range_code_action()
end

function doom_utils.range_formatting()
    vim.lsp.buf.range_formatting()
end

function doom_utils.references()
    vim.lsp.buf.references()
    vim.lsp.buf.clear_references()
end

function doom_utils.remove_workspace_folder()
    vim.lsp.buf.remove_workspace_folder()
end

function doom_utils.rename()
    vim.lsp.buf.rename()
end

function doom_utils.signature_help()
    vim.lsp.buf.signature_help()
end

function doom_utils.type_definition()
    vim.lsp.buf.type_definition()
end

function doom_utils.workspace_symbol()
    vim.lsp.buf.workspace_symbol()
end

-- diagnostic

function doom_utils.get_all()
    vim.lsp.diagnostic.get_all()
end

function doom_utils.get_next()
    vim.lsp.diagnostic.get_next()
end

function doom_utils.get_prev()
    vim.lsp.diagnostic.get_prev()
end

function doom_utils.goto_next()
    vim.lsp.diagnostic.goto_next()
end

function doom_utils.goto_prev()
    vim.lsp.diagnostic.goto_prev()
end

function doom_utils.show_line_diagnostics()
    vim.lsp.diagnostic.show_line_diagnostics()
end

-- misc
function doom_utils.file_exists(name)
    local f = io.open(name, "r")
    if f ~= nil then
        io.close(f)
        return true
    else
        return false
    end
end

return doom_utils
