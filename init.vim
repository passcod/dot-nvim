set t_Co=256

if has('vim_starting')
  set runtimepath+=~/.config/nvim/plugged/vim-plug/
endif
call plug#begin(expand('~/.config/nvim/plugged/'))

" Vim Plug is bootstrapped that way, so it updates itself
" in the same step as everything else. But you do need to
" set up a symlink in its install directory:
"
"     cd ~/.config/nvim/plugged/vim-plug; ln -s . autoload
Plug 'junegunn/vim-plug'

" 'Normalize.vim' at the top...
Plug 'tpope/vim-sensible'

Plug 'airblade/vim-gitgutter'
Plug 'cespare/vim-toml'
Plug 'digitaltoad/vim-jade'
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'itchyny/lightline.vim'
Plug 'jayflo/vim-skip'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'moll/vim-node'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim'
Plug 'othree/yajs.vim'
Plug 'posva/vim-vue'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'
Plug 'tpope/vim-projectionist'
Plug 'vim-ruby/vim-ruby'

call plug#end()

" Don't show `-- INSERT --` when Lightline already does
set noshowmode

" Update interval in ms for things like git gutter
set updatetime=100

" Enable True Colour support
"set termguicolors

" Nice understated theme
let g:lightline = { 'colorscheme': 'seoul256' }

" Shortcuts for fzf commands: files, open files, in files
nnoremap <C-p> :Files<CR>
nnoremap <C-o> :Buffers<CR>
nnoremap <C-i> :Rg<space>

" Use ag to respect .gitignore with Ctrl-P
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

" Store fzf history
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Default to open in a new tab, and use ctrl-t for 'same buffer' instead
let g:fzf_action = {
  \ '': 'tab split',
  \ 'ctrl-t': 'e',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Switch tabs using ctrl y and n
nnoremap <C-n> :tabn<CR>
nnoremap <C-y> :tabp<CR>

" Make sure editorconfig plays nice with others
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Persistent undo history
let &undodir = expand('~/.config/nvim/undo')
set undofile

" Central location for backup and swap files
let &backupdir = expand('$XDG_RUNTIME_DIR')
let &directory = expand('$XDG_RUNTIME_DIR')

" Disable Tar reading (conflicts with Splat! .lrp files)
let g:loaded_tarPlugin = 1
let g:loaded_tar = 1

" When using `J` or `gqip`, don't double-space sentences
set nojoinspaces

set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

set mouse=a
set number
set grepprg=rg\ --line-number\ $*

set ignorecase
set smartcase
set hlsearch

" Swap ; and :
nnoremap ; :
nnoremap : ;

