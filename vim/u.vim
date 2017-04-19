" vim:sw=8:ts=8

hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "u"

hi Normal       cterm=NONE          ctermbg=NONE    ctermfg=NONE
hi SpecialKey   cterm=bold                          ctermfg=NONE
hi IncSearch    cterm=reverse                       ctermfg=NONE
hi Search       cterm=reverse                       ctermfg=NONE
hi MoreMsg      cterm=bold                          ctermfg=NONE
hi ModeMsg      cterm=bold                          ctermfg=NONE
hi LineNr       cterm=NONE                          ctermfg=6
hi StatusLine   cterm=NONE          ctermbg=5       ctermfg=0
hi StatusLineNC cterm=NONE          ctermbg=6       ctermfg=0
hi VertSplit    cterm=reverse                       ctermfg=NONE
hi Title        cterm=bold                          ctermfg=NONE
hi Visual       cterm=NONE         ctermbg=0        ctermfg=15
hi VisualNOS    cterm=NONE         ctermbg=0        ctermfg=15
hi WarningMsg   cterm=standout                      ctermfg=NONE
hi WildMenu     cterm=standout                      ctermfg=NONE
hi Folded       cterm=standout                      ctermfg=NONE
hi FoldColumn   cterm=standout                      ctermfg=NONE
hi SignColumn   cterm=NONE          ctermbg=NONE    ctermfg=3
hi DiffLine     cterm=NONE                          ctermfg=4
hi DiffAdded    cterm=NONE                          ctermfg=2
hi DiffRemoved  cterm=NONE                          ctermfg=1
hi DiffText     cterm=reverse                       ctermfg=NONE
hi Keyword      cterm=NONE          ctermbg=NONE    ctermfg=NONE
hi Number       cterm=NONE          ctermbg=NONE    ctermfg=3
hi Char         cterm=NONE          ctermbg=NONE    ctermfg=NONE
hi Format       cterm=NONE          ctermbg=NONE    ctermfg=NONE
hi Special      cterm=NONE          ctermbg=NONE    ctermfg=5
hi Constant     cterm=NONE          ctermbg=NONE    ctermfg=NONE
hi Directive    cterm=NONE          ctermbg=NONE    ctermfg=NONE
hi Comment      cterm=NONE          ctermbg=NONE    ctermfg=8
hi Func         cterm=NONE          ctermbg=NONE    ctermfg=2
hi Type         cterm=NONE          ctermbg=NONE    ctermfg=2
hi Identifier   cterm=NONE          ctermbg=NONE    ctermfg=NONE
hi PreProc      cterm=NONE                          ctermfg=2
hi Statement    cterm=NONE          ctermbg=NONE    ctermfg=2
hi Conditional  cterm=NONE          ctermbg=NONE    ctermfg=2
hi Noise        cterm=NONE          ctermbg=NONE    ctermfg=8
hi Ignore       cterm=bold                          ctermfg=NONE
hi String       cterm=NONE                          ctermfg=4
hi ErrorMsg     cterm=reverse       ctermbg=15      ctermfg=9
hi Error        cterm=reverse       ctermbg=15      ctermfg=9
hi Todo         cterm=bold,standout ctermbg=0       ctermfg=11
hi MatchParen   cterm=bold          ctermbg=250     ctermfg=NONE
hi ColorColumn                      ctermbg=250

" Helper for determining highlight group under cursor when developing theme
" map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
