call plug#begin('~/.vim/plugged')

" Dracula Theme
"Plug 'dracula/vim', { 'as': 'dracula' }

" Autocomplete
Plug 'ycm-core/YouCompleteMe'

" Automatic pairs
Plug 'jiangmiao/auto-pairs'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

" Airline plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Nerdtree plugin
Plug 'preservim/nerdtree'

" Show hexcolors plugin
Plug 'ap/vim-css-color'

" Gruvbox theme
Plug 'morhetz/gruvbox'

call plug#end()

" Set gruvbox as theme
colorscheme gruvbox
set background=dark

set number relativenumber
" set laststatus=2
set title
set cursorline
syntax on
set encoding=utf-8
set mouse=a
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
set hlsearch
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set wildmenu
set timeoutlen=1000 ttimeoutlen=0

"Keys remaps
nnoremap q :quit<CR>
nnoremap <C-s> :write<CR>
nnoremap <C-t> :terminal<CR>
nnoremap <C-q> :wq<CR>
nnoremap <Esc><Esc> :nohl<CR>

" NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-z> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0
let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]
let g:ycm_clangd_args=['--header-insertion=never']

"UtilSnips
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"Vim Airline
let g:airline_theme = 'gruvbox'
let g:airline_extensions = []

" powerline symbols
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' ☰ '
let g:airline_symbols.maxlinenr = '  '
let g:airline_symbols.dirty='⚡'
