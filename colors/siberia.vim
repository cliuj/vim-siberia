" Name:         siberia
" Author:       jliu2179/cliuj
" Maintainer:   jliu2179/cliuj
" License:      MIT

highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'siberia'
set background=dark

" Color palette
let s:clear               = ['NONE', 'NONE']
let s:Silver = ['7', '#c0c0c0']
let s:Red = ['9', '#ff0000']
let s:White = ['15', '#ffffff']
let s:DeepSkyBlue4 = ['24', '#005f87']
let s:MediumPurple4 = ['60', '#5f5f87']
let s:SteelBlue = ['67', '#5f87af']
let s:CadetBlue = ['73', '#5fafaf']
let s:SkyBlue3 = ['74', '#5fafd7']
let s:LightSkyBlue3 = ['109', '#87afaf']
let s:MediumPurple2 = ['23', '#af5fff']
let s:RosyBrown = ['138', '#af8787']
let s:OrangeRed1 = ['202', '#ff5f00']
let s:Grey7 = ['232', '#121212']
let s:Grey15 = ['235', '#262626']
let s:Grey27 = ['238', '#444444']
let s:Grey46 = ['243', '#767676']
let s:Grey85 = ['253', '#dadada']

" Text style 
let s:italic    = 'italic'
let s:bold      = 'bold'
let s:underline = 'underline'
let s:none      = 'NONE'

" Helper function to set up highlight executions
function! s:highlight(group, fg, bg, style)
  exec  "highlight "  . a:group
    \ . " ctermfg="   . a:fg[0]
    \ . " ctermbg="   . a:bg[0]
    \ . " cterm="     . a:style
    \ . " guifg="     . a:fg[1]
    \ . " guibg="     . a:bg[1]
    \ . " gui="       . a:style
endfunction

" Syntax highlighting groups
"
" For reference on what each group does, please refer to this:
" vimdoc.sourceforge.net/htmldoc/syntax.html
"
call s:highlight('Comment', s:Grey27, s:clear, s:italic)
call s:highlight('Constant', s:SkyBlue3, s:clear, s:none)
call s:highlight('String', s:MediumPurple4, s:clear, s:italic)
call s:highlight('Character', s:MediumPurple2, s:clear, s:none)
call s:highlight('Number', s:OrangeRed1, s:clear, s:none)
call s:highlight('Boolean', s:MediumPurple2, s:clear, s:none)
call s:highlight('Float', s:OrangeRed1, s:clear, s:none)
call s:highlight('Identifier', s:SteelBlue, s:clear, s:bold)
call s:highlight('Function', s:CadetBlue, s:clear, s:bold)
call s:highlight('Statement', s:LightSkyBlue3, s:clear, s:bold)
call s:highlight('Conditional', s:MediumPurple2, s:clear, s:bold)
call s:highlight('Repeat', s:SkyBlue3, s:clear, s:bold)
call s:highlight('Label', s:LightSkyBlue3, s:clear, s:bold)
call s:highlight('Operator', s:RosyBrown, s:clear, s:bold)
call s:highlight('Keyword', s:LightSkyBlue3, s:clear, s:bold)
call s:highlight('Exception', s:OrangeRed1, s:clear, s:bold)
call s:highlight('PreProc', s:LightSkyBlue3, s:clear, s:none)
call s:highlight('Define', s:SkyBlue3, s:clear, s:none)
call s:highlight('Macro', s:SkyBlue3, s:clear, s:none)
call s:highlight('Type', s:SkyBlue3, s:clear, s:bold)
call s:highlight('PreCondit', s:LightSkyBlue3, s:clear, s:none)
call s:highlight('StorageClass', s:SteelBlue, s:clear, s:bold)
call s:highlight('Structure', s:SteelBlue, s:clear, s:bold)
call s:highlight('Typedef', s:LightSkyBlue3, s:clear, s:bold)
call s:highlight('Special', s:RosyBrown, s:clear, s:none)
call s:highlight('SpecialChar', s:LightSkyBlue3, s:clear, s:none)
call s:highlight('Tag', s:LightSkyBlue3, s:clear, s:none)
call s:highlight('Delimiter', s:RosyBrown, s:clear, s:none)
call s:highlight('SpecialComment', s:Silver, s:clear, s:bold)
call s:highlight('Debug', s:Red, s:clear, s:italic)
call s:highlight('Underlined', s:SkyBlue3, s:clear, s:underline)
call s:highlight('Ignore', s:Grey27, s:clear, s:none)
call s:highlight('Error', s:Red, s:clear, s:underline)
call s:highlight('Todo', s:OrangeRed1, s:clear, s:underline)

" Interface highlighting
call s:highlight('Normal',      s:Silver,         s:Grey7,    s:none)
call s:highlight('Visual',      s:clear,          s:Grey15,   s:none)
call s:highlight('LineNr',      s:Grey27,         s:clear,    s:none)
