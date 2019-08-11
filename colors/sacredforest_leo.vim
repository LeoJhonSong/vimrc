" Vim color file - sacredforest_leo
" Generated by http://bytefluent.com/vivify 2019-08-11
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "sacredforest_leo"

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#ffebc3 guibg=#3c4c55 guisp=#3c4c55 gui=NONE ctermfg=223 ctermbg=66 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi VisualNOS -- no settings --
"hi EnumerationName -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi Underlined -- no settings --
"hi htmltag -- no settings --
"hi htmlspecialtagname -- no settings --
"hi helpnormal -- no settings --
"hi helpleadblank -- no settings --
"hi clear -- no settings --
"hi htmlendtag -- no settings --
hi IncSearch guifg=#3c4c55 guibg=#ffbf00 guisp=#ffbf00 gui=NONE ctermfg=66 ctermbg=214 cterm=NONE
hi WildMenu guifg=#616c72 guibg=#ffebc3 guisp=#ffebc3 gui=NONE ctermfg=243 ctermbg=223 cterm=NONE
hi SignColumn guifg=NONE guibg=#616c72 guisp=#616c72 gui=NONE ctermfg=NONE ctermbg=243 cterm=NONE
hi SpecialComment guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Typedef guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Title guifg=#c5d4dd guibg=NONE guisp=NONE gui=NONE ctermfg=152 ctermbg=NONE cterm=NONE
hi Folded guifg=#7fc1ca guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Include guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Float guifg=#a8ce93 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#ffebc3 guibg=#616c72 guisp=#616c72 gui=NONE ctermfg=223 ctermbg=243 cterm=NONE
hi NonText guifg=#616c72 guibg=NONE guisp=NONE gui=NONE ctermfg=243 ctermbg=NONE cterm=NONE
hi DiffText guifg=#3c4c55 guibg=#ffbf00 guisp=#ffbf00 gui=NONE ctermfg=66 ctermbg=214 cterm=NONE
hi ErrorMsg guifg=#616c72 guibg=#db6c6c guisp=#db6c6c gui=NONE ctermfg=243 ctermbg=167 cterm=NONE
hi Debug guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#616c72 guisp=#616c72 gui=NONE ctermfg=NONE ctermbg=243 cterm=NONE
hi Identifier guifg=#a8ce93 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Conditional guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Todo guifg=#616c72 guibg=#ffebc3 guisp=#ffebc3 gui=NONE ctermfg=243 ctermbg=223 cterm=NONE
hi Special guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi LineNr guifg=#616c72 guibg=NONE guisp=NONE gui=NONE ctermfg=243 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#ffebc3 guibg=#616c72 guisp=#616c72 gui=NONE ctermfg=223 ctermbg=243 cterm=NONE
hi Label guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#ffebc3 guibg=#616c72 guisp=#616c72 gui=NONE ctermfg=223 ctermbg=243 cterm=NONE
hi Search guifg=#3c4c55 guibg=#ddd668 guisp=#ddd668 gui=NONE ctermfg=66 ctermbg=185 cterm=NONE
hi Delimiter guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Statement guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi SpellRare guifg=#87b7cf guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Comment guifg=#70d684 guibg=NONE guisp=NONE gui=NONE ctermfg=78 ctermbg=NONE cterm=NONE
hi Character guifg=#a8ce93 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#ffebc3 guibg=#616c72 guisp=#616c72 gui=NONE ctermfg=223 ctermbg=243 cterm=NONE
hi Number guifg=#a8ce93 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi Boolean guifg=#a8ce93 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi Operator guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#4c5866 guisp=#4c5866 gui=NONE ctermfg=NONE ctermbg=60 cterm=NONE
hi TabLineFill guifg=#ffebc3 guibg=#616c72 guisp=#616c72 gui=NONE ctermfg=223 ctermbg=243 cterm=NONE
hi Question guifg=#7fc1ca guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#db6c6c guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=#3c4c55 guibg=#db6c6c guisp=#db6c6c gui=NONE ctermfg=66 ctermbg=167 cterm=NONE
hi ModeMsg guifg=#7fc1ca guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#4c5866 guisp=#4c5866 gui=NONE ctermfg=NONE ctermbg=60 cterm=NONE
hi Define guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Function guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#7fc1ca guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi PreProc guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Visual guifg=#3c4c55 guibg=#7fc1ca guisp=#7fc1ca gui=NONE ctermfg=66 ctermbg=116 cterm=NONE
hi MoreMsg guifg=#7fc1ca guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi VertSplit guifg=#616c72 guibg=NONE guisp=NONE gui=NONE ctermfg=243 ctermbg=NONE cterm=NONE
hi Exception guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Keyword guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Type guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#ffbf00 guibg=#3c4c55 guisp=#3c4c55 gui=NONE ctermfg=214 ctermbg=66 cterm=NONE
hi Cursor guifg=NONE guibg=#ffebc3 guisp=#ffebc3 gui=NONE ctermfg=NONE ctermbg=223 cterm=NONE
hi Error guifg=#db6c6c guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi PMenu guifg=#ffebc3 guibg=#616c72 guisp=#616c72 gui=NONE ctermfg=223 ctermbg=243 cterm=NONE
hi SpecialKey guifg=#616c72 guibg=NONE guisp=NONE gui=NONE ctermfg=243 ctermbg=NONE cterm=NONE
hi Constant guifg=#a8ce93 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi Tag guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi String guifg=#a8ce93 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#ffebc3 guisp=#ffebc3 gui=NONE ctermfg=NONE ctermbg=223 cterm=NONE
hi MatchParen guifg=#7fc1ca guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi Repeat guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi SpellBad guifg=#f27e7e guibg=NONE guisp=NONE gui=NONE ctermfg=210 ctermbg=NONE cterm=NONE
hi Directory guifg=#a8ce93 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi Structure guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Macro guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#3c4c55 guibg=#8eaf6b guisp=#8eaf6b gui=NONE ctermfg=66 ctermbg=107 cterm=NONE
hi TabLine guifg=#ffebc3 guibg=#616c72 guisp=#616c72 gui=NONE ctermfg=223 ctermbg=243 cterm=NONE
hi warningmsg guifg=#db6c6c guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi normal guifg=#ffebc3 guibg=#3c4c55 guisp=#3c4c55 gui=NONE ctermfg=223 ctermbg=66 cterm=NONE
hi string guifg=#a8ce93 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi conceal guifg=#616c72 guibg=NONE guisp=NONE gui=NONE ctermfg=243 ctermbg=NONE cterm=NONE
hi visual guifg=#3c4c55 guibg=#7fc1ca guisp=#7fc1ca gui=NONE ctermfg=66 ctermbg=116 cterm=NONE
hi statement guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi colorcolumn guifg=NONE guibg=#616c72 guisp=#616c72 gui=NONE ctermfg=NONE ctermbg=243 cterm=NONE
hi function guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi identifier guifg=#a8ce93 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi constant guifg=#a8ce93 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi preproc guifg=#b2a488 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi cursorlinenr guifg=#ddd668 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE