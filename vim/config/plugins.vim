" :BI to re-source this file and then install bundles with Vundle.
cabbrev BI :source ~/.vim/config/plugins.vim<CR> :BundleInstall<CR>

Bundle 'henrik/git-grep-vim'
Bundle 'henrik/vim-indexed-search'
Bundle 'henrik/vim-ruby-runner'
Bundle 'henrik/vim-yaml-flattener'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'taq/vim-rspec'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'vim-scripts/file-line'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'wincent/Command-T'
Bundle 'vim-ruby/vim-ruby'

" Command-T
let g:CommandTMaxHeight=20
let g:CommandTMatchWindowAtTop=1
set wildignore+=*.o,*.obj,.git,tmp
set wildignore+=public/uploads,db/sphinx

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" NERDTree
let NERDTreeIgnore=['\.rbc$', '\~$']
" Disable menu
let g:NERDMenuMode=0

" Commentary.
xmap <leader>c <Plug>Commentary
nmap <leader>c <Plug>Commentary
nmap <leader>cc <Plug>CommentaryLine
nmap <leader>cu <Plug>CommentaryUndo

" YankRing
" Don't map gp and gP.
let g:yankring_paste_using_g = 0
let g:yankring_history_dir = '~/.vim/backup'

