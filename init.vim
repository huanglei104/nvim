call plug#begin('~/.config/nvim/plugins')
	Plug 'vim-airline/vim-airline'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'honza/vim-snippets'
	Plug 'preservim/nerdcommenter'
	Plug 'ntpeters/vim-better-whitespace'
	Plug 'mhartington/oceanic-next'
	Plug 'ryanoasis/vim-devicons'
	Plug 'lfv89/vim-interestingwords'
call plug#end()

"common setting
let mapleader=";"
set number
set hidden
set nobackup
set nowritebackup
set cursorline
set tabstop=4
set shiftwidth=4
let g:asmsyntax = 'nasm'
augroup OnlyCursorLine
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END
colorscheme OceanicNext

"airline settings
let g:airline_extensions = ['coc', 'tabline', 'quickfix']
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'short_path'
let g:airline_theme='oceanicnextlight'
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <silent>> <Plug>AirlineSelectNextTab
nmap <silent>< <Plug>AirlineSelectPrevTab

"coc setting
let g:snips_author = 'huanglei104'
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent><leader>a :CocCommand clangd.switchSourceHeader<CR>
nmap <silent><leader>b :CocList --strict buffers<CR>
nmap <silent><leader>d <Plug>(coc-definition)
nmap <silent><leader>e :CocCommand explorer<CR>
nmap <silent><leader>f :CocList --strict files<CR>
nmap <silent><leader>g :call CocActionAsync('doHover')<CR>
nmap <silent><leader>l :CocList locationlist<CR>
nmap <silent><leader>m :CocList --strict mru<CR>
nmap <silent><leader>r <Plug>(coc-references)
nmap <silent><leader>s :CocList grep<CR>
nmap <silent><leader>t :CocList --strict outline<CR>
nmap <silent><leader>R <Plug>(coc-rename)
nmap <silent>( <Plug>(coc-diagnostic-next)
nmap <silent>) <Plug>(coc-diagnostic-prev)

let g:coc_global_extensions = [
			\'coc-word',
			\'coc-explorer',
			\'coc-vimlsp',
			\'coc-snippets',
			\'coc-pairs',
			\'coc-lists',
			\'coc-xml',
			\'coc-json',
			\'coc-clangd',
			\'coc-cmake',
			\'coc-sh'
			\]

"interestingwords setting
let g:interestingWordsRandomiseColors = 1
nnoremap <silent>* :call InterestingWords('n')<cr>
nnoremap <silent><leader>* :call UncolorAllWords()<cr>
nnoremap <silent>n :call WordNavigation(1)<cr>
nnoremap <silent>N :call WordNavigation(0)<cr>
