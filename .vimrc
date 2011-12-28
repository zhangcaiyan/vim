"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Get out of VI's compatible mode..
set nocompatible

"Sets how many lines of history VIM har to remember
set history=400

"Enable filetype plugin
filetype plugin on
filetype indent on


"Set font to Monaco 10pt
set gfn=Monospace\ 10

"disable toolbar and menubar
if has("gui_running")
    set guioptions-=T
    set guioptions-=m
     "set guioptions-=r "right_scrollbar
endif

"hide/show : toolbar(T), menubar(m) and right_scrollbar(r)
map <silent> <C-F2> :if &guioptions =~# 'T' <Bar>
         \set guioptions-=T <Bar>
         \set guioptions-=m <Bar>
\else <Bar>
         \set guioptions+=T <Bar>
         \set guioptions+=m <Bar>
\endif<CR>


"Highlight current
"$VIMRUNTIME/syntax/colortest.vim
if has("gui_running")
  set cursorline
  hi cursorline guibg=#99FFFF 
   " hi cursorline guifg=black
  hi CursorColumn guibg=#333333
   " hi cursorcolumn guifg=black 
else
   "set cursorline 
   "hi cursorline ctermbg=lightblue 
   ""hi cusorline ctermfg=white 
   "hi cursorcolumn ctermbg=black
   ""hi cursorcolumn ctermfg=gray 
endif

"Omni menu colors
hi Pmenu guibg=#333333
hi PmenuSel guibg=#555555 guifg=#ffffff


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 2 lines to the curors - when moving vertical..
set so=1

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 1 high
set cmdheight=1

"Show line number
set nu

"Do not redraw, when running macros.. lazyredraw
set lz

"Change buffer - without saving
set hid

"Set backspace
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"Ignore case when searching
set ignorecase
set incsearch

"Set magic on
set magic

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=2

"Highlight search things
"set hlsearch

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
"Always hide the statusline
set laststatus=2

function! CurDir()
  let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
  return curdir
endfunction

"Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around and tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map space to / and c-space to ?
map <space> /
map <c-space> ?


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn backup off
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
set nofen
set fdl=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=2

map <leader>t2 :set shiftwidth=2<cr>
map <leader>t4 :set shiftwidth=4<cr>
au FileType python,vim,javascript,tex,c,cpp,hpp,h setl shiftwidth=4
au FileType python,vim,javascript,tex,c,cpp,hpp,h setl tabstop=4
au FileType java setl shiftwidth=4
au FileType java setl tabstop=4

set smarttab
set lbr
set tw=500

""""""""""""""""""""""""""""""
" => Indent
""""""""""""""""""""""""""""""
"Auto indent
set ai

"Smart indet
set si

"C-style indeting
set cindent

"Wrap lines
set wrap

""""""""""""""""""""""
" my configuration
""""""""""""""""""""""
" set encoding
set enc=utf-8
" set file encoding
set fenc=utf-8
" set file encoding and the supported format
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" set the Chinese comma to double
set ambiwidth=double

"press F2 to remove all blanks at the end of each line


"my configure,F3 F4 switch the tablabel
map <F2> :tabprevious<CR>


