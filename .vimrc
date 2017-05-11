"@Geographer

"Plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-rhubarb'
Plug 'plasticboy/vim-markdown'
Plug 'justinmk/vim-syntax-extra'
Plug 'digitaltoad/vim-pug'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'shougo/neocomplete.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

"Bye Vi
set nocompatible
set backspace=2

"Remap escape
:imap jj <Esc>

"Avoid useless redraw
set lazyredraw

"See all the autocompletion
set wildmenu

"Syntax processing
syntax on

"Invisibles
set listchars=tab:..,trail:~
set list

"Snippets
let g:UltiSnipsSnippetsDir = "~/.vim/my_snippets"
let g:UltiSnipsSnippetDirectories=["my_snippets", "UltiSnips"]
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

"Syntaxt check with Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0

"vim-markdown configuration
let g:vim_markdown_folding_disabled = 1

"Line numbers
set number
set relativenumber

"Status line
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'seoul256',
            \ }

"Buffers integration
:set hidden
nnoremap <C-H> :bprev<CR>
nnoremap <C-L> :bnext<CR>
nnoremap <C-J> :bdelete<CR>
nnoremap <C-K> :ls<CR>

"Cursorline
set cursorline

"Colorscheme
set t_Co=256
set background=dark
colo gruvbox

"Use terminal emulator background
hi Normal ctermbg=none
hi NonText ctermbg=none

"Smooth scrolling
set scrolloff=2

"Identation
filetype plugin indent on
set softtabstop=2
set shiftwidth=2
set expandtab

"But still insert tab
inoremap hh <C-V><Tab>

"Show matching chars
set showmatch
hi MatchParen ctermfg=5 ctermbg=none

"More than 80 chars is bad
set colorcolumn=80

"FZF
map ff :FZF <CR>
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
	          \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'down': '~30%' }

"Nerdtree
nnoremap rr :NERDTreeTabsToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore=['\.o$', '\~$']

"Tags
nnoremap tt :TagbarToggle<CR>
let g:tagbar_compact = 1

"Git colors
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

"Syntastic colors
highlight SyntasticErrorSign ctermfg=red
highlight SyntasticWarningSign ctermfg=yellow

" Clear background buffer
set t_ut=