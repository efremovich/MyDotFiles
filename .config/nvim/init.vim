" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" format code
Plug 'beanworks/vim-phpfmt'

"Plug 'terryma/vim-multiple-cursors'
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'majutsushi/tagbar'

" Plugin options
Plug 'nsf/gocode',  {'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
" VUE JS

" Fuzzy finding and buffer management
 Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

 " Theme
Plug 'sainnhe/gruvbox-material'
"Plug 'morhetz/gruvbox'
"Plug 'lifepillar/vim-gruvbox8'

" Automatic close parens
"Plug 'jiangmiao/auto-pairs'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'unkiwii/vim-nerdtree-sync'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

"Plug 'storyn26383/vim-vue'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

" auto-close plugin
Plug 'rstacruz/vim-closer'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'
" Snippet support
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'

" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" === Javascript Plugins === "
" Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'voldikss/vim-floaterm'
Plug 'honza/vim-snippets'
Plug 'unblevable/quick-scope'
Plug 'mhinz/vim-startify'
Plug 'vimwiki/vimwiki'
Plug 'blindFS/vim-taskwarrior'
Plug 'tools-life/taskwiki'
Plug 'alvan/vim-closetag'
" Closetags
Plug 'alvan/vim-closetag'

"Plug 'glepnir/galaxyline.nvim'
"Plug 'kyazdani42/nvim-web-devicons' " lua
"Plug 'ryanoasis/vim-devicons' " vimscript

" Initialize plugin system
call plug#end()

nmap <F3> :CocCommand explorer<CR>
nmap <F2> :TagbarToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/plug-config/coc/coc.vim
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
source $HOME/.config/nvim/theme/gruvbox.vim
source $HOME/.config/nvim/plug-config/go.vim
source $HOME/.config/nvim/plug-config/floatterm.vim
source $HOME/.config/nvim/plug-config/closetags.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/denite.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/startify.vim
"luafile $HOME/.config/nvim/lua/nvcodeline.lua
"luafile $HOME/.config/nvim/lua/nvcodeline.lua
"luafile $HOME/.config/nvim/lua/treesitter.lua

" === vim-better-whitespace === "
"   <leader>y - Automatically remove trailing whitespace
nmap <leader>y :StripWhitespace<CR>

" === Search shorcuts === "
"   <leader>h - Find and replace
"   <leader>/ - Claer highlighted search terms while preserving history
map <leader>h :%s///<left><left>
nmap <silent> <leader>/ :nohlsearch<CR>

" === Easy-motion shortcuts ==="
"   <leader>w - Easy-motion highlights first word letters bi-directionally
map <space>m <Plug>(easymotion-bd-w)

autocmd BufReadPost,BufNewFile *.vue setlocal filetype=vue
"autocmd BufReadPost,BufNewFile *.vue
autocmd FileType vue syntax sync fromstart

" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

" Tab navigation like Firefox.
nnoremap <S-C-Tab> :bprevious<CR>
nnoremap <S-Tab>   :bnext<CR>

nmap <silent> <C-d> <Plug>(coc-cursors-word)*
xmap <silent> <C-d> y/\V<C-r>=escape(@",'/\')<CR><CR>gN<Plug>(coc-cursors-range)gn

" Auto-pairs settings
"let g:AutoPairsFlyMode=0


" ============================================================================ "
" ===                                 MISC.                                === "
" ============================================================================ "

" Use preset argument to open it
nmap <space>ed :CocCommand explorer <CR>
nmap <space>ef :CocCommand explorer --preset floating<CR>

" List all presets
nmap <space>el :CocList explPresets

nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

let g:vimwiki_list = [{
	\ 'path': '~/vimwiki',
	\ 'template_path': '~/vimwiki/templates/',
	\ 'template_default': 'default',
	\ 'syntax': 'markdown',
	\ 'ext': '.md',
	\ 'path_html': '~/vimwiki/site_html/',
	\ 'custom_wiki2html': 'vimwiki_markdown',
	\ 'template_ext': '.tpl'}]
nmap <space>x :VimwikiToggleListItem<CR>
	
