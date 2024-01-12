" LUA stuff for now
lua require('plugins')
lua require('_telescope')
lua require('_treesitter')

" BAR
set termguicolors
lua require('feline').setup()

" COLOR THEME
colorscheme catppuccin-frappe" catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
" Transparent background
highlight Normal guibg=none
highlight NonText guibg=none
highlight StatusLine guibg=none
hi NormalNC ctermbg=NONE guibg=NONE

" LEADER
nnoremap <SPACE> <Nop>
let mapleader=" "

set nocompatible              " required
filetype off                  " required


" STANDARD SETTINGS
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
set autoindent
set smartindent
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
set textwidth=120
set filetype=1
autocmd Filetype py setlocal ts=4 sw=4 expandtab
autocmd Filetype cpp setlocal ts=3 sw=3 expandtab
autocmd Filetype c setlocal ts=3 sw=3 expandtab
set t_Co=256
syntax on
set number
" Toggle relative line number
" nmap <leader>trln :set invrelativenumber<CR>
"let python_highlight_all=1
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */
set hlsearch

" Remaps STANDARD
inoremap ii <esc>
nnoremap qq :!python3 %
:vmap // :s:^://<cr>
" Curly brace
inoremap { {}<Esc>ha

" Move between windows
" nnoremap C-h <C-w>h
" nnoremap C-j <C-w>j
" nnoremap C-k <C-w>k
" nnoremap C-l <C-w>l

" Move between tabs
nnoremap <leader>l gt
nnoremap <leader>h gT

" vertical split and horizontal split
nnoremap <leader>v <C-w>v

"open cur in new tab
nnoremap <leader>t <C-w>T

" open header or cpp file with alt+o
nnoremap <A-o> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" resize width
nnoremap <leader>+ :vert res +5<CR>
nnoremap <leader>- :vert res -5<CR>


" Split all windows to right
set splitright

" Below is for nvim
set guicursor=i-c:hor100

" search word under cursor
nnoremap <expr> * ':%s/'.expand('<cword>').'//gn<CR>``'


" Show whitespace in the current buffre
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()
"Remove whitespace
nnoremap <silent> <leader>rs :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>



"#### PLUGINS #####"
"

" NERDTree Settings
" Open nerd tree with ctrl+n
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n>f :NERDTreeFind<CR>

"cpp modern
" enable hihlighting of C++11 attributes
" let g:cpp_attributes_highlight = 1

" " Highlight struct/class member variables (affects both C and C++ files)
" let g:cpp_member_highlight = 1

" " Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" let g:cpp_simple_highlight = 1

" ---- coc -----
" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap silent> K :call ShowDocumentation()<CR><
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Use ctrlk` and `ctrlj` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-j> <Plug>(coc-diagnostic-next)
" set tagfunc to work with coctagfunc
set tagfunc=CocTagFunc
"
nnoremap <leader>os :CocCommand clangd.switchSourceHeader vsplit <CR>
nnoremap <leader>oo :CocCommand clangd.switchSourceHeader <CR>

" Use tab to finnish auto-complete
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" show docs
nnoremap <silent> <leader>doc :call CocActionAsync('doHover')<cr>

" ---- LSP cxx Highlight -----
" let g:lsp_cxx_hl_use_text_props = 1

" ------------Telescope------------------
nnoremap <C-p> <cmd>Telescope find_files<cr>
"nnoremap <C-f> <cmd>Telescope live_grep<cr>

" --------DiffView----------
" Open normal file view
nmap <leader>dvo :DiffviewOpen<CR>
" Open file history
nmap <leader>dvh :DiffviewFileHistory %<CR>


"Semshi python highlighter
" let g:semshi#error_sign = v:false

" jusinmk/vim-sneak better find motion
"Adds labels to all the matches. Like in vimeum on chrome.
let g:sneak#label = 1
" One stroke
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" two strokes
map f <Plug>Sneak_s
map F <Plug>Sneak_S
