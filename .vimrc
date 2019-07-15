
call plug#begin('~/.vim/plugged')

Plug 'kaicataldo/material.vim'
Plug 'hzchirs/vim-material'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Chiel92/vim-autoformat'

call plug#end()

filetype plugin indent on
set number

set termguicolors
syntax on
"Dark
set background=dark
"let g:material_terminal_italics = 1
colorscheme material

let g:airline_theme='material'

set ts=4
set autoindent
set expandtab
set showmatch

"python specific settings
let python_highlight_all = 1

let g:ale_fixers = { 'javascript': ['eslint'] }
let b:ale_fixers = { 'javascript': ['eslint'] }
"let b:ale_fixers = { 'python': ['black'] }
"let g:ale_fixers = { 'python': ['black'] }
"let b:ale_linters = { 'python': ['flake8']}
"let g:ale_linters = { 'python': ['flake8']}

" jsx
"let g:jsx_ext_required = 0

let g:ale_fix_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
"let g:ale_python_flake8_executable = 'flake8' 
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

"custom Tabline
:hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
:hi TabLine ctermfg=Blue ctermbg=Yellow
:hi TabLineSel ctermfg=Red ctermbg=Yellow"tabline colors

"Ycm settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"NERDTreesettings
map <C-n> :NERDTreeToggle<CR>

"vim-airline settings
let g:airline#extensions#tabline#enabled = 1

"python autoformater
noremap <F3> :Autoformat<CR>
