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

" Map File explorer
map <leader>e :Vexplore <cr>

" switch between files
map ,, <C-^>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
