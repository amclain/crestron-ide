" Vim color file
" Maintainer:	Alex McLain <alex@alexmclain.com>
" Last Change:	2012 Dec 11

hi clear

let colors_name = "crestron"

" Normal should come first
hi Normal     guifg=Black  guibg=White
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=NONE   guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
" hi DiffAdd    ctermbg=LightBlue    guibg=LightBlue
" hi DiffChange ctermbg=LightMagenta guibg=LightMagenta
" hi DiffDelete ctermfg=Blue	   ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan
" hi DiffText   ctermbg=Red	   cterm=bold gui=bold guibg=Red
" hi Directory  ctermfg=DarkBlue	   guifg=Blue
" hi ErrorMsg   ctermfg=White	   ctermbg=DarkRed  guibg=Red	    guifg=White
" hi FoldColumn ctermfg=DarkBlue	   ctermbg=Grey     guibg=Grey	    guifg=DarkBlue
" hi Folded     ctermbg=Grey	   ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
" hi IncSearch  cterm=reverse	   gui=reverse
" hi LineNr     ctermfg=Brown	   guifg=Brown
" hi ModeMsg    cterm=bold	   gui=bold
" hi MoreMsg    ctermfg=DarkGreen    gui=bold guifg=SeaGreen
" hi NonText    ctermfg=Blue	   gui=bold guifg=gray guibg=white
" hi Pmenu      guibg=LightBlue
" hi PmenuSel   ctermfg=White	   ctermbg=DarkBlue  guifg=White  guibg=DarkBlue
" hi Question   ctermfg=DarkGreen    gui=bold guifg=SeaGreen
" hi Search     ctermfg=NONE	   ctermbg=Yellow guibg=Yellow guifg=NONE
" hi SpecialKey ctermfg=DarkBlue	   guifg=Blue
" hi StatusLine cterm=bold	   ctermbg=blue ctermfg=yellow guibg=gold guifg=blue
" hi StatusLineNC	cterm=bold	   ctermbg=blue ctermfg=black  guibg=gold guifg=blue
" hi Title      ctermfg=DarkMagenta  gui=bold guifg=Magenta
" hi VertSplit  cterm=reverse	   gui=reverse
" hi Visual     ctermbg=NONE	   cterm=reverse gui=reverse guifg=Grey guibg=fg
" hi VisualNOS  cterm=underline,bold gui=underline,bold
" hi WarningMsg ctermfg=DarkRed	   guifg=Red
" hi WildMenu   ctermfg=Black	   ctermbg=Yellow    guibg=Yellow guifg=Black

" syntax highlighting
hi Comment    cterm=NONE ctermfg=DarkGreen		gui=NONE guifg=DarkGreen
hi Constant   cterm=NONE ctermfg=DarkBlue		gui=NONE guifg=DarkBlue
hi Identifier cterm=NONE ctermfg=Blue			gui=NONE guifg=blue
hi Statement  cterm=NONE ctermfg=Blue			gui=NONE guifg=blue
hi PreProc    cterm=NONE ctermfg=Blue			gui=NONE guifg=blue
hi Type	      cterm=NONE ctermfg=Blue			gui=NONE guifg=blue
hi Special    cterm=NONE ctermfg=Blue			gui=NONE guifg=deeppink

