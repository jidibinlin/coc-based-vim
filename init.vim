" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators

Plug 'jackguo380/vim-lsp-cxx-highlight'

Plug 'roxma/nvim-yarp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-clap'
Plug 'liuchengxu/space-vim-theme'
"Plug 'vim-airline/vim-airline'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'easymotion/vim-easymotion'
Plug 'sickill/vim-monokai'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'dracula/vim'
Plug 'l04m33/vlime', {'rtp': 'vim/'}
Plug 'rafi/awesome-vim-colorschemes'
Plug 'puremourning/vimspector'
Plug 'jceb/vim-orgmode'
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

"Plug 'itchyny/lightline.vim'
Plug 'liuchengxu/eleline.vim'
" Initialize plugin system
call plug#end()




"" common setting
set number relativenumber
set shortmess+=c
set signcolumn=yes
set laststatus=2

set guifont="DejaVuSansMono Nerd Font:h16"


autocmd CursorHold * silent call CocActionAsync('highlight')
"let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#vista#enabled = 1
"let g:airline#extensions#tabline#enabled = 1
let g:rainbow_active = 1
let maplocalleader = "\<Space>"


""" themes
    "colorscheme space_vim_theme
    colorscheme molokai
"    let g:airline_powerline_fonts = 1
    "let g:airline_theme='badwolf'
"    let g:airline_theme='dracula'
"""""""let g:indentLine_setColors = 0
set showmatch
set smarttab
set shiftwidth=4
set tabstop=4
set expandtab
set termguicolors


""" set Tranparency
"highlight Normal guibg=none
"highlight NonText guibg=none

" Remap for format selected region
xmap <leader>lf  <Plug>(coc-format-selected)
nmap <leader>lf  <Plug>(coc-format-selected)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" explorer
nmap <f2> :CocCommand explorer<CR>

" vista
nmap <leader>tg :Vista<CR>

" Clap
nmap <leader>ff :Clap<CR>



inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)


" vimSpector
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

"eleline
let g:eleline_powerline_fonts = 1


""coc highlight
hi CocCursorRange guibg=#b16286 guifg=#ebdbb2
hi default CocHighlightText  guibg=#725972 ctermbg=96
hi CocWarningSign  ctermfg=32 ctermbg=NONE guifg=#0087d7 guibg=NONE
hi CocErrorSign  ctermfg=32 ctermbg=NONE guifg=#F92672 guibg=#3B3A32


