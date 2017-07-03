execute pathogen#infect()
set nocompatible
syntax on
filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ts
let g:tsuquyomi_completion_detail = 1

" syntastic + ts
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0 

" disable syntastic checkers
let g:syntastic_html_checkers=['']
let g:syntastic_check_on_open = 0

" auto reload vim on vimrc change
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" custom key mappings
nmap <C-K> :CtrlPBuffer<CR>
nmap <C-F><C-F> :NERDTreeFind<CR>
" auto open NERDTree
autocmd vimenter * NERDTree

" status line customizations
set statusline+=%F

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set number
" remove trailing whitespace on :w
autocmd BufWritePre * %s/\s\+$//e 
" ctrlp config
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
