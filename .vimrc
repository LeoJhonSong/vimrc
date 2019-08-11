" Workbench Settings
    " ruler
        set ruler  "display line number, column number, relative position, etc.
    " color theme and font settings
        colorscheme sacredforest_leo
        let g:gruvbox_guisp_fallback = "bg"  "enable highlight for missspelt word
        let g:gruvbox_contrast_dark = "hard"
        set termguicolors  "turn on true color
        set background=dark
        " set t_Co=256  "enable 256 colors display
        set gfn=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 16  "GUI font
    " enable powerline for vim
        set rtp+=/home/leo/anaconda3/lib/python3.7/site-packages/powerline/bindings/vim/
        set laststatus=2
" Editing Settings
    " basic
        set backspace=indent,start  " allows backspace to delete hard indents. do not concat two lines(eol), content added by other insert operation
        set cursorline  " highlight current line
        set cursorcolumn  " highlight current column
        set number  " display line number
        set colorcolumn=81,121  " set line length notification
        set nowrap  " disable line wrap
        set showmatch  " show matched brackets
        set autochdir  " automatically change to current directory
        " set helplang=cn  " set the language of help document to Chinese
    " spell checking
        set spell  " enable spell checking
        set spellfile=~/.vim/spell/en.utf-8.add
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
    " syntax
        syntax on  "so that we have syntax highlight
    " others
        set t_vb=  " disable the annoying bell when did wrong operation
        " set mouse=a  " enable mouse click in vim
        set nocompatible  " get rid of bugs and limits from vi
" Keybindings and Commands
    " set map leader
    let mapleader=","
    " comment and uncomment
    map <leader><C-m> <leader>ci
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
" Plugin Settings
    " NERD Tree
        " show hidden files and folders
        let NERDTreeShowHidden=1
    " NERD Commenter
        " Add spaces after comment delimiters by default
        let g:NERDSpaceDelims = 1
        " Use compact syntax for prettified multi-line comments
        let g:NERDCompactSexyComs = 1
    " YouCompleteMe
        let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl,cs,lua,javascript': ['re!\w{2}'],
            \ }  " toggle semantic complement whenever there is two characters
        let g:ycm_global_ycm_extra_conf = '~/.vim/ycm.py'
        let g:ycm_show_diagnostics_ui = 0  " disable warnings and error notation by YCM
        let g:ycm_collect_identifiers_from_comments_and_strings = 1
        let g:ycm_autoclose_preview_window_after_completion = 1
        " let g:ycm_filetype_whitelist = {
            " \ "c": 1,
            " \ "cpp": 1,
            " \ "py": 1,
            " \ "sh": 1,
            " \ "html": 1,
            " \ "js": 1,
            " \ }

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
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'Yggdroot/indentLine'
    Plug 'jiangmiao/auto-pairs'
    Plug 'wakatime/vim-wakatime'
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer'}  " will run the command of 'do' after download
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
" When LaTeX
    " Plug 'lervag/vimtex', { 'for': 'tex '}
" Initialize plugin system
call plug#end()
