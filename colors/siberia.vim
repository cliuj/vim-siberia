" Name:         siberia
" Author:       jliu2179
" Maintainer:   jliu2179
" License:      MIT

highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'siberia'
set background=dark

" Color palette
" 
" *IMPORTANT*
" Please note for users that the following values from 0-15 are based on the
" 16 terminal colors that the author uses so some colors may or may not work
" on your own system unless you change the your own terminal colors to these.
" 
" The corresponding hex values are listed for editing/tweaking. And the names
" can be found here:
"
"    chir.ag/projects/name-that-color/
"
let s:clear               = ['NONE', 'NONE']
let s:black               = ['16'  , '#000000']
let s:DeepSkyBlue4        = ['24'  , '#005f87']
let s:Turquiose4          = ['30'  , '#008787']
let s:DarkCyan            = ['36'  , '#00af87']
let s:MediumSpringGreen   = ['49'  , '#00ffaf']
let s:SteelBlue           = ['67'  , '#5f87af']
let s:SteelBlue1          = ['81'  , '#5fd7ff']
let s:SkyBlue1            = ['117' , '#87afff']
let s:Chartreuse1         = ['118' , '#87ff5f']
let s:LightGreen          = ['119' , '#87ff5f']
let s:RosyBrown           = ['138' , '#af8787']
let s:LightCyan3          = ['152' , '#afd7d7']
let s:PaleTurquoise1      = ['159' , '#afffff']
let s:LightCyan1          = ['195' , '#d7ffff']
let s:Red1                = ['196' , '#ff0000']
let s:DeepPink1           = ['199' , '#ff00af']
let s:Magenta1            = ['201' , '#ff00ff']
let s:Yellow1             = ['226' , '#ffff00']
let s:White               = ['231' , '#ffffff']
let s:Grey11              = ['234' , '#1c1c1c']
let s:Grey58              = ['245' , '#8a8a8a']
let s:Grey93              = ['255' , '#eeeeee']

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
call s:highlight('Comment',                   s:Grey58,             s:clear,          s:italic    )
call s:highlight('Constant',                  s:White,              s:clear,          s:none      )
call s:highlight('String',                    s:PaleTurquoise1,     s:clear,          s:none      )
call s:highlight('Character',                 s:SteelBlue,          s:clear,          s:none      )
call s:highlight('Number',                    s:SteelBlue1,         s:clear,          s:none      )      
call s:highlight('Boolean',                   s:Yellow1,            s:clear,          s:none      )
call s:highlight('Float',                     s:SteelBlue1,         s:clear,          s:none      )
call s:highlight('Identifier',                s:White,              s:clear,          s:none      )
call s:highlight('Function',                  s:MediumSpringGreen,  s:clear,          s:none      )
call s:highlight('Statement',                 s:SteelBlue,          s:clear,          s:bold      )
call s:highlight('Conditional',               s:SkyBlue1,           s:clear,          s:bold      )
call s:highlight('Repeat',                    s:LightGreen,         s:clear,          s:bold      )
call s:highlight('Label',                     s:SkyBlue1,           s:clear,          s:bold      )       
call s:highlight('Operator',                  s:RosyBrown,          s:clear,          s:none      )
call s:highlight('Keyword',                   s:RosyBrown,          s:clear,          s:none      )
call s:highlight('Exception',                 s:Magenta1,           s:clear,          s:italic    )
call s:highlight('PreProc',                   s:Turquiose4,         s:clear,          s:italic    )
call s:highlight('Include',                   s:MediumSpringGreen,  s:clear,          s:italic    )
call s:highlight('Define',                    s:DarkCyan,           s:clear,          s:italic    )
call s:highlight('Macro',                     s:Chartreuse1,        s:clear,          s:italic    )
call s:highlight('PreCondit',                 s:MediumSpringGreen,  s:clear,          s:italic    )
call s:highlight('Type',                      s:SteelBlue,          s:clear,          s:bold      )
call s:highlight('StorageClass',              s:RosyBrown,          s:clear,          s:bold      )
call s:highlight('Structure',                 s:RosyBrown,          s:clear,          s:bold      )
call s:highlight('Typedef',                   s:RosyBrown,          s:clear,          s:bold      )
call s:highlight('Special',                   s:LightCyan1,         s:clear,          s:none      )
call s:highlight('SpecialChar',               s:SteelBlue,          s:clear,          s:none      )
call s:highlight('Delimiter',                 s:Grey58,             s:clear,          s:none      )
call s:highlight('SpecialComment',            s:Turquiose4,         s:clear,          s:none      )
call s:highlight('Debug',                     s:Red1,               s:clear,          s:none      )
call s:highlight('Underlined',                s:Turquiose4,         s:clear,          s:underline )
call s:highlight('Error',                     s:Red1,               s:clear,          s:underline )
call s:highlight('Todo',                      s:Yellow1,            s:clear,          s:none      )


" Interface highlighting
call s:highlight('Normal',                    s:clear,              s:Grey11,         s:none      )
call s:highlight('Visual',                    s:clear,              s:DeepSkyBlue4,   s:none      )
call s:highlight('Cursor',                    s:LightCyan1,         s:clear,          s:none      )
call s:highlight('LineNr',                    s:LightCyan3,         s:clear,          s:none      )
call s:highlight('CursorLineNr',              s:PaleTurquoise1,     s:clear,          s:italic    )


" Java syntax highlighting
call s:highlight('javaParen',                 s:PaleTurquoise1,     s:clear,          s:none      )
call s:highlight('javaCommentTitle',          s:Grey58,             s:clear,          s:none      )
call s:highlight('javaDocParam',              s:Grey58,             s:clear,          s:none      )
call s:highlight('javaDocTags',               s:Grey58,             s:clear,          s:none      )
call s:highlight('javaScopeDecl',             s:LightCyan1,         s:clear,          s:none      )
call s:highlight('javaStorageClass',          s:SteelBlue,          s:clear,          s:none      )


" Python syntax highlighting
call s:highlight('pythonFunction',            s:LightCyan1,         s:clear,          s:none      )
call s:highlight('pythonBuiltin',             s:LightCyan1,         s:clear,          s:italic    )


" Vimscript syntax highlighting
call s:highlight('vimOption',                 s:White,              s:clear,          s:none      )


" *NOTE*
"
" The following groups are plug specific and would require the following plugs
" from github in order for the groups to work.
"

" Elm syntax highlighting
" Requires plug: ElmCast/DarkCyan-vim
"
call s:highlight('DarkCyanTypeDef',           s:SteelBlue,          s:clear,          s:bold      )
call s:highlight('DarkCyanAlias',             s:LightCyan1,         s:clear,          s:none      )
call s:highlight('DarkCyanTopLevelDecl',      s:SkyBlue1,           s:clear,          s:bold      )
call s:highlight('DarkCyanBraces',            s:PaleTurquoise1,     s:clear,          s:none      )


" Elixir syntax highlighting
" Requires plug: elixir-editors/vim-elixir
"
call s:highlight('elixirAlias',               s:DarkCyan,           s:clear,          s:italic    )
call s:highlight('elixirDefine',              s:SteelBlue,          s:clear,          s:none      )
call s:highlight('elixirBlockDefinition',     s:SteelBlue,          s:clear,          s:none      )
call s:highlight('elixirFunctionDeclaration', s:LightCyan1,         s:clear,          s:none      )


" GOLang syntax highlighting
" Requires plug: fatih/vim-go
"
call s:highlight('goPackage',                 s:DarkCyan,           s:clear,          s:italic    )
call s:highlight('goImport',                  s:MediumSpringGreen,  s:clear,          s:italic    )


" Rust syntax highlighting
" Requires plug: rust-lang/rust.vim
"
call s:highlight('rustMacro',                 s:SteelBlue,         s:clear,           s:none      )
