if has("autocmd")

  " Remember last location in file, but not for commit messages.
  au BufReadPost * if &filetype !~ 'commit\c' && line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif

  " make and python use real tabs
  au FileType make    set noexpandtab
  au FileType python  set noexpandtab

  " These files are also Ruby.
  au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,Vagrantfile,Guardfile,config.ru}  set ft=ruby

  " These files are also Markdown.
  au BufRead,BufNewFile *.{md,mdown,mkd,mkdn} set ft=markdown

  " <Leader>r or <D-r> to render Markdown in browser.
  au FileType markdown map <buffer> <Leader>r :Mm<CR>
  au FileType markdown map <buffer> <D-r> :Mm<CR>

  " <Leader>r or <D-r> to run CoffeeScript.
  au FileType coffee map <buffer> <Leader>r :CoffeeRun<CR>
  au FileType coffee map <buffer> <D-r> :CoffeeRun<CR>
  " <Leader>R or <D-R> to see CoffeeScript compiled.
  au FileType coffee map <buffer> <Leader>R :CoffeeCompile<CR>
  au FileType coffee map <buffer> <D-R> :CoffeeCompile<CR>

  " Unbreak 'crontab -e' with Vim: http://drawohara.com/post/6344279/crontab-temp-file-must-be-edited-in-place
  au FileType crontab set nobackup nowritebackup

  " Close help windows with just q.
  au FileType HELP map <buffer> q :q<CR>

  " Make terminal Vim trigger autoread more often.
  au WinEnter,BufWinEnter,CursorHold * checktime

  " 'Edit anyway' if swap file exists.
  " Commented out since MacVim started crashing all the time on OS X Lion.
  "au SwapExists * let v:swapchoice = 'e'

endif
