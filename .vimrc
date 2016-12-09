

" set mapleader
let mapleader = ","

" vundle begin

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" your own plugins...{

" clang_complete {
" Plugin 'Rip-Rip/clang_complete'
" }`

" YouCompleteMe {
"Plugin 'Valloric/YouCompleteMe'
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 1
"let g:ycm_key_list_select_completion = ['<Enter>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<S-Enter>', '<Up>']
" }

" fugitive {
Plugin 'tpope/vim-fugitive'
" }

"Nerdtree{
Plugin 'scrooloose/nerdtree'
nnoremap nt :NERDTreeToggle<cr>
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.d$', '\.o$', '\.a$', '\.pyc$']
"}

" Tagbar {
Plugin 'majutsushi/tagbar'
nnoremap tb :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_sort = 0
"}

" snipmate {
Plugin 'msanders/snipmate.vim'
" }

" DoxygenTookit {
Plugin 'vim-scripts/DoxygenToolkit.vim'
nnoremap da :DoxAuthor<cr>
nnoremap dl :DoxLic<cr>
nnoremap df :Dox<cr>
let g:DoxygenToolkit_authorName="supergui@live.cn"
" let g:DoxygenToolkit_licenseTag="My own license"
" }

"}


Plugin 'bling/vim-airline'
let g:airline_section_b='%{strftime("%c")}'
let g:airline_section_y='BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#close_symbol = 'X'

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <s-h> :bp<cr>
nmap <s-l> :bn<cr>
nmap <s-w> :bd<cr>

Plugin 'kien/ctrlp.vim'

Plugin 'fatih/vim-go'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1



Plugin 'vim-php/tagbar-phpctags.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

"{
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"}

" vundle end

syntax on;
set hlsearch

" for vim74 backspace
set nocompatible
set backspace=indent,eol,start

" set 'TAB' to 4 spaces
set ts=4
set expandtab

"" folding config                                                                                            
set foldenable                                                                                               
set foldcolumn=2                                                                                             
set foldmethod=syntax                                                                                        
set foldlevel=100
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<cr>                                           
"autocmd BufNewFile,BufRead *.vimrc set foldmarker={,} foldmethod=marker foldlevel=1
"
"
"

"" Resize 
nmap <c-l> :vertical resize+1<cr>
nmap <c-h> :vertical resize-1<cr>
nmap <c-k> :resize+1<cr>
nmap <c-j> :resize-1<cr>

"source ~/.vim/color/Tomorrow-Night-Bright.vim