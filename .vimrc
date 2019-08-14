call plug#begin('~/.vim/plugged')

Plug 'kaicataldo/material.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
"Plug 'zchee/deoplete-jedi'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'benmills/vimux'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'hzchirs/vim-material'
Plug 'arcticicestudio/nord-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'galooshi/vim-import-js'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

call plug#end()

filetype plugin on
filetype plugin indent on
set backspace=indent,eol,start
set hidden
set number
set termguicolors
"syntax on
"Dark
set background=dark
let g:material_theme_style = 'default'
colorscheme nord

set ts=2
set expandtab
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set updatetime=100

let b:ale_linters = {'scss': ['sasslint']}
let b:ale_fixers = { 'javascript': ['eslint'], 'scss': ['prettier'] }
let g:ale_fixers = { 'javascript': ['eslint'], 'scss': ['prettier'] }
"let b:ale_fixers = { 'python': ['black'] }
"let b:ale_linters = { 'python': ['flake8'] }

" jsx
"let g:jsx_ext_required = 0

let g:ale_fix_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

"ycm settings
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

"close brackets and quotes automatically
:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
:inoremap ` ``<Esc>i

:vnoremap ( di()<Esc>P
:vnoremap { di{}<Esc>P
:vnoremap [ di[]<Esc>P
:vnoremap ' di ''<Esc>P
:vnoremap " di ""<Esc>P
:vnoremap ` di ``<Esc>P

"snippets
:inoremap clg console.log()<Esc>i

"shourtcuts
:imap <C-e> <Esc>:w<CR><C-b><RIGHT>
map <Leader>n :tabnext<CR>
map <Leader>t :tabnew 

"save and quitting mappings
:command WQ wq
:command Wq wq
:command W w
:command Q q

"vmux
map <Leader>ml :VimuxPromptCommand<CR>make local<CR>
map <Leader>vp :VimuxPromptCommand<CR>

"airline settings
let g:airline_theme='nord'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
"let g:airline_left_sep = '»'
let g:airline_left_sep = ''
"let g:airline_right_sep = '«'   
let g:airline_right_sep = ''


"tag creator
:inoremap >> <Esc>bvedi<<Esc>pa></<Esc>pa><Esc>bba

"js commenter
map <Leader>/ ^i// <Esc>

"ctrlA function
nnoremap <C-a> gg<S-v><S-g>y
