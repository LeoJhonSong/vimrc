" set powerline for vim
set rtp+=/home/leo/.local/lib/python3.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

""""""""""""""""configurations of vim-plug""""""""""""""""""
" Automatically install vim-plug if not installed

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load the Plugins
call plug#begin('~/.vim/plugged')
" SideBar File View, ALWAYS ON
Plug 'scrooloose/nerdtree'
" WakaTime, ALWAYS ON
Plug 'wakatime/vim-wakatime'
" Initialize plugin system
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
