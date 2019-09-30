" Workbench Settings
    " ruler
        set ruler  "display line number, column number, relative position, etc.
    " color theme and font settings
        colorscheme gruvbox
        let g:gruvbox_guisp_fallback = "bg"  "enable highlight for missspelt word
        let g:gruvbox_contrast_dark = "hard"
        set termguicolors  "turn on true color (2^24 colors)
        " set t_Co=256  "enable 256 colors display
        set background=dark
    " font
        set gfn=DejaVuSansMono\ NF\ 16  "GUI font
    " in case color display error in tmux
        " Refer: http://sunaku.github.io/vim-256color-bce.html
        if &term =~ '256color'
            " disable Background Color Erase (BCE) so that color schemes
            " render properly when inside 256-color tmux and GNU screen.
            " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
            set t_ut=
        endif
    " Accelerate
        set ttyfast
        set lazyredraw
    " other
" Editing Settings
    " basic
        set encoding=UTF-8
        set backspace=indent,start  " allows backspace to delete hard indents. do not concat two lines(eol), content added by other insert operation
        set cursorline  " highlight current line
        set cursorcolumn  " highlight current column
        set number  " display line number
        set colorcolumn=81,121  " set line length notification
        set nowrap  " disable line wrap
        set showmatch  " show matched brackets
        set autochdir  " automatically change to current directory
        " set helplang=cn  " set the language of help document to Chinese
        set noswapfile  " disable swap file
    " spell checking
        " set spell  " enable spell checking
        set spellfile=~/.vim/spell/en.utf-8.add
        set spellcapcheck=  " disable capital check
        " set complete+=kspell  " Autocomplete with dictionary words when spell check is on
    " folding
        set foldenable
        set foldmethod=syntax
    " tab and space
        set softtabstop=4  "a tab is 4 spaces
        set tabstop=4  " show existing tab with 4 spaces width
        set shiftwidth=4  " when indenting with '>', use 4 spaces width
        set smarttab
        set expandtab  " On pressing tab, insert 4 spaces
        set list lcs=nbsp:%,trail:·  " indicate trailing spaces
        " set list lcs=tab:\|\  " This only indicates hard tabs, which are bad. This is not good enough
    " filetype
        filetype on
        filetype plugin on
        filetype indent on
    " search
        set hlsearch  " highlight search item
        set incsearch  " enable incremental search
        set ignorecase  " disable case sensitive
    " syntax
        syntax on  "so that we have syntax highlight
    " others
        " disable the annoying bell when did wrong operation
            set novisualbell
            set noerrorbells
            set t_vb=
        " set mouse=a  " enable mouse click in vim
        set nocompatible  " get rid of bugs and limits from vi
" Keybindings and Commands
    " set map leader
    let mapleader=","
    " comment and uncomment
    nmap <leader><C-m> <leader>ci
    " display and hide explorer
    nnoremap <leader><C-e> :NERDTreeToggle<CR>
    " without this, ALT will send `^[` to the terminal, which is the same with ESC
    " execute "set <A-f>=\ef"
    " format whole file
    nnoremap <leader><C-f> gg0=G
    " split window horizontally
    nnoremap <leader><C-h> :sv 
    " split window vertically
    nnoremap <leader><C-v> :vs 
    " toggle terminal at a bottom window with max width
    nnoremap <C-t> :ter<CR><C-w>L
    " close terminal
    tmap <C-t> <C-w>:q!<CR>
    " write with sudo
    nnoremap <leader><C-w> :w !sudo tee >/dev/null %
    " add word to current folder dictionary
    nnoremap <leader><C-z> :exe "setlocal spellfile+=" . <C-r>=shellescape(fnamemodify("en.utf-8.add", ":p"), 1)<CR><CR>
    " fold and unfold
    nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
    " map window switch shortcut
    nnoremap <C-Up> <C-w><Up>
    nnoremap <C-Down> <C-w><Down>
    nnoremap <C-Left> <C-w><Left>
    nnoremap <C-Right> <C-w><Right>
    tmap <C-Up> <C-w><Up>
    tmap <C-Down> <C-w><Down>
    tmap <C-Left> <C-w><Left>
    tmap <C-Right> <C-w><Right>
    nnoremap w= <C-w>+
    nnoremap w- <C-w>-
    nnoremap w, <C-w><
    nnoremap w. <C-w>>
    nnoremap <F2> <C-w>+
    nnoremap <F3> <C-w>-
    nnoremap <F4> <C-w><
    nnoremap <F5> <C-w>>

" Plugin Settings
    " NERD Tree
        " show hidden files and folders
        let NERDTreeShowHidden=1
    " NERD Commenter
        " Add spaces after comment delimiters by default
        let g:NERDSpaceDelims = 1
        " Use compact syntax for prettified multi-line comments
        let g:NERDCompactSexyComs = 1
    " supertab
        let g:SuperTabDefaultCompletionType = '<C-n>'
    " YouCompleteMe
        let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl,cs,lua,javascript': ['re!\w{2}'],
            \ }  " toggle semantic complement whenever there is two characters
        let g:ycm_global_ycm_extra_conf = '~/.vim/ycm.py'
        let g:ycm_show_diagnostics_ui = 0  " disable warnings and error notation by YCM
        let g:ycm_collect_identifiers_from_comments_and_strings = 1
        let g:ycm_autoclose_preview_window_after_completion = 1
        let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
        let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
    " ale
        let g:ale_sign_column_always = 1
        let g:ale_set_highlights = 1
        let g:ale_echo_msg_format = '[%linter%] [%code%]: %s'
        let g:ale_sign_error = ''
        let g:ale_sign_warning = ''
        let g:ale_open_list = 1
        " let g:ale_lint_on_text_changed = 'never'
        let g:ale_linters = {
        \   'c++': ['gcc'],
        \   'c': ['gcc'],
        \   'python': ['pycodestyle'],
        \}
        let g:ale_python_pycodestyle_options = '--ignore=E266,E501'
    " Rainbow
        let g:rainbow_active = 1
        let g:rainbow_conf = {
        \   'guifgs': ['#ffff00', '#00ff00', 'cyan', 'magenta'],
        \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
        \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
        \   'separately': {
        \       'nerdtree': 0,
        \   }
        \}
    " airline
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
        let g:airline_detect_spell = 0
        let g:airline#extensions#ale#enabled = 1
        let g:airline#extensions#ale#error_symbol = ' '
        let g:airline#extensions#ale#warning_symbol = ' '
        let g:airline_powerline_fonts = 1
    " UltiSnips
        let g:UltiSnipsExpandTrigger = "<tab>"
        let g:UltiSnipsJumpForwardTrigger = "<tab>"
        let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    " Trailing whitespace
        let g:better_whitespace_guicolor='Grey93'
        let g:strip_whitespace_on_save=0
    " vim-devicons
        let g:webdevicons_conceal_nerdtree_brackets = 1
        let g:WebDevIconsUnicodeDecorateFolderNodes = 1
        let g:DevIconsEnableFoldersOpenClose = 1
    " Markdown Preivew
        function! g:Open_browser(url)
            silent exe ":ter browsh --startup-url "a:url
            silent exe "normal \<C-w>L\<C-w>h"
        endfunction
        let g:mkdp_browserfunc = 'g:Open_browser'
        let g:mkdp_open_ip = 'localhost'

"""""""""""""""""""""""""""configurations of vim-plug""""""""""""""""""""""""""""
" Automatically install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load the Plugins
call plug#begin('~/.vim/plugged')
" Always ON
    Plug 'vim-airline/vim-airline'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'Yggdroot/indentLine'
    Plug 'jiangmiao/auto-pairs'
    Plug 'wakatime/vim-wakatime'
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer'}  " will run the command of 'do' after download
    " Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
    Plug 'luochen1990/rainbow'
    Plug 'vim-scripts/matchit.zip'
    Plug 'ervandew/supertab'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'easymotion/vim-easymotion'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'dense-analysis/ale'
    Plug 'ryanoasis/vim-devicons'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
" When LaTeX
    " Plug 'lervag/vimtex', { 'for': 'tex '}
" Initialize plugin system
call plug#end()
set noshowmode
set noshowcmd
set shortmess+=F
