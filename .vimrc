" Global settings "
set number
set laststatus=2
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Source plugins "
so ~/.vim/plugins.vim

" Vim-plug autoinstall "
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Key mappings "
map <C-l> :Files<CR>
map <C-o> :NERDTreeToggle<CR>

let g:lightline = {
  \     'colorscheme': 'wombat',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'gitbranch']]
  \     },
  \     'component_function': {
  \         'gitbranch': 'gitbranch#name'
  \     }
  \ }

