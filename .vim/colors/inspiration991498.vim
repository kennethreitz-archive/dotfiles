" Generated by Inspiration at Sweyla
" http://inspiration.sweyla.com/code/seed/991498/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "inspiration991498"

if version >= 700
  hi CursorLine     guibg=#0E0000 ctermbg=16
  hi CursorColumn   guibg=#0E0000 ctermbg=16
  hi MatchParen     guifg=#FF2700 guibg=#0E0000 gui=bold ctermfg=196 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#EDB545 ctermfg=255 ctermbg=215
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#0E0000 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#1D0F0F gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#FFFFFF guibg=#271919 gui=none ctermfg=255 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#3A240D gui=italic ctermfg=255 ctermbg=235 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#362828 gui=none ctermfg=255 ctermbg=235 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#271919 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#0E0000 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#EDB545 guibg=NONE	gui=bold ctermfg=215 ctermbg=NONE cterm=bold
hi Visual           guifg=#E6B4B3 guibg=#323232 gui=none ctermfg=181 ctermbg=236 cterm=none
hi SpecialKey       guifg=#D9FF02 guibg=#1D0F0F gui=none ctermfg=190 ctermbg=233 cterm=none
"hi DiffChange       guibg=#564C00 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#2F254C gui=none ctermbg=236 cterm=none
"hi DiffText         guibg=#6E3266 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#4A0000 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#FFFFD7 gui=bold ctermfg=230 cterm=bold


" Syntax highlighting
hi Comment guifg=#EDB545 gui=none ctermfg=215 cterm=none
hi Constant guifg=#D9FF02 gui=none ctermfg=190 cterm=none
hi Number guifg=#D9FF02 gui=none ctermfg=190 cterm=none
hi Identifier guifg=#FF5E2C gui=none ctermfg=202 cterm=none
hi Statement guifg=#FF2700 gui=none ctermfg=196 cterm=none
hi Function guifg=#FF9732 gui=none ctermfg=209 cterm=none
hi Special guifg=#EE1800 gui=none ctermfg=196 cterm=none
hi PreProc guifg=#EE1800 gui=none ctermfg=196 cterm=none
hi Keyword guifg=#FF2700 gui=none ctermfg=196 cterm=none
hi String guifg=#E6B4B3 gui=none ctermfg=181 cterm=none
hi Type guifg=#FF2A6C gui=none ctermfg=197 cterm=none
hi pythonBuiltin guifg=#FF5E2C gui=none ctermfg=202 cterm=none
hi TabLineFill guifg=#644847 gui=none ctermfg=239 cterm=none

