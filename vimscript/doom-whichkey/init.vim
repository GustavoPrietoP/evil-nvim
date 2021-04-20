nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_map =  {}
let g:lmap = g:which_key_map

" LSP------------------------------------------------------------------{{{
let g:which_key_map.l = {
      \ 'name' : '+code' ,
      \ 'a' : [':Lspsaga code_action'                , 'code action'],
      \ 'A' : [':Lspsaga range_code_action'          , 'selected action'],
      \ 'd' : [':Telescope lsp_document_diagnostics' , 'document diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics', 'workspace diagnostics'],
      \ 'f' : [':LspFormatting'                      , 'format'],
      \ 'I' : [':LspInfo'                            , 'lsp info'],
      \ 'v' : [':LspVirtualTextToggle'               , 'lsp toggle virtual text'],
      \ 'l' : [':Lspsaga lsp_finder'                 , 'lsp finder'],
      \ 'L' : [':Lspsaga show_line_diagnostics'      , 'line_diagnostics'],
      \ 'p' : [':Lspsaga preview_definition'         , 'preview definition'],
      \ 'q' : [':Telescope quickfix'                 , 'quickfix'],
      \ 'r' : [':Lspsaga rename'                     , 'rename'],
      \ 'T' : [':LspTypeDefinition'                  , 'type defintion'],
      \ 'x' : [':cclose'                             , 'close quickfix'],
      \ 's' : [':Telescope lsp_document_symbols'     , 'document symbols'],
      \ 'S' : [':Telescope lsp_workspace_symbols'    , 'workspace symbols'],
      \ }
"}}}
" Buffer Menu---------------------------------------------------------{{{
let g:lmap.b = {'name': 'Buffer Menu'}
" Go to buffer 1
nnoremap <silent> <leader>b1 :BufferGoto 1<CR>
let g:lmap.b.1 = 'Buffer 1'
" Go to buffer 2
nnoremap <silent> <leader>b2 :BufferGoto 2<CR>
let g:lmap.b.2 = 'Buffer 2'
" Go to buffer 3
nnoremap <silent> <leader>b3 :BufferGoto 3<CR>
let g:lmap.b.3 = 'Buffer 3'
" Go to buffer 4
nnoremap <silent> <leader>b4 :BufferGoto 4<CR>
let g:lmap.b.4 = 'Buffer 4'
" Go to buffer 5
nnoremap <silent> <leader>b5 :BufferGoto 5<CR>
let g:lmap.b.5 = 'Buffer 5'
" Go to buffer 6
nnoremap <silent> <leader>b6 :BufferGoto 6<CR>
let g:lmap.b.6 = 'Buffer 6'
" Go to buffer 7
nnoremap <silent> <leader>b7 :BufferGoto 7<CR>
let g:lmap.b.7 = 'Buffer 7'
" Go to buffer 8
nnoremap <silent> <leader>b8 :BufferGoto 8<CR>
let g:lmap.b.8 = 'Buffer 8'
" Go to last buffer
nnoremap <silent> <leader>b9 :BufferLast<CR>
let g:lmap.b.9 = 'Last buffer'
" Close current buffer
nnoremap <silent> <leader>bc :BufferClose<CR>
let g:lmap.b.c = 'Close buffer'
" Format buffer
nnoremap <silent> <leader>bf :Neoformat<CR>
let g:lmap.b.f = 'Format buffer'
" Next buffer
nnoremap <silent> <leader>bn :BufferNext<CR>
let g:lmap.b.n = 'Next buffer'
" Pick buffer
nnoremap <silent> <leader>bP :BufferPick<CR>
let g:lmap.b.P = 'Pick buffer'
" Previous buffer
nnoremap <silent> <leader>bp :BufferPrevious<CR>
let g:lmap.b.p = 'Previous buffer'

"}}}

" Plugin Menu---------------------------------------------------------{{{

let g:lmap.p = {'name': 'Plugin Menu'}
" Clean disabled or unused plugins
nnoremap <silent> <leader>pc :PackerClean<CR>
let g:lmap.p.c = 'Clean disabled or unused plugins'
" Install missing plugins
nnoremap <silent> <leader>pi :PackerInstall<CR>
let g:lmap.p.i = 'Install missing plugins'
" Performs PackerClean and then PackerUpdate
nnoremap <silent> <leader>ps :PackerSync<CR>
let g:lmap.p.s = 'Performs PackerClean and then PackerUpdate'
" Update your plugins
nnoremap <silent> <leader>pu :PackerUpdate<CR>
let g:lmap.p.u = 'Update your plugins'
"}}}

" Formatting Buffers--------------------------------------------------{{{
let g:lmap.o = {'name': 'Order Menu'}
" Sort by directory
nnoremap <silent> <leader>od :BufferOrderByDirectory<CR>
let g:lmap.o.d = 'Sort by directory'
" Sort by language
nnoremap <silent> <leader>ol :BufferOrderByLanguage<CR>
let g:lmap.o.l = 'Sort by language'
" Re-order buffer to next
nnoremap <silent> <leader>on :BufferMoveNext<CR>
let g:lmap.o.n = 'Re-order buffer to next'
" Re-order buffer to previous
nnoremap <silent> <leader>op :BufferMovePrevious<CR>
let g:lmap.o.p = 'Re-order buffer to previous'
"}}}

" Telescope---------------------------------------------------------{{{
let g:lmap.f = {'name': '+file'}
" Bookmarks
let g:lmap.f.b = 'Bookmarks'
" Find file
let g:lmap.f.f = 'Find file'
"" Find word
let g:lmap.f.g = 'Find word'
" Help tags
let g:lmap.f.t = 'Help Tags'
" Private Configuration
let g:lmap.f.P = 'Open Private Configuration'
" Private Configuration
let g:lmap.f.p = 'Open Project'
" Recently opened files
let g:lmap.f.r = 'Recently opened files'
"}}}

" Sessions---------------------------------------------------------{{{
let g:lmap.s = {'name': 'Session Menu'}
" Save session
let g:lmap.s.s = 'Save session'
" Load session
let g:lmap.s.l = 'Load session'
"}}}

" Git Menu---------------------------------------------------------{{{
let g:lmap.g = {'name': '+git'}
" Open LazyGit
nnoremap <silent> <leader>go :LazyGit<CR>
let g:lmap.g.o = 'Open LazyGit'
" Pull
nnoremap <silent> <leader>gP :TermExec cmd='git pull'<CR>
let g:lmap.g.P = 'Pull'
" Push
nnoremap <silent> <leader>gp :TermExec cmd='git push'<CR>
let g:lmap.g.p = 'Push'
" Status
nnoremap <silent> <leader>gs :TermExec cmd='git status'<CR>
let g:lmap.g.s = 'Status'
" Stage hunk
let g:lmap.g.S = 'Stage hunk'
" Undo stage hunk
let g:lmap.g.u = 'Undo stage hunk'
" Reset hunk
let g:lmap.g.r = 'Reset hunk'
" Reset buffer
let g:lmap.g.R = 'Reset buffer'
" Preview hunk
let g:lmap.g.h = 'Preview hunk'
" Blame line
let g:lmap.g.b = 'Blame line'
"}}}

" Toggles----------------------------------------------------------{{{
let g:lmap.t = {'name': '+toggle'}
" Terminal
let g:lmap.t.t = 'Terminal'
" Explorer
nnoremap <silent> <Leader>te :NvimTreeToggle<CR> 
let g:lmap.t.e = 'Tree Explorer'
" Toggle no search highlight
let g:lmap.t.h = "No highlight"
nnoremap <silent> <leader>tc :DashboardChangeColorscheme<CR>
let g:lmap.t.c = 'Change colorscheme'
" Open Start Screen
nnoremap <silent> <leader>ts :Dashboard<CR>
let g:lmap.t.s = 'Open start screen'
"}}}

" Which-Key Configs----------------------------------------------------------{{{

"Leader Key Maps Timeout let g:which_key_timeout = 100
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆', " ": 'SPC'}

" Map leader to which_key
"let g:which_key_map =  {}
""let g:which_key_sep = '→'

let g:lmap = g:which_key_map

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

call which_key#register('<Space>', "g:which_key_map")
