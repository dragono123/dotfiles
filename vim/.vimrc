set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mklabs/split-term.vim'

Plugin 'vim-syntastic/syntastic'
Plugin 'valloric/youcompleteme'
" Plugin 'vim-scripts/OmniCppComplete'
" Plugin 'justmao945/vim-clang'

Plugin 'sakhnik/nvim-gdb'
Plugin 'vim-python/python-syntax'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'kmyk/sdl2.vim'

Plugin 'pseewald/vim-anyfold'
Plugin 'konfekt/fastfold'

Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'honza/vim-snippets'
Plugin 'sirver/ultisnips'

Plugin 'jacquesbh/vim-showmarks'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'adelarsq/vim-matchit'
Plugin 'vim-scripts/ZoomWin'
Plugin 'tomtom/tcomment_vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline'
Plugin 'powerline/fonts' 
Plugin 'tomasr/molokai'
Plugin 'joshdick/onedark.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Global Setting
" --------------------------------------------------------------------------------
set mouse=a
let anyfold_activate=1
set foldlevel=0
let anyfold_fold_comments=1

if (has("nvim"))
    let g:split_term_vertical=0
    let g:disable_key_mappings=0
endif

let python_highlight_all = 1

set updatetime=250 

set number
set relativenumber
set splitright

map <f9> :DoShowMarks!<cr>
let g:UltiSnipsExpandTrigger="²"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:ycm_server_python_interpreter="/usr/bin/python2"



" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/c
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/sdl2
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl++
set tags+=~/.vim/tags/sdl++
set tags+=~/.vim/tags/sdl2++

set tags+=~/.vim/tags/Kapture

let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.', '_', 're!\w{3}'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::', '_', 're!\w{3}'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:ycm_max_num_candidates = 30
     
"     " OmniCppComplete
"     let OmniCpp_NamespaceSearch = 1
"     let OmniCpp_GlobalScopeSearch = 1
"     let OmniCpp_ShowAccess = 1
"     let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"     let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"     let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"     let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"     let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"     " automatically open and close the popup menu / preview window
"     au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"     set completeopt=menuone,menu,longest,preview




" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
set hidden

" just hit backspace without this one and
" see for yourself
set backspace=indent,eol,start

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file

" Fast saving
nmap ,w  :w!<cr>

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2


" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" MAPPINGS
" ----------------------------------------------------------------------------------------------
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

nmap di, f,dT,
nmap ci, f,cT,

nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
nmap ) )zz
nmap ( (zz

xnoremap <silent> K :call mappings#visual#move_up()<CR>
xnoremap <silent> J :call mappings#visual#move_down()<CR>

" transparency
nnoremap <C-t> :call mappings#transparency#Toggle_transparent()<CR>

" Toggle fold at current position.
nnoremap <Tab> za

" Terminal Stuff
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
" for now...
autocmd BufWinEnter,WinEnter term://* startinsert

" ----------------------------------------------------------------------------------------------
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" All autocommands
autocmd vimenter * NERDTree | execute "normal \<C-W>l"
" if (has("nvim"))
"     autocmd vimenter * 100VTerm
"     autocmd vimenter * execute "normal \<C-W>h" | stopinsert
" endif
autocmd ColorScheme * hi Normal ctermbg=none guibg=none

set background=dark
let g:is_transparent=1
let g:onedark_termcolors=256
colorscheme onedark
" let g:molokai_original = 1
" let g:rehash256 = 1
" colorscheme molokai
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
