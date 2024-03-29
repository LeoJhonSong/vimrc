" Workbench Settings
    " ruler
        set ruler  " Show the line and column number of the cursor (may covered by theme)
    " theme
        set cursorline  " highlight current line
        set cursorcolumn  " highlight current column
        set number  " display line number
        set colorcolumn=80,150  " set line length notification
        colorscheme molokai
        let g:gruvbox_guisp_fallback = "bg"  "enable highlight for missspelt word
        let g:gruvbox_contrast_dark = "hard"
        set termguicolors  "turn on true color (2^24 colors)
        set background=dark
    " font
        " set gfn=DejaVuSansMono\ NF\ 16  "GUI font
    " Accelerate
        set ttyfast
        set lazyredraw  " disable it if you feel no fluent enough
    " Terminal
        " set auto enter insert mode when a terminal is opened, and auto quit when zsh ends
        autocmd TermOpen * startinsert
        autocmd TermClose term://*
            \ if(expand('<afile>') =~ "zsh") |
            \   call nvim_input('<CR>') |
            \ endif
    " other
        set nocompatible  " get rid of bugs and limits from vi
        set noshowmode  " do not show vim mode under status bar
        set mouse=nv  " enable mouse click in vim
" Editing Settings
    " basics
        set encoding=UTF-8  " learn more from: http://edyfox.codecarver.org/html/vim_fileencodings_detection.html
        set backspace=eol,start,indent  " set backspace mode
        set nowrap  " disable line wrap
        set showmatch  " show matched brackets
        set autochdir  " automatically change to current directory
        set list lcs=nbsp:%,trail:·  " indicate trailing spaces
        " set helplang=cn  " set the language of help document to Chinese
        " set noswapfile  " disable swap file
    " syntax
        syntax on  "so that we have syntax highlight
    " tab and space
        set softtabstop=4  "a tab is 4 spaces
        set tabstop=4  " show existing tab with 4 spaces width
        set shiftwidth=4  " when indenting with '>', use 4 spaces width
        set smarttab
        set expandtab  " on pressing tab, insert 4 spaces
        set list lcs=tab:\|\  " indicates hard tabs
        set autoindent
        set smartindent  " Do smart autoindenting when starting a new line
    " filetype
        filetype on
        filetype plugin on
        filetype indent on
    " search
        set hlsearch  " highlight search item
        set incsearch  " enable incremental search
        set ignorecase  " disable case sensitive
        set smartcase  " Override the 'ignorecase' option if the search pattern contains upper case characters (only useful when ignorecase is on)
    " folding
        set foldenable
        set foldmethod=syntax
        setlocal foldlevel=99  " fold all code. set to 99 to leave code unfolded for default
    " spell checking
        " set spell  " enable spell checking
        set spellfile=~/.vim/spell/en.utf-8.add
        set spellcapcheck=  " disable capital check
        " set complete+=kspell  " autocomplete with dictionary words when spell check is on
" Keybindings and Commands
    " without this, ALT will send `^[` to the terminal, which is the same with ESC
        " execute "set <A-f>=\ef"
    " define a :Changes to show unwritten changes
        if !exists(":Changes")
          command Changes vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis
        endif
    " set map leader
        let mapleader=" "
    " write and quit
        " write all files silently
        nnoremap <silent><leader>w :silent :wa<CR>
        " write with sudo, with the GUI askpass program qt4-ssh-askpass
        nnoremap <silent><leader><C-w> :w !export SUDO_ASKPASS=/usr/bin/ksshaskpass && sudo -A tee > /dev/null %<CR>
        " quit
        nnoremap <silent><BS> :q<CR>
        " write and quit (failure will be ignored)
        nnoremap <leader>q :silent! :wq<CR>
    " yank & copy & put
        nnoremap Y y$
        " copy content in unnamed registor to system clipboard
        nnoremap <silent><leader>y :let @+ = @"<CR>
        " paste and then restore the main register
        xnoremap <silent>p p:let @+=@0<CR>:let @"=@0<CR>
    " comment and uncomment
        nmap <leader>m <leader>ci
        vmap <leader>m <leader>ci
    " display and hide explorer
        nnoremap <silent><leader>e :NERDTreeToggle<CR>
    " format whole file
        nnoremap <silent><leader>f :Autoformat<CR>
        " nnoremap <leader>f gg0=G
    " split window
        nnoremap <leader>h :sv 
        nnoremap <leader>v :vs 
    " terminal
        " open a terminal vertically spilted
        nnoremap <C-t> :botright :sv term://zsh<CR>
        " hide terminal
        tnoremap <C-t> <C-w>:hide<CR>
        " open terminal in a new tab
        nnoremap <leader>t :tabnew term://zsh<CR>
        tnoremap <leader>t :tabnew term://zsh<CR>
        " enable scroll in terminal
        tnoremap <ScrollWheelUp> <C-w>Nk
    " add word to current folder dictionary
        nnoremap <leader><C-z> :exe "setlocal spellfile+=" . <C-r>=shellescape(fnamemodify("en.utf-8.add", ":p"), 1)<CR><CR>
    " fold and unfold
        nnoremap <Enter> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
    " focus window switch
        nnoremap <C-Up> <C-w><Up>
        nnoremap <C-Down> <C-w><Down>
        nnoremap <C-Left> <C-w><Left>
        nnoremap <C-Right> <C-w><Right>
        tnoremap <C-Up> <C-w><Up>
        tnoremap <C-Down> <C-w><Down>
        tnoremap <C-Left> <C-w><Left>
        tnoremap <C-Right> <C-w><Right>
        " nnoremap <F2> <C-w>+
        " nnoremap <F3> <C-w>-
        " nnoremap <F4> <C-w><
        " nnoremap <F5> <C-w>>
    " tab switch
        noremap <silent><leader><Tab> :tabnext<CR>
        noremap <silent><leader><S-Tab> :tabprev<CR>
        tnoremap <silent><leader><Tab> <C-w>:tabnext<CR>
        tnoremap <silent><leader><S-Tab> <C-w>:tabnext<CR>
" Language Specific
    " Compile and Run
        nnoremap <F5> :call CompileRun()<CR>
        func! CompileRun()
            exec ":wa"
            if &filetype == 'c'
                :echo 'TODO'
            elseif &filetype == 'cpp'
                :echo 'TODO'
            elseif &filetype == 'python'
                :vs term://python %
            elseif &filetype == 'sh'
                :vs term://sh %
            endif
        endfunc
" Plugin Settings
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
    " NERD Commenter
        " Add spaces after comment delimiters by default
        let g:NERDSpaceDelims = 1
        " Use compact syntax for prettified multi-line comments
        let g:NERDCompactSexyComs = 1
    " Trailing whitespace
        let g:better_whitespace_guicolor='Grey93'
        let g:strip_whitespace_on_save=0
    " vim-signature
        let g:SignatureMarkTextHLDynamic=1  " compatible with gitgutter
    " supertab
        let g:SuperTabDefaultCompletionType = '<C-n>'
    " UltiSnips
        let g:UltiSnipsExpandTrigger = "<tab>"
        let g:UltiSnipsJumpForwardTrigger = "<tab>"
        let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    " airline
        " good theme list: base16_google, molokai, light, badwolf, kolor
        let g:airline_theme='dark'
        let g:airline_powerline_fonts = 1
        let g:airline_detect_spell = 0
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
        let g:airline#extensions#ale#enabled = 1
        let g:airline#extensions#ale#error_symbol = ' '
        let g:airline#extensions#ale#warning_symbol = ' '
        let g:airline#extensions#branch#enabled = 1
        let g:airline#extensions#hunks#enabled = 0
    " NERD Tree
        " show hidden files and folders
        let NERDTreeShowHidden=1
    " vim-devicons
        let g:webdevicons_conceal_nerdtree_brackets = 1
        let g:WebDevIconsUnicodeDecorateFolderNodes = 1
        let g:DevIconsEnableFoldersOpenClose = 1
    " vim-gitgutter
        set updatetime=100
        let g:gitgutter_sign_added = ' '
        let g:gitgutter_sign_modified = ' '
        let g:gitgutter_sign_removed = ' '
        let g:gitgutter_sign_removed_first_line = ' '
        let g:gitgutter_sign_modified_removed = ' '
        highlight  GitGutterAdd guifg=#009900
        highlight GitGutterChange guifg=#bbbb00
        highlight GitGutterDelete guifg=#ff2222
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
        set omnifunc=ale#completion#OmniFunc
        let g:ale_completion_enabled = 1
        let g:ale_sign_column_always = 1
        let g:ale_set_highlights = 1
        let g:ale_set_ballons = 1
        let g:ale_echo_msg_format = '[%linter%] [%code%]: %s'
        let g:ale_virtualtext_cursor = 1
        let g:ale_sign_error = ''
        let g:ale_sign_warning = ''
        " let g:ale_open_list = 1
        " let g:ale_lint_on_text_changed = 'never'
        let g:ale_verilog_xvlog_executable = '/home/leo/local/Xilinx/Vivado/2022.2/bin/xvlog'
        let g:ale_linters = {
        \   'c++': ['gcc'],
        \   'c': ['gcc'],
        \   'python': ['pycodestyle'],
        \}
        let g:ale_fixers = {
        \   '*': ['remove_trailing_lines', 'trim_whitespace'],
        \}
        let g:ale_python_pycodestyle_options = '--ignore=E266,E501,W503'
    " vim-autoformat
        let g:formatdef_autopep8 = '"autopep8 --aggressive --aggressive  --max-line-length=120 -"'
        let g:formatters_python = ['autopep8']
    " Vimtex
        let g:vimtex_view_general_viewer = 'okular'
        let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
    " Markdown Preivew
        function! g:Open_browser(url)
            silent exe ":ter browsh --startup-url "a:url
            silent exe "normal \<C-w>L\<C-w>h"
        endfunction
        let g:mkdp_browserfunc = 'g:Open_browser'
        let g:mkdp_open_ip = 'localhost'

"""""""""""""""""""""""""""configurations of vim-plug"""""""""""""""""""""""""""
" Automatically install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load the Plugins
call plug#begin('~/.vim/plugged')
" Always ON
    " basic
        Plug 'easymotion/vim-easymotion'
        Plug 'vim-scripts/matchit.zip'  " extended % matching jump
        Plug 'luochen1990/rainbow'  " rainbow pairs
        Plug 'Raimondi/delimitMate'  " auto pair complete
        Plug 'Yggdroot/indentLine'
        Plug 'scrooloose/nerdcommenter'
        Plug 'ntpeters/vim-better-whitespace'
        Plug 'kshenoy/vim-signature'  " dispaly marks in gutter
        Plug 'ervandew/supertab'
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'  " TODO: check https://github.com/junegunn/fzf.vim
    " theme
        Plug 'vim-airline/vim-airline'  " status bar theme
        Plug 'vim-airline/vim-airline-themes'
        Plug 'scrooloose/nerdtree'  " file explorer
        Plug 'ryanoasis/vim-devicons'  " nerdtree icons
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " nerdtree filetype highlight
    " git
        Plug 'airblade/vim-gitgutter'
    " language
        Plug 'dense-analysis/ale'  "multi-language  linter
        " Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer'}  " will run the command of 'do' after download
        " Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'Chiel92/vim-autoformat'
    " others
        Plug 'wakatime/vim-wakatime'
" When Markdown
    " Plug 'iamcco/markdown-preview.nvim', { 'for': 'md', 'do': { -> mkdp#util#install() } }
" When LaTeX
    Plug 'lervag/vimtex', { 'for': 'tex '}
" Initialize plugin system
call plug#end()
