let g:dashboard_session_directory = $HOME..'/.config/nvim/.sessions'
let g:dashboard_default_executive = 'telescope'
let plugins_count = len(globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1))

let g:dashboard_custom_footer = [
                \ 'Doom loaded '.plugins_count.' packages' 
                \]
    let g:dashboard_custom_header = [
                \ "=================     ===============     ===============   ========  ========",
                \ "\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
                \ "||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
                \ "|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
                \ "||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
                \ "|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
                \ "||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
                \ "|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
                \ "||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
                \ "||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
                \ "||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
                \ "||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
                \ "||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
                \ "||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
                \ "||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||",
                \ "||.=='    _-'                                                     `' |  /==.||",
                \ "=='    _-'                        N E O V I M                         \\/   `==",
                \ "\\   _-'                                                                `-_   /",
                \ " `''                                                                      ``'  ",
                \ "                                                                               ",
                \ ]

lua  << EOF
vim.g.dashboard_custom_section = {
    a = {description = {'  Reload Last Session            SPC q l'}, command = 'SessionLoad'},
    b = {description = {'  Recently Opened Files          SPC f r'}, command = 'Telescope oldfiles'},
    c = {description = {'  Open Project                   SPC f p'}, command = 'Telescope marks'},
    d = {description = {'  Jump to Bookmark               SPC f b'}, command = 'Telescope project'},
    e = {description = {'  Find File                      SPC f f'}, command = 'Telescope find_files'},
    f = {description = {'  Find Word                      SPC s p'}, command = 'Telescope live_grep'},
    g = {description = {'  Open Private Configuration     SPC f P'}, command = ':e ~/.config/nvim/lua/doom-settings.lua'},
}
EOF

lua << EOF
vim.g.dashboard_custom_shortcut = {
     e = 'SPC f p',
     a = 'f',
     b = 'SPC f a',
     last_session = 'SPC s l',
     new_file = 'SPC c n',
     book_marks = 'SPC f b'
 }
EOF
    " Header color
    hi! dashboardHeader   guifg=#586268
    hi! dashboardCenter   guifg=#51afef
    hi! dashboardShortcut guifg=#9788b9
    hi! dashboardFooter   guifg=#586268
