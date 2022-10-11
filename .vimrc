"All Plugins
call plug#begin()
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'preservim/nerdtree'
call plug#end()

"Open NERDTree when open wim without arg
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"Open NERDTree in every new tab
autocmd BufWinEnter * NERDTreeMirror

"Quit window if NERDTree is the last open
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Quit tab if NERDTree is last open
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Basic settings
set expandtab
set tabstop=2
set mouse=a
set number

"Switch window in tab
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"Switch tab
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Up> :tabfirst<CR>
nnoremap <C-Down> :tablast<CR>

"Themes settings palenight
set background=dark
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme = "palenight"
