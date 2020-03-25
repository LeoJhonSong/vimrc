# vimrc

Here is my vim recipe and some note about vim.

---

1. [Pre-Requirement](#Pre-Requirement)
2. [Installation](#Installation)
   1. [Linux](#Linux)
   2. [Windows](#Windows)
   3. [Mac](#Mac)
3. [Shortcuts](#Shortcuts)
4. [Plugin List](#Plugin-List)

---

It looks like this👇

Normal mode with file tree

![Normal mode with file tree](doc/appearance1.png)

Insert mode with complete suggestions

![Insert mode with complete suggestions](doc/appearance2.png)

when error is found

![when error is found](doc/appearance3.png)

## Pre-Requirement

- `clang`, `cmake` is needed. (for the [YCM plugin](https://ycm-core.github.io/YouCompleteMe/#linux-64-bit))

  ```shell
  sudo apt install clang cmake
  ```

  Besides, your version of vim should be at least **7.4.1578** and have python
  or python3 support. You can run `vim --version` to check it.

- a [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) is needed. the
  [DejaVuSansMono Nerd
  Font](doc/DejaVu-Sans-Mono-Nerd-Font-Complete-Windows-Compatible.ttf) is
  already in the folder and can be installed with a single click.

💡 you may face with problem like this: [some icons becomes a chinese
character](https://github.com/ryanoasis/vim-devicons/issues/270)

## Installation

### Linux

1. download this repository to **~/.vim**

   ```shell
   git clone https://github.com/LeoJhonSong/vimrc.git ~/.vim
   ```

2. in your `~/.vimrc`, add a line at the top:

   ```vimrc
   source ~/.vim/default.vim
   ```

💡 Why top?

By doing so you are allowed to cover settings with your own values, as you set your values **after** `default.vim` is sourced.

### Windows

Please try Linux 😁

### Mac

No I don't use Mac 😁

## Shortcuts

|Action|Keyboard Shortcut|
|-|-|
|Quit| <kbd>Backspace</kbd>|
|Write| <kbd>Space</kbd> <kbd>w</kbd>|
|Write and Quit| <kbd>Space</kbd> <kbd>q</kbd>|
|Comment/Uncomment| <kbd>Space</kbd> <kbd>m</kbd>|
|Display/Hide File Explorer| <kbd>Space</kbd> <kbd>e</kbd>|
|Fold and Unfold Code| <kbd>Enter</kbd>|
|Format Code| <kbd>Space</kbd> <kbd>f</kbd>|
|Open File and Split Window Horizontally| <kbd>Space</kbd> <kbd>h</kbd>|
|Open File and Split Window Vertically| <kbd>Space</kbd> <kbd>v</kbd>|
|Open/Hide Terminal on side| <kbd>Ctrl</kbd> <kbd>t</kbd>|
|Open Terminal in Tab| <kbd>Space</kbd> <kbd>t</kbd>|
|Switch Tab| <kbd>Space</kbd> <kbd>Tab</kbd> or <kbd>Space</kbd> <kbd>Shift</kbd> <kbd>Tab</kbd>|
|Write with Sudo| <kbd>Space</kbd> <kbd>Ctrl</kbd> <kbd>w</kbd>|
|Create Folder Specific Dictionary| <kbd>Space</kbd> <kbd>Ctrl</kbd> <kbd>z</kbd>|
|switch to the window above| <kbd>Ctrl</kbd> <kbd>↑</kbd>|
|switch to the window below| <kbd>Ctrl</kbd> <kbd>↓</kbd>|
|switch to the window left side| <kbd>Ctrl</kbd> <kbd>←</kbd>|
|switch to the window right side| <kbd>Ctrl</kbd> <kbd>→</kbd>|
|increase the hight of window| <kbd>F2</kbd> |
|decrease the hight of window| <kbd>F3</kbd>|
|move left the vertical split line| <kbd>F4</kbd>|
|move right the vertical split line| <kbd>F5</kbd>|

## Plugin List

plugins are installed by [vim-plug](https://github.com/junegunn/vim-plug).

- [NERDTree](https://github.com/scrooloose/nerdtree)
- [NERD Commenter](https://github.com/scrooloose/nerdcommenter)
- [Auto Pairs](https://github.com/jiangmiao/auto-pairs)
- [indentLine](https://github.com/Yggdroot/indentLine)
- [vim-wakatime](https://github.com/wakatime/vim-wakatime)
- [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
- [Rainbow Parentheses Improved](https://github.com/luochen1990/rainbow)
- [matchit](https://github.com/vim-scripts/matchit.zip)
- [UltiSnips](https://github.com/SirVer/ultisnips)
- [snipMate & UltiSnip Snippets](https://github.com/honza/vim-snippets)
- [EasyMotion](https://github.com/easymotion/vim-easymotion)
- [Vim Better Whitespace Plugin](https://github.com/ntpeters/vim-better-whitespace)
- [Asynchronous Lint Engine](https://github.com/dense-analysis/ale)
- [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim)
