" MIT License. Copyright (c) 2013-2021 Bailey Ling et al.
" vim: et ts=8 sts=4 sw=4 tw=80
" This file authored by sapphirecat, based on Airline's dark theme, which had
" the above copyright notice.

scriptencoding utf-8

let s:palette = {}

" We plan to have B-Z sections in one colorway, and change A on the mode,
" similar to catppuccin/vim.
function s:replace_a(palette, color_a)
    let d = copy(a:palette)
    let d.airline_a = a:color_a
    return d
endfunction

" color sets, based on StatusLine
let s:a_normal      = [ '#ffffff', '#3d6f58', 231, 36 ]
let s:b_normal      = [ '#ffffff', '#345948', 231, 23 ]
let s:c_normal      = [ '#eeeeee', '#294035', 255, 236, 'none' ]
let s:c_mod_normal  = [ '#93c4ea', '#294035', 110, 236, 'bold' ]

" note the reverse-video effect for paste modes w/ insert and replace
let s:a_insert      = [ '#000000', '#c6e05f',     16,  149 ]
let s:a_ins_paste   = [ '#e0ea94', s:a_insert[0], 186, s:a_insert[2], '' ]

let s:a_replace     = [ s:a_insert[0], '#ffc344',       s:a_insert[2],  221 ]
let s:a_repl_paste  = [ s:a_replace[1], s:a_replace[0], s:a_replace[3], s:a_replace[2] ]

let s:a_visual      = [ '#ffffff', '#2c301f', 231, 235, '' ]

let s:a_cmd         = [ s:a_normal[0], '#322849', s:a_normal[2], 97 ]

" This set is based on StatusLineNC, of course
let s:a_inactive    = [ '#8a8a8a', '#263027', 239, 234, '' ]
let s:b_inactive    = [ '#8f8f8f', '#324134', 239, 235, '' ]
let s:c_inactive    = [ '#9a9a9a', '#3a5640', 239, 236, '' ]
let s:c_mod_inact   = [ '#7edcc4', '',        117, '',  '' ]


" Directly set some optional colors
if get(g:, 'loaded_ctrlp', 0)
    " ctrlp colors based on Pmenu
    let s:palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
                \ [ '#fffcfe', '#291b24', 231, 235, ''     ],
                \ [ '#fffcfe', '#3e2637', 231, 236, ''     ],
                \ [ '#fffcfe', '#503b4a', 231, 238, 'bold' ])
endif

let s:palette.accents = {
            \ 'red': [ '#f36565' , '' , 167 , ''  ]
            \ }


" apply color sets to palette entries
let s:palette.normal = airline#themes#generate_color_map(s:a_normal, s:b_normal, s:c_normal)
let s:palette.normal_modified = { 'airline_c': s:c_mod_normal }

let s:palette.insert = s:replace_a(s:palette.normal, s:a_insert)
let s:palette.insert_paste = s:replace_a(s:palette.insert, s:a_ins_paste)
let s:palette.insert_modified = s:palette.normal_modified

let s:palette.terminal = s:palette.insert

let s:palette.replace = s:replace_a(s:palette.normal, s:a_replace)
let s:palette.replace_paste = s:replace_a(s:palette.replace, s:a_repl_paste)
let s:palette.replace_modified = s:palette.normal_modified

let s:palette.visual = s:replace_a(s:palette.normal, s:a_visual)
let s:palette.visual_modified = s:palette.normal_modified

let s:palette.commandline = s:replace_a(s:palette.normal, s:a_cmd)

let s:palette.inactive = airline#themes#generate_color_map(s:a_inactive, s:b_inactive, s:c_inactive)
let s:palette.inactive_modified = { 'airline_c': s:c_mod_inact }


" done: publish the finished object
let g:airline#themes#garden#palette = s:palette
