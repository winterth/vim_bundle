" 本配色方案由 gui2term.py 程序增加彩色终端支持。
" Vim color file
" Maintainer:   Mingbai <mbbill AT gmail DOT com>
" Last Change:  2006-12-24 20:09:09

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="desertEx"

hi Normal	guifg=gray guibg=grey17 gui=none ctermfg=250 ctermbg=235 cterm=none

" AlignCtrl default
" AlignCtrl =P0 guifg guibg gui
" Align

" highlight groups
hi Cursor       guifg=black          guibg=yellow   gui=none ctermfg=16 ctermbg=226 cterm=none
hi ErrorMsg     guifg=white          guibg=red      gui=none ctermfg=231 ctermbg=196 cterm=none
hi VertSplit    guifg=gray40         guibg=gray40   gui=none ctermfg=241 ctermbg=241 cterm=none
hi Folded       guifg=DarkSlateGray3 guibg=grey30   gui=none ctermfg=116 ctermbg=239 cterm=none
hi FoldColumn   guifg=tan            guibg=grey30   gui=none ctermfg=180 ctermbg=239 cterm=none
hi IncSearch    guifg=#b0ffff        guibg=#2050d0 ctermfg=159 ctermbg=26 cterm=none
hi LineNr       guifg=burlywood3     gui=none ctermfg=180 ctermbg=235 cterm=none
hi ModeMsg      guifg=SkyBlue        gui=none ctermfg=117 ctermbg=235 cterm=none
hi MoreMsg      guifg=SeaGreen       gui=none ctermfg=72 ctermbg=235 cterm=none
hi NonText      guifg=cyan           gui=none ctermfg=51 ctermbg=235 cterm=none
hi Question     guifg=springgreen    gui=none ctermfg=48 ctermbg=235 cterm=none
hi Search       guifg=gray80         guibg=#445599  gui=none ctermfg=252 ctermbg=61 cterm=none
hi SpecialKey   guifg=cyan           gui=none ctermfg=51 ctermbg=235 cterm=none
hi StatusLine   guifg=black          guibg=#c2bfa5  gui=bold ctermfg=16 ctermbg=187 cterm=bold
hi StatusLineNC guifg=grey           guibg=gray40   gui=none ctermfg=250 ctermbg=241 cterm=none
hi Title        guifg=indianred      gui=none ctermfg=167 ctermbg=235 cterm=none
hi Visual       guifg=gray17         guibg=tan1     gui=none ctermfg=235 ctermbg=215 cterm=none
hi WarningMsg   guifg=salmon         gui=none ctermfg=210 ctermbg=235 cterm=none
hi Pmenu        guifg=white          guibg=#445599  gui=none ctermfg=231 ctermbg=61 cterm=none
hi PmenuSel     guifg=#445599        guibg=gray ctermfg=61 ctermbg=250 cterm=none
hi WildMenu     guifg=gray           guibg=gray17   gui=none ctermfg=250 ctermbg=235 cterm=none
hi MatchParen	guifg=cyan           guibg=NONE     gui=bold ctermfg=51 ctermbg=235 cterm=bold
hi DiffAdd      guifg=black          guibg=wheat1 ctermfg=16 ctermbg=223 cterm=none
hi DiffChange   guifg=black          guibg=skyblue1 ctermfg=16 ctermbg=117 cterm=none
hi DiffText     guifg=black          guibg=hotpink1  gui=none ctermfg=16 ctermbg=205 cterm=none
hi DiffDelete   guibg=gray45         guifg=black     gui=none ctermfg=16 ctermbg=243 cterm=none



" syntax highlighting groups
hi Comment      guifg=PaleGreen3     gui=italic ctermfg=114 ctermbg=235 cterm=NONE
hi Constant     guifg=salmon         gui=none ctermfg=210 ctermbg=235 cterm=none
hi Identifier   guifg=Skyblue        gui=none ctermfg=117 ctermbg=235 cterm=none
hi Function     guifg=Skyblue        gui=none ctermfg=117 ctermbg=235 cterm=none
hi Statement    guifg=lightgoldenrod2 gui=none ctermfg=228 ctermbg=235 cterm=none
hi PreProc      guifg=PaleVioletRed2 gui=none ctermfg=211 ctermbg=235 cterm=none
hi Type         guifg=tan1           gui=none ctermfg=215 ctermbg=235 cterm=none
hi Special      guifg=aquamarine2    gui=none ctermfg=122 ctermbg=235 cterm=none
hi Ignore       guifg=grey40         gui=none ctermfg=241 ctermbg=235 cterm=none
hi Todo         guifg=orangered      guibg=yellow2 gui=none ctermfg=202 ctermbg=226 cterm=none

" color terminal definitions
hi SpecialKey   ctermfg=darkgreen
hi NonText      cterm=bold           ctermfg=darkblue
hi Directory    ctermfg=darkcyan
hi ErrorMsg     cterm=bold           ctermfg=7        ctermbg=1
hi IncSearch    cterm=NONE           ctermfg=yellow   ctermbg=green
hi Search       cterm=NONE           ctermfg=grey     ctermbg=blue
hi MoreMsg      ctermfg=darkgreen
hi ModeMsg      cterm=NONE           ctermfg=brown
hi LineNr       ctermfg=3
hi Question     ctermfg=green
hi StatusLine   cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit    cterm=reverse
hi Title        ctermfg=5
hi Visual       cterm=reverse
hi VisualNOS    cterm=bold,underline
hi WarningMsg   ctermfg=1
hi WildMenu     ctermfg=0            ctermbg=3
hi Folded       ctermfg=darkgrey     ctermbg=NONE
hi FoldColumn   ctermfg=darkgrey     ctermbg=NONE
hi DiffAdd      ctermbg=4
hi DiffChange   ctermbg=5
hi DiffDelete   cterm=bold           ctermfg=4        ctermbg=6
hi DiffText     cterm=bold           ctermbg=1
hi Comment      ctermfg=darkcyan
hi Constant     ctermfg=brown
hi Special      ctermfg=5
hi Identifier   ctermfg=6
hi Statement    ctermfg=3
hi PreProc      ctermfg=5
hi Type         ctermfg=2
hi Underlined   cterm=underline      ctermfg=5
hi Ignore       ctermfg=darkgrey
hi Error        cterm=bold           ctermfg=7        ctermbg=1
