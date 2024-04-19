" Author: sapphirecat <devel@sapphirepaw.org>
" License: MIT
" garden.vim: a low-contrast green theme for GVim and truecolor terminals
" (256-color theme provided, but not recommended)

set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = 'garden'
let s:set_rainbow = {'gui': 0, 'term': 0}

function s:resetGarden()
    if s:set_rainbow.gui
        unlet g:rainbow_conf.guifgs
        let s:set_rainbow.gui = 0
    endif
    if s:set_rainbow.term
        unlet g:rainbow_conf.ctermfgs
        let s:set_rainbow.term = 0
    endif
endfunction


hi Normal       gui=none      guifg=#ffffff   guibg=#394732     cterm=none      ctermfg=231  ctermbg=239
hi Visual                                     guibg=#2c301f                                  ctermbg=235

hi NonText      gui=none      guifg=#b0809c                     cterm=none      ctermfg=139
hi EndOfBuffer  gui=none      guifg=#7a5a6c                     cterm=none      ctermfg=96
hi SpecialKey   gui=bold      guifg=#81827d                     cterm=bold      ctermfg=245
hi Directory    gui=none      guifg=#8ff8c7                     cterm=none      ctermfg=122
hi ErrorMsg     gui=none      guifg=#fafafa   guibg=#af4440     cterm=none      ctermfg=231  ctermbg=131
hi WarningMsg   gui=bold      guifg=#d59a72                     cterm=bold      ctermfg=173
hi MoreMsg      gui=none      guifg=#c2efa9                     cterm=none      ctermfg=156
hi Question     gui=none      guifg=#c2efa9                     cterm=none      ctermfg=156

hi StatusLine   gui=bold      guifg=#ffffff   guibg=#3d6f58     cterm=bold      ctermfg=231  ctermbg=72
hi StatusLineNC gui=none      guifg=#a8b7aa   guibg=#3a5640     cterm=none      ctermfg=145  ctermbg=238
hi VertSplit    gui=none      guifg=#a8b7aa   guibg=#3a5640     cterm=none      ctermfg=145  ctermbg=238
hi TabLine      gui=none      guifg=#a8b7aa   guibg=#3a5640     cterm=none      ctermfg=254  ctermbg=238
hi TabLineSel   gui=bold      guifg=#ffffff   guibg=#3d6f58     cterm=bold      ctermfg=231  ctermbg=101
hi TabLineFill  gui=none      guifg=#a8b7aa   guibg=#3a5640     cterm=none      ctermfg=254  ctermbg=237

hi Search       gui=none      guifg=#171910   guibg=#bedc82     cterm=none      ctermfg=233  ctermbg=150
hi Title        gui=none      guifg=#c7e475                     cterm=none      ctermfg=149
hi Todo         gui=bold      guifg=#c6e05f   guibg=NONE        cterm=bold      ctermfg=149  ctermbg=NONE

hi Folded       gui=none      guifg=#f1f5ee   guibg=#436049     cterm=none      ctermfg=255  ctermbg=240
hi FoldColumn   gui=none      guifg=#f1f5ee   guibg=#362a20     cterm=none      ctermfg=255  ctermbg=236
hi SignColumn   gui=none      guifg=#f5f5f5   guibg=#362a20     cterm=none      ctermfg=255  ctermbg=236
hi LineNr       gui=none      guifg=#cd9197   guibg=#362a20     cterm=none      ctermfg=174  ctermbg=236
hi CursorLineNR gui=none      guifg=#feb8aa   guibg=#271e16     cterm=none      ctermfg=217  ctermbg=234
hi CursorLine                                 guibg=#282b1b     cterm=none                   ctermbg=235
hi CursorColumn                               guibg=#282b1b                                  ctermbg=235
hi ColorColumn                                guibg=#4e5c46                                  ctermbg=240

hi DiffAdd      gui=none      guifg=#10050b   guibg=#c3f8c0     cterm=none      ctermfg=233  ctermbg=157
hi DiffChange   gui=none      guifg=#10050b   guibg=#eedcc4     cterm=none      ctermfg=233  ctermbg=223
hi DiffDelete   gui=none      guifg=#10050b   guibg=#cd9197     cterm=none      ctermfg=233  ctermbg=174
hi DiffText     gui=bold      guifg=#000000   guibg=#f8edf7     cterm=bold      ctermfg=16   ctermbg=225

hi Pmenu        gui=none      guifg=#fffcfe   guibg=#503b4a     cterm=none      ctermfg=231  ctermbg=238
hi PmenuSel     gui=none      guifg=#fffcfe   guibg=#3e2637     cterm=none      ctermfg=231  ctermbg=236
hi PmenuSbar    gui=none      guifg=#fffcfe   guibg=#271b24     cterm=none      ctermfg=231  ctermbg=235
hi PmenuThumb   gui=none      guifg=#fffcfe   guibg=#655761     cterm=none      ctermfg=231  ctermbg=59
hi WildMenu     gui=bold      guifg=#10050b   guibg=#a5d5bd     cterm=bold      ctermfg=233  ctermbg=115

hi MatchParen                                 guibg=#877078                                  ctermbg=244
hi Comment      gui=none      guifg=#e6d8bc                     cterm=none      ctermfg=187
hi Constant     gui=none      guifg=#aeea8e                     cterm=none      ctermfg=156
hi Identifier   gui=none      guifg=#c99a8f                     cterm=none      ctermfg=174
hi Function     gui=none      guifg=#96d1f2                     cterm=none      ctermfg=116
hi Statement    gui=none      guifg=#fdfeb3                     cterm=bold      ctermfg=229
hi PreProc      gui=none      guifg=#fedd65                     cterm=none      ctermfg=221
hi Type         gui=none      guifg=#ffcb94                     cterm=none      ctermfg=222
hi Special      gui=none      guifg=#80d9a9                     cterm=none      ctermfg=115
hi Underlined   gui=underline guifg=NONE                        cterm=underline ctermfg=NONE
hi Error        gui=none      guifg=#fffffc   guibg=#ca4d37     cterm=none      ctermfg=231  ctermbg=131

hi SpellBad     gui=undercurl       guisp=#ffb7ac                               ctermfg=16   ctermbg=217
hi SpellCap     gui=undercurl       guisp=#81b471                               ctermfg=16   ctermbg=71
hi SpellLocal   gui=undercurl       guisp=#b6fde1                               ctermfg=16   ctermbg=158
hi SpellRare    gui=undercurl       guisp=#786472                               ctermfg=231  ctermbg=242

hi GitGutterAdd             gui=none        guifg=#c3f8c0   guibg=#362a20   cterm=none        ctermfg=157  ctermbg=236
hi GitGutterChange          gui=none        guifg=#eedcc4   guibg=#362a20   cterm=none        ctermfg=223  ctermbg=236
hi GitGutterDelete          gui=none        guifg=#cd9197   guibg=#362a20   cterm=none        ctermfg=174  ctermbg=236
hi GitGutterChangeDelete    gui=none        guifg=#eedcc4   guibg=#362a20   cterm=none        ctermfg=225  ctermbg=236

" Set colors for luochen1990/rainbow, if it is configured
if exists('g:rainbow_active')
    let g:rainbow_conf = get(g:, 'rainbow_conf', {})
    if len(get(g:rainbow_conf, 'guifgs', [])) == 0
        let g:rainbow_conf.guifgs = ['#e69ecb', '#80e98a', '#ead15e', '#b7aee6']
        let s:set_rainbow.gui = 1
    endif
    if len(get(g:rainbow_conf, 'ctermfgs', [])) == 0
        let g:rainbow_conf.ctermfgs = [175, 114, 179, 146]
        let s:set_rainbow.term = 1
    endif

    if s:set_rainbow.gui || s:set_rainbow.term
        augroup GardenRainbowReset
            autocmd ColorSchemePre * ++once call s:resetGarden()
        augroup END
    endif
endif

" vim:sts=4:sw=4:et
