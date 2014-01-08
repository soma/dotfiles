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
Bundle 'jgdavey/vim-turbux'
Bundle 'benmills/vimux'
Bundle 'slim-template/vim-slim'
Bundle 'kien/ctrlp.vim'
Bundle 'elixir-lang/vim-elixir'

" Command-T
let g:CommandTMaxHeight=20
let g:CommandTMatchWindowAtTop=1
set wildignore+=*.o,*.obj,.git,tmp
set wildignore+=public/uploads,db/sphinx

let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_height = 20
let g:ctrlp_show_hidden = 0
let g:ctrlp_max_files = 0
let g:ctrlp_switch_buffer = 0

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }

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


" Vimux
let g:VimuxOrientation = "h"
let g:VimuxUseNearestPane = 1

" turbux
let g:no_turbux_mappings = 1
map M <Plug>SendTestToTmux
map m <Plug>SendFocusedTestToTmux
let g:turbux_command_rspec = 'script/turbux_rspec'

" Rails.vim

" :Rfac item
autocmd User Rails Rnavcommand factory    spec/factories   -suffix=_factory.rb

" :Rfab item
autocmd User Rails Rnavcommand fabricator spec/fabricators -suffix=_fabricator.rb

" :A on lib/foo.rb -> unit/lib/foo_spec.rb
autocmd User Rails/lib/* let b:rails_alternate = 'unit/' . rails#buffer().name()[0:-4] . '_spec.rb'

" :A on unit/lib/foo_spec.rb -> lib/foo.rb
autocmd User Rails/unit/lib/* let b:rails_alternate = rails#buffer().name()[5:-9] . '.rb'

" :A on engines/foo/bar.rb -> {spec,unit}/engines/foo/bar_spec.rb
autocmd User Rails/engines/* let common = rails#buffer().name()[0:-4].'_spec.rb' | let spec = 'spec/'.common | let unit = 'unit/'.common | let b:rails_alternate = filereadable(spec) ? spec : unit

" :A on spec/engines/foo/bar_spec.rb -> engines/foo/bar.rb
autocmd User Rails/spec/engines/* let b:rails_alternate = rails#buffer().name()[5:-9] . '.rb'

" :A on unit/engines/foo/bar_spec.rb -> engines/foo/bar.rb
autocmd User Rails/unit/engines/* let b:rails_alternate = rails#buffer().name()[5:-9] . '.rb'
