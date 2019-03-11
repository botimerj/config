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
set ttymouse=xterm2
set mouse=a

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
augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufwinEnter * silent loadview
augroup END
set foldmethod=syntax

:color desert
set visualbell
set t_vb=

" Add ons
" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" NERDTree
map <C-n> :NERDTreeToggle<CR>
