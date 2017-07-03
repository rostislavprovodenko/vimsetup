mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
cd ~/.vim/bundle && git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim

cd ~/.vim/bundle
git clone git://github.com/tpope/vim-sensible.git

cd ~/.vim/bundle
git clone git://github.com/tpope/vim-fugitive.git

# requirement for tsuquyomi
git clone https://github.com/Shougo/vimproc.vim.git ~/.vim/bundle/vimproc.vim
pushd ~/.vim/bundle/vimproc.vim
make
popd

git clone https://github.com/Quramy/tsuquyomi.git ~/.vim/bundle/tsuquyomi
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
vim -u NONE -c "Helptags" -c q
