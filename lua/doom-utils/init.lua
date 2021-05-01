local evil_utils = {}
function evil_utils.define_augroups(definitions) -- {{{1
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

evil_utils.define_augroups({
    _general_settings = {
        {'TextYankPost', '*', 'lua require(\'vim.highlight\').on_yank({higroup = \'Search\', timeout = 200})'},
        {'BufWinEnter', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        {'BufRead', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        {'BufNewFile', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        {'FileType', 'markdown', 'setlocal wrap'}, {'FileType', 'markdown', 'setlocal spell'},
        {'BufWinEnter', '.sol', 'setlocal filetype=solidity'},

        {'FileType', 'dashboard', 'setlocal nocursorline noswapfile synmaxcol& signcolumn=no norelativenumber nocursorcolumn nospell  nolist  nonumber bufhidden=wipe colorcolumn= foldcolumn=0 matchpairs= '},
        {'FileType', 'dashboard', 'set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2'},
        {'BufRead', '*.sol', 'setlocal filetype=solidity'}, {'BufNewFile', '*.sol', 'setlocal filetype=solidity'},
    }
})

function evil_utils.add_to_workspace_folder()
    vim.lsp.buf.add_workspace_folder()
end

function evil_utils.clear_references()
    vim.lsp.buf.clear_references()
end

function evil_utils.code_action()
    vim.lsp.buf.code_action()
end

function evil_utils.declaration()
    vim.lsp.buf.declaration()
    vim.lsp.buf.clear_references()
end

function evil_utils.definition()
    vim.lsp.buf.definition()
    vim.lsp.buf.clear_references()
end

function evil_utils.document_highlight()
    vim.lsp.buf.document_highlight()
end

function evil_utils.document_symbol()
    vim.lsp.buf.document_symbol()
end

function evil_utils.formatting()
    vim.lsp.buf.formatting()
end

function evil_utils.formatting_sync()
    vim.lsp.buf.formatting_sync()
end

function evil_utils.hover()
    vim.lsp.buf.hover()
end

function evil_utils.implementation()
    vim.lsp.buf.implementation()
end

function evil_utils.incoming_calls()
    vim.lsp.buf.incoming_calls()
end

function evil_utils.list_workspace_folders()
    vim.lsp.buf.list_workspace_folders()
end

function evil_utils.outgoing_calls()
    vim.lsp.buf.outgoing_calls()
end

function evil_utils.range_code_action()
    vim.lsp.buf.range_code_action()
end

function evil_utils.range_formatting()
    vim.lsp.buf.range_formatting()
end

function evil_utils.references()
    vim.lsp.buf.references()
    vim.lsp.buf.clear_references()
end

function evil_utils.remove_workspace_folder()
    vim.lsp.buf.remove_workspace_folder()
end

function evil_utils.rename()
    vim.lsp.buf.rename()
end

function evil_utils.signature_help()
    vim.lsp.buf.signature_help()
end

function evil_utils.type_definition()
    vim.lsp.buf.type_definition()
end

function evil_utils.workspace_symbol()
    vim.lsp.buf.workspace_symbol()
end

-- diagnostic

function evil_utils.get_all()
    vim.lsp.diagnostic.get_all()
end

function evil_utils.get_next()
    vim.lsp.diagnostic.get_next()
end

function evil_utils.get_prev()
    vim.lsp.diagnostic.get_prev()
end

function evil_utils.goto_next()
    vim.lsp.diagnostic.goto_next()
end

function evil_utils.goto_prev()
    vim.lsp.diagnostic.goto_prev()
end

function evil_utils.show_line_diagnostics()
    vim.lsp.diagnostic.show_line_diagnostics()
end

-- misc
function evil_utils.file_exists(name)
    local f = io.open(name, "r")
    if f ~= nil then
        io.close(f)
        return true
    else
        return false
    end
end

return evil_utils
