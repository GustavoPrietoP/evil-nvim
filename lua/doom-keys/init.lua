local wk = require("which-key")
wk.setup{
    plugins = {
        marks = false, -- shows a list of your marks on ' and `
        registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
            operators = true, -- adds help for operators like d, y, ...
            motions = true, -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = true -- bindings for prefixed with g
        }
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+" -- symbol prepended to a group
    },
    window = { padding = { 0, 0, 0, 0 } },
    layout = { height = { min = 1, max = 10 } },

    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
    show_help = false, -- show help message on the command line when the popup is visible
    triggers = {"<leader>"}, -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specifiy a list manually
}

local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false -- use `nowait` when creating keymaps
}
-- Set leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- Plugin Menu
vim.api.nvim_set_keymap('n', '<Leader>pc', ':PackerClean<CR>', {noremap  = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>pi', ':PackerInstall<CR>', {noremap  = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>pu', ':PackerUpdate<CR>', {noremap  = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ps', ':PackerSync<CR>', {noremap  = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>pl', ':luafile %<CR>', {noremap  = true, silent = true})

-- Buffer order
vim.api.nvim_set_keymap('n', '<Leader>od', ':BufferOrderByDirectory%<CR>', {noremap  = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ol', ':BufferOrderByLanguage%<CR>', {noremap  = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ob', ':BufferMoveNext%<CR>', {noremap  = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>op', ':BufferMovePrevious%<CR>', {noremap  = true, silent = true})


-- Fuzzy Finder just because
vim.api.nvim_set_keymap('n', '<Leader>sl', ':SessionLoad<CR>', {noremap  = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ss', ':SessionSave<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fr', ':Telescope oldfiles<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fP', ':e ~/.config/nvim/lua/doom-settings.lua<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ft', ':Telescope help_tags<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope marks<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fp', ":lua require'telescope'.extensions.project.project{}<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>tc', ':DashboardChangeColorscheme<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ft', ':Dashboard<CR>', {noremap = true, silent = true})

-- terminal
vim.api.nvim_set_keymap('n', '<Leader>tt', ':ToggleTerm<CR>', {silent = true})
vim.cmd('tnoremap <Esc> <C-\\><C-n>') -- get out of terminal insert mode into normal mode with Esc

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>th', ':nohl<CR>', { noremap = true, silent = true })

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>te', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- buffers
vim.api.nvim_set_keymap('n', '<Leader>b1', ':BufferGoto 1<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>b2', ':BufferGoto 2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>b3', ':BufferGoto 3<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>b4', ':BufferGoto 4<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>b5', ':BufferGoto 5<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>b6', ':BufferGoto 6<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>b7', ':BufferGoto 7<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>b8', ':BufferGoto 8<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>b9', ':BufferLast<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>bc', ':BufferClose<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>bn', ':BufferNext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>bP', ':BufferPick<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>bp', ':BufferPrevious<CR>', {noremap = true, silent = true})

-- Evil
vim.api.nvim_set_keymap('n', '<Leader>e', ':e ~/.config/nvim/evilrc<CR>', {noremap = true, silent = true})

local mappings = {
    ["e"] = "Evil",
    ["p"] = "Plugin Menu",
    ["o"] = "Order Menu",

    b = {
        name = "+buffer",
    },
    f = {
        name = "+file",
        f = {"<cmd>Telescope find_files<cr>", "Find file"},
        b = {"<cmd>Telescope marks<cr>", "Bookmarks"},
        g = {"<cmd>Telescope live_grep<cr>", "Find word"},
        t = {"<cmd>Telescope help_tags<cr>", "Telescope Tags"},
        P = {"<cmd>e ~/.config/nvim/lua/doom-settings.lua<cr>", "Open Private Configuration"},
        p = {"<cmd>lua require'telescope'.extensions.project.project{}<cr>", "Open Project"},
        r = {"<cmd>Telescope oldfiles<cr>", "Recently opened files"}
    },
    l = {
        name = "+code",
        a = {"<cmd>Lspsaga code_action<cr>", "Code Action"},
        A = {"<cmd>Lspsaga rnge_code_action<cr>", "Selected Action"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>LspFormatting<cr>", "Format"},
        i = {"<cmd>LspInfo<cr>", "Info"},
        l = {"<cmd>Lspsaga lsp_finder<cr>", "LSP Finder"},
        L = {"<cmd>Lspsaga show_line_diagnostics<cr>", "Line Diagnostics"},
        p = {"<cmd>Lspsaga preview_definition<cr>", "Preview Definition"},
        q = {"<cmd>Telescope quickfix<cr>", "Quickfix"},
        r = {"<cmd>Lspsaga rename<cr>", "Rename"},
        t = {"<cmd>LspTypeDefinition<cr>", "Type Definition"},
        x = {"<cmd>cclose<cr>", "Close Quickfix"},
        s = {"<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols"},
        S = {"<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols"}
    },
    t = {
        name = "+toggle",
        c = "Colorscheme",
        e = "Tree explorer",
        h = "No highlight",
        l = "Line numbers",
        t = "Terminal",
        s = "Open Start screen",
    },
    s = {name = "+session", s = {"<cmd>SessionSave<cr>", "Save Session"}, l = {"<cmd>SessionLoad<cr>", "Load Session"}}
}

wk.register(mappings, opts)
