execute pathogen#infect()

set nocompatible
filetype plugin on
syntax on
nnoremap <F2> :source ~/.vimrc<Enter> 
set number
set relativenumber
set ts=2
set wildmenu
set autoindent
set nohlsearch
set title
set clipboard+=unnamedplus


nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>


set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

syntax enable
set background=dark
colorscheme wal
set guifont=Meslo\ LS\ S\ Regular\ for\ Powerline:h20

let mapleader = ","

" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w> :SyntasticCheck<CR> :lopen<CR>

" Multicursor
let g:multi_cursor_start_word_key = '<C-M>'
let g:multi_cursor_start_key = '<C-M>'
let g:multi_cursor_next_key = '<C-M>'

" NerdTree and Tabs

map <C-t> :NERDTreeToggle<CR>
map <C-n> :tabe<CR>
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>
let NERDTreeShowHidden = 1

"Splits

nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>



map <F7> :setlocal spell! spelllang=en_us<CR>
map <F6> :setlocal spell! spelllang=pt_pt<CR>

"Latex ShortCuts

" Word count:
autocmd FileType tex map <leader>w :w !detex \| wc -w<CR>

" Compilation 
map <leader>p :!zathura $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>
autocmd FileType tex inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
autocmd FileType tex map <F5> :! pdflatex $(echo %:r) ; bibtex $(echo %:r) ; pdflatex $(echo %:r) ; pdflatex $(echo %:r)<CR><CR>

"Begin environment
autocmd FileType tex inoremap ;be \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
autocmd FileType tex inoremap ;bf \textbf{}<Enter><++><Esc>k$T}i
autocmd FileType tex inoremap ;it \textit{}<Enter><++><Esc>k$T}i

autocmd FileType tex inoremap ;ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ;li <Enter>\item<Space>

autocmd FileType tex inoremap ;fig \begin{figure}<Enter>\centering<Enter>\includegraphics{}<Enter>\caption{<++>}<Enter>\end{figure}\label{<++>}<Enter><Enter><++><Esc>4k$T{i
autocmd FileType tex inoremap ;tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i

autocmd FileType tex inoremap ;s \section{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;ss \subsection{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;sss \subsubsection{}<Enter><Enter><++><Esc>2kf}i

autocmd FileType tex inoremap ;up \usepackage{}<Enter><++><Esc>k$hli

autocmd FileType tex inoremap ;c \begin{lstlisting}[language=]<Enter><++><Enter>\end{lstlisting}<Esc>?=<Enter>li


