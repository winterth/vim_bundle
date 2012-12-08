" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

call pathogen#infect('~/vim_bundle')

""""""""""""""""""""""""""""  GVIM  """"""""""""""""""""""""""""""
if has("gui_running")
        au GUIENTER * simalt ~x
        set guifont=DejaVu_Sans_Mono:h11
endif


"""""""""""""""""""""""""""""  MAP  """"""""""""""""""""""""""""""
" Set 256 color
set t_Co=256

" Switch tabs
imap <C-Tab>    <Esc>gt
nmap <C-Tab>    gt
" Create new tab
" cmap tt         tabnew
" Replace the current word
map <A-/> :%s/<C-R><C-W>//g<Left><Left>
" Find current word (identical with SourceInsight)
map <F3> #      " Backward
map <F4> *      " Forward
" Map the :cn and :cp
nmap <C-N> :cn<CR>
nmap <C-P> :cp<CR>


" Smart way to move focused window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Edit vimrc
if has("unix")
        map <leader>e :e! ~/.vimrc<CR>
        map <leader>l :source ~/.vimrc<CR>
else
        map <leader>e :e! $USERPROFILE/_vimrc<CR>
        map <leader>l :source $USERPROFILE/_vimrc<CR>
endif

nnoremap <F5> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>:<Esc>
"nnoremap <F6> :set nohls<CR>:<Esc>

" Move the cusor to middle of matched symbol.
let g:mapCusorEnabled = 0
fu! MapCusor()
    if g:mapCusorEnabled == 0
        let g:mapCusorEnabled = 1
        imap ()         ()<Esc>i
        imap []         []<Esc>i
        imap {}         {}<Esc>i
        imap ''         ''<Esc>i
        imap ""         ""<Esc>i
        imap <>         <><Esc>i
    end
endf
fu! UnMapCusor()
    if g:mapCusorEnabled == 1
        let g:mapCusorEnabled = 0
        iunmap ()
        iunmap []
        iunmap {}
        iunmap ''
        iunmap ""
        iunmap <>
    endif
endf
fu! SwitchCusorStatus()
    if g:mapCusorEnabled == 0
        set nopaste
        call MapCusor()
	echo "Map Cusor Enabled! nopaste mode"
    else
        set paste
        call UnMapCusor()
	echo "Map Cusor Disabled! paste mode"
    endif
endf
call MapCusor()
imap <F7> :call SwitchCusorStatus()<CR>
nmap <F7> :call SwitchCusorStatus()<CR>
vmap <F7> :call SwitchCusorStatus()<CR>

nmap zi :set fdm=indent<CR>
nmap zm :set fdm=marker<CR>
"" insert mode shortcut
"inoremap <C-h> <Left>
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-l> <Right>
"inoremap <C-d> <DELETE>

" Comment code, must use "V" into visual mode, which is "VISUAL LINE" mode
vmap <C-S-P>    dO#endif<Esc>PO#if 0<Esc>

"""""""""""""""""""""""""""  SETTING  """"""""""""""""""""""""""""
" Open the file type detect
filetype on
" Set to auto read when a file is changed from the outside
set autoread
" Highlight search result
set hlsearch
" Enable line number
set nu     
" Set tabstop as 4 for all files
set tabstop=8
set shiftwidth=8
" Set tabstop as 8 for c and cpp files
au FileType c,cpp set tabstop=8 shiftwidth=8
" Set expand tab for c, cpp, python
au FileType c,cpp,python set expandtab
" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" Show command
set showcmd
" Open the ruler
set ruler
" Set paste toggle for switching paste mode. In paste mode, auto indent would
" be desabled
"set pastetoggle=<F10>
" Set auto indent
set autoindent
" Set auto indent for C/C++
set cindent
" Move to current patern immediately
"set incsearch
" Ignore case in searching
"set ignorecase
" Keep the format when paste, stop auto indent
"set paste


"""""""""""""""""""""""""""  Chinese support  """"""""""""""""""""""""""""
"set encoding=utf-8
"set fileencodings=utf-8,chinese,latin-1
"if has("win32")
"set fileencoding=chinese
"else
"set fileencoding=utf-8
"endif
"language messages zh_CN.utf-8
"set fencs=utf-8,gbk,ucs-bom,gb18030,gb2312,cp936
"set gfw=YouYuan:h12

"""""""""""""""""""""""""""  TAGS  """"""""""""""""""""""""""""
map <F8> :TlistToggle<CR>

"""""""""""""""""""""""""""  OTHERS  """"""""""""""""""""""""""""
syntax on
colo darkburn
" colo molokai
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" For enable OmniCppComplete. <C-X><C-O> or <C-P>
set nocp
filetype plugin on
set completeopt=menu    " disable the preview window

" For grep.vim -- shortcut <F3>
"nnoremap <silent> <F7> :Rgrep<CR>
nnoremap <leader>s :Rgrep<CR>
nnoremap <leader>as :RgrepAdd<CR>
nnoremap <leader>bs :Bgrep<CR>
nnoremap <leader>bas :BgrepAdd<CR>
let Grep_Default_Filelist = '*.c *.h *.cli' 

set nocscopeverbose
set tags=$LW_PROJ_DIR/tags
cs a $LW_PROJ_DIR/cscope.out

"set csto=1
"set cst
"if filereadable("cscope.out")
"	cs add cscope.out
"endif

" for vimwiki
let g:vimwiki_list = [ {'path': '~/vimwiki/wiki', 'path_html': '~/vimwiki_html/wiki'}, {'path': '~/vimwiki/blog', 'path_html': '~/vimwiki_html/blog'}]
