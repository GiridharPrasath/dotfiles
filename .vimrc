set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'               " let Vundle manage Vundle, required

    "-------------------=== Code/Project navigation ===-------------
    Plugin 'scrooloose/nerdtree'                " Project and file navigation
    Plugin 'majutsushi/tagbar'                  " Class/module browser
    Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files

    "-------------------=== Other ===-------------------------------
    Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
    Plugin 'flazz/vim-colorschemes'             " Colorschemes

call vundle#end()                           " required
colorscheme evening
"=====================================================
"" AirLine settings
"=====================================================
let g:airline_theme='luna'
set noswapfile
"vim diff part"
if &diff
    set noro
    map ] ]c
    map [ [c
    hi DiffAdd    ctermfg=233 ctermbg=LightGreen guifg=#003300 guibg=#DDFFDD gui=none cterm=none
    hi DiffChange ctermbg=white  guibg=#ececec gui=none   cterm=none
    hi DiffText   ctermfg=233  ctermbg=yellow  guifg=#000033 guibg=#DDDDFF gui=none cterm=none
endif

"=====================================================
"" General settings
"=====================================================
syntax enable                               " syntax highlight
set t_Co=256                                " set 256 colors
set number                                  " show line numbers
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set cursorline                              " shows line under the cursor's line
set enc=utf-8                               " utf-8 by default
set hidden                                  " hide files instead of close, more useful when switching bufs
nnoremap <leader>w :%s/\s\+$//c<CR>
set incsearch                               " incremental search
set hlsearch                                " highlight search results

" map y to copy buffer to clipboard in visual mode
vnoremap y "+y
" remove spaces
nnoremap <C-w> :%s/\s\+$//<cr>
vmap <tab> >gv
syn keyword ncType uint ubyte ulong uint64_t uint32_t uint16_t uint8_t boolean_t int64_t int32_t int16_t int8_t boolean u_int64_t u_int32_t u_int16_t u_int8_t u_int_t
syn keyword ncOperator likely unlikely
highlight def link ncType Type
highlight def link ncOperator Operator
