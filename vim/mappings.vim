" Map leader key to comma
let mapleader = ","

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" switch between files
map ,, <C-^>

" map command-t refresh
map <leader>tr :CommandTFlush<cr> 

" run all specs
map <leader>r :w\|!rspec spec<cr>
