   " Dashboard
    let g:dashboard_session_directory = '/home/gustavo/.config/nvim/.sessions'
    let g:dashboard_default_executive = 'telescope'
    let g:dashboard_custom_shortcut = {
                \ 'last_session'       : 'SPC s l',
                \ 'find_history'       : 'SPC f h',
                \ 'find_file'          : 'SPC f f',
                \ 'new_file'           : 'SPC c n',
                \ 'change_colorscheme' : 'SPC t c',
                \ 'find_word'          : 'SPC f a',
                \ 'book_marks'         : 'SPC f b',
                \ }
    let plugins_count = len(globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1))
    let g:dashboard_custom_footer = [
                \ 'Doom Nvim loaded '.plugins_count.' plugins'
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


    " Header color
    hi! dashboardHeader   guifg=#586268
    hi! dashboardCenter   guifg=#51afef
    hi! dashboardShortcut guifg=#9788b9
    hi! dashboardFooter   guifg=#586268
