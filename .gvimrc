set guioptions-=T " hide toolbar
set lines=55 columns=100

set guifont=DejaVu\ Sans\ Mono:h13

""""""""""""""""颜色"""""""""""""""""""""""""""""
if has("gui_running")
  let psc_style='cool'
  colorscheme desert256 
else
  colorscheme   spring
endif


""""""""""""""""snipMatep"""""""""""""""""""""""
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType ruby,ruby-rails setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


""""""""""""taglist""""""""""""""""""

set tags+=/
let Tlist_Inc_Winwidth = 20 "set taglist width = 20
let Tlist_Use_Right_Window = 1 "put the taglist window right
let Tlist_Exit_OnlyWindow = 1 "if there is only taglist window left, close vim.
let Tlist_Show_One_File = 1 "only show the tag of the current file
let Tlist_File_Fold_Auto_Close = 1 
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Auto_Open = 0 " 自动打开Taglist窗口

""""""""""""""""""minibuf插件"""""""""""""""""""""""""

let g:miniBufExplMapWindowNavVim = 1 "Ctrl-<hjkl> to move to window 
let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)

""""""""""""""""""mark高亮插件"""""""""""""""""""""""""

highlight def MarkWord1  ctermbg=Cyan     ctermfg=Black  guibg=#8CCBEA    guifg=Black


"""""""""""""""""快捷键""""""""""""""""""""""""""""""

map <F3> :NERDTreeToggle<CR>

map <F4> :TlistToggle<CR>

"查找ctrl+shift+f
map <C-S-F> :Grep -r --exclude=*.log<CR>

"格式化ctrl+shift+g
map <C-S-G> gg=G<CR>

"快捷键上、下、左、右切换窗口
map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>
map <C-H> <C-W>h<C-W>
map <C-L> <C-W>l<C-W>

""""""""""""""""""""""""暂时"""""""""""""""""""""



