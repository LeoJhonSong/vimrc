" Workbench Settings
	" Ruler
		set ruler  "display line number, column number, relative position, etc.
	" color theme settings
		colorscheme gruvbox
		set background=dark
		set t_Co=256  "enable 256 colors display
	" enable powerline for vim
		set rtp+=/home/leo/.local/lib/python3.7/site-packages/powerline/bindings/vim/
		set laststatus=2
" Editing Ssettings
	" basic
		set backspace=indent,start  " allows backspace to delete indents. concat two lines, etc.
		" set tabstop=4  default tab size
		set smartindent
		set cursorline  " highlight current line
		set cursorcolumn  " highlight current column
		set number  " display line number
		set colorcolumn=81,121  " sset line length notification
		set nowrap  " disable line wrap
		set showmatch  " show matched brackets
		set list lcs=tab:\|\ ,nbsp:%,trail:·
	" search
		set hlsearch  " hilight search item
		set incsearch  " enable incremental search
	" others
		set noerrorbells
		set t_vb=  " disable the annoying bell when did wrong operation
		" set mouse=a  " enable mouse click in vim
" Keybindings
	map <C-\> <leader>ci  " comment and uncomment
	map <C-S-e> :NERDTreeToggle<CR>  " display and hide explorer
" Plugin Settings
	" NERD Commenter
		" Add spaces after comment delimiters by default
		let g:NERDSpaceDelims = 1
		" Use compact syntax for prettified multi-line comments
		let g:NERDCompactSexyComs = 1


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
	Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer'}
" Initialize plugin system
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
