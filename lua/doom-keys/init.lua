require("which-key").setup {
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
    window = {
        border = "double", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = {1, 0, 1, 0}, -- extra window margin [top, right, bottom, left]
        padding = {2, 2, 2, 2} -- extra window padding [top, right, bottom, left]
    },
    layout = {
        height = {min = 4, max = 25}, -- min and max height of the columns
        width = {min = 20, max = 50}, -- min and max width of the columns
        spacing = 3 -- spacing between columns
    },
    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
    show_help = true -- show help message on the command line when the popup is visible
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

-- TODO create entire treesitter section

local mappings = {
    b = {
        name = "+buffer",
    },
    d = {
        name = "+Debug",
        b = {"<cmd>DebugToggleBreakpoint<cr>", "Toggle Breakpoint"},
        c = {"<cmd>DebugContinue<cr>", "Continue"},
        i = {"<cmd>DebugStepInto<cr>", "Step Into"},
        o = {"<cmd>DebugStepOver<cr>", "Step Over"},
        r = {"<cmd>DebugToggleRepl<cr>", "Toggle Repl"},
        s = {"<cmd>DebugStart<cr>", "Start"}
    },
    g = {
        name = "+Git",
        j = {"<cmd>NextHunk<cr>", "Next Hunk"},
        k = {"<cmd>PrevHunk<cr>", "Prev Hunk"},
        p = {"<cmd>PreviewHunk<cr>", "Preview Hunk"},
        r = {"<cmd>ResetHunk<cr>", "Reset Hunk"},
        R = {"<cmd>ResetBuffer<cr>", "Reset Buffer"},
        s = {"<cmd>StageHunk<cr>", "Stage Hunk"},
        u = {"<cmd>UndoStageHunk<cr>", "Undo Stage Hunk"}
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
        e = "Tree explorer",
        h = "No highlight",
        t = "Terminal",
        l = "Line numbers",
    },
    s = {
        name = "+Search",
        b = {"<cmd>Telescope git_branches<cr>", "File"},
        c = {"<cmd>Telescope colorscheme<cr>", "Colorscheme"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>Telescope find_files<cr>", "Find File"},
        m = {"<cmd>Telescope marks<cr>", "Marks"},
        M = {"<cmd>Telescope man_pages<cr>", "Man Pages"},
        r = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"},
        R = {"<cmd>Telescope registers<cr>", "Registers"},
        t = {"<cmd>Telescope live_grep<cr>", "Text"}
    },
    S = {name = "+Session", s = {"<cmd>SessionSave<cr>", "Save Session"}, l = {"<cmd>SessionLoad<cr>", "Load Session"}}
}

local wk = require("which-key")
wk.register(mappings, opts)
