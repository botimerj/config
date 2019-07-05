" QoL
set backspace=indent,eol,start
set complete-=i
set incsearch
set laststatus=2
set ruler
set wildmenu
set expandtab
set tabstop=4
set shiftwidth=4
set nowrap
set ttymouse=sgr
set mouse=a
set hlsearch
set number
set colorcolumn=80

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

if !&scrolloff
        set scrolloff=1
endif

" Buffers
set hidden
set confirm
:nnoremap <F5> :buffers<CR>:buffer<Space>

" Folds
" augroup AutoSaveFolds
"     autocmd!
"     autocmd BufWinLeave * mkview
"     autocmd BufwinEnter * silent loadview
" augroup END
set foldmethod=syntax

set visualbell
set t_vb=

" Add ons
" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" NERDTree
map <C-m> :NERDTreeToggle<CR>

" Python settings
au BufReadPost,BufNewFile *.py setlocal foldmethod=indent foldignore=

" Color stuff
"colorscheme darkblue
set term=screen-256color
set t_ut=
set background=dark
colorscheme solarized8_flat
