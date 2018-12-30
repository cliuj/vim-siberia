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
let s:clear =               ['NONE', 'NONE']
let s:black =               ['0',   '#000000']
let s:white =               ['1',   '#ffffff']
let s:slate_gray =          ['2',   '#778189']
let s:light_cyan =          ['3',   '#d7ffff']
let s:slate_teal =          ['4',   '#00005f']
let s:light_green =         ['5',   '#87ff5f']
let s:rosy_brown =          ['6',   '#bca494']
let s:granite =             ['7',   '#8c9aa6']
let s:midnight_blue =       ['9',   '#082944']
let s:light_gray_blue =     ['10',  '#acd3e0']
let s:solitude =            ['11',  '#ecf5fe']
let s:alice_blue =          ['12',  '#f0f8ff']
let s:shamrock =            ['13',  '#2ed19b']
let s:elm =                 ['14',  '#1d956e']
let s:bismarck =            ['15',  '#467186']
let s:blue =                ['17',  '#00005f']
let s:steel_blue =          ['81',  '#5fd7ff']
let s:sky_blue =            ['117', '#87afff']
let s:light_green =         ['119', '#87ff5f']
let s:red =                 ['196', '#ff0000']
let s:deep_pink =           ['199', '#ff00af']
let s:magenta =             ['201', '#ff00ff']
let s:yellow =              ['226', '#ffff00']
let s:dark_gray =           ['234', '#1c1c1c']


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
call s:highlight('Comment',                   s:slate_gray,       s:clear,  s:italic)
call s:highlight('Constant',                  s:alice_blue,       s:clear,  s:none)
call s:highlight('String',                    s:light_cyan,       s:clear,  s:none)
call s:highlight('Character',                 s:bismarck,         s:clear,  s:none)
call s:highlight('Number',                    s:steel_blue,       s:clear,  s:none)      
call s:highlight('Boolean',                   s:yellow,           s:clear,  s:none)
call s:highlight('Float',                     s:steel_blue,       s:clear,  s:none)
call s:highlight('Identifier',                s:white,            s:clear,  s:none)
call s:highlight('Function',                  s:shamrock,         s:clear,  s:none)
call s:highlight('Statement',                 s:bismarck,         s:clear,  s:bold)
call s:highlight('Conditional',               s:sky_blue,         s:clear,  s:bold)
call s:highlight('Repeat',                    s:blue,             s:clear,  s:bold)
call s:highlight('Label',                     s:sky_blue,         s:clear,  s:bold)       
call s:highlight('Operator',                  s:rosy_brown,       s:clear,  s:none)
call s:highlight('Keyword',                   s:rosy_brown,      s:clear,  s:none)
call s:highlight('Exception',                 s:magenta,          s:clear,  s:italic)
call s:highlight('PreProc',                   s:slate_teal,       s:clear,  s:italic)
call s:highlight('Include',                   s:shamrock,         s:clear,  s:italic)
call s:highlight('Define',                    s:elm,              s:clear,  s:italic)
call s:highlight('Macro',                     s:light_green,      s:clear,  s:italic)
call s:highlight('PreCondit',                 s:shamrock,         s:clear,  s:italic)
call s:highlight('Type',                      s:bismarck,         s:clear,  s:bold)
call s:highlight('StorageClass',              s:rosy_brown,       s:clear,  s:bold)
call s:highlight('Structure',                 s:rosy_brown,       s:clear,  s:bold)
call s:highlight('Typedef',                   s:rosy_brown,       s:clear,  s:bold)
call s:highlight('Special',                   s:light_gray_blue,  s:clear,  s:none)
call s:highlight('SpecialChar',               s:bismarck,         s:clear,  s:none)
call s:highlight('Delimiter',                 s:slate_gray,       s:clear,  s:none)
call s:highlight('SpecialComment',            s:slate_teal,       s:clear,  s:none)
call s:highlight('Debug',                     s:red,              s:clear,  s:none)
call s:highlight('Underlined',                s:slate_teal,       s:clear,  s:underline)
call s:highlight('Error',                     s:red,              s:clear,  s:underline)
call s:highlight('Todo',                      s:yellow,           s:clear,  s:none)


" Interface highlighting
call s:highlight('Normal',                    s:clear,            s:dark_gray,   s:none)
call s:highlight('Visual',                    s:clear,            s:midnight_blue,    s:none)
call s:highlight('Cursor',                    s:light_gray_blue,  s:clear,            s:none)
call s:highlight('LineNr',                    s:granite,          s:clear,            s:none)
call s:highlight('CursorLineNr',              s:light_cyan,       s:clear,            s:italic)


" Java syntax highlighting
call s:highlight('javaParen',                 s:light_cyan,       s:clear, s:none)
call s:highlight('javaCommentTitle',          s:slate_gray,       s:clear, s:none)
call s:highlight('javaDocParam',              s:slate_gray,       s:clear, s:none)
call s:highlight('javaDocTags',               s:slate_gray,       s:clear, s:none)
call s:highlight('javaScopeDecl',             s:light_gray_blue,  s:clear, s:none)
call s:highlight('javaStorageClass',          s:bismarck,         s:clear, s:none)


" Python syntax highlighting
call s:highlight('pythonFunction',            s:light_gray_blue,  s:clear, s:none)
call s:highlight('pythonBuiltin',             s:light_gray_blue,  s:clear, s:italic)


" Vimscript syntax highlighting
call s:highlight('vimOption',                 s:alice_blue,       s:clear,  s:none)


" *NOTE*
"
" The following groups are plug specific and would require the following plugs
" from github in order for the groups to work.
"

" Elm syntax highlighting
" Requires plug: ElmCast/elm-vim
"
call s:highlight('elmTypeDef',                s:bismarck,         s:clear, s:bold)
call s:highlight('elmAlias',                  s:light_gray_blue,  s:clear, s:none)
call s:highlight('elmTopLevelDecl',           s:sky_blue,         s:clear, s:bold)
call s:highlight('elmBraces',                 s:light_cyan,       s:clear, s:none)


" Elixir syntax highlighting
" Requires plug: elixir-editors/vim-elixir
"
call s:highlight('elixirAlias',               s:elm,              s:clear, s:italic)
call s:highlight('elixirDefine',              s:bismarck,         s:clear, s:none)
call s:highlight('elixirBlockDefinition',     s:bismarck,         s:clear, s:none)
call s:highlight('elixirFunctionDeclaration', s:light_gray_blue,  s:clear, s:none)


" GOLang syntax highlighting
" Requires plug: fatih/vim-go
"
call s:highlight('goPackage',                 s:elm,              s:clear, s:italic)
call s:highlight('goImport',                  s:shamrock,         s:clear, s:italic)


" Rust syntax highlighting
" Requires plug: rust-lang/rust.vim
"
call s:highlight('rustMacro',                 s:bismarck,         s:clear, s:none)
