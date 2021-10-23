" To reload the config :source %

set title
set hidden
set noswapfile
set nobackup
set encoding=UTF-8
set linebreak
set emoji
set pumheight=10			"Pop up smaller"
set ruler					"Show the cursor all the time"
set splitbelow				"H splits below"
set splitright
set nocompatible            " disable compatibility to old-time vi
set noerrorbells
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set nohlsearch				" Stop highlight
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
"set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
"set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set smartindent
set smarttab
"set laststatus=2			"2=Always,1=2moreWindows,0=Never
set guicursor=a:blinkon100
set showtabline=2 			"Always show tabs"
 set updatetime=300			"Faster completion"
 set timeoutlen=100			"default is 1000ms"
set number                  " add line numbers
"set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
"set synmaxcol=4000"
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set t_Co=256				"support 256 colors"

" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

"" Undo 
" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.config/nvim/vim-mundo

"" Fold
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
" Start Unfolded"
"au BufRead * normal zR
set foldlevel=99 "99 Unfolded , 0 Folded"

" Wildmenu
" Finding files - Search down into subfolders
set wildmenu
"set path+=**
set wildignore+=*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,\~$,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk,*/cache/*,build/

set wildmode=longest:list,full  " get bash-like tab completions
set termguicolors

"" Restore position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" set guifont=Fira\ Code\ Regular\ Nerd\ Font\ Complete\ 12
"set guifont=DroidSansMono\ Nerd\ Font\ 11

"" For Markdown
set conceallevel=2
" Add asterisks in block comments
set formatoptions+=r


"" To install plugins ""
"" "" Plug Vim https://github.com/junegunn/vim-plug

" Plugins are in ~/.vim/plugged
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugins-config.vim
so ~/.config/nvim/maps.vim

"" Themes
" so ~/.config/nvim/themes/onedark.vim
" so ~/.config/nvim/themes/onedark_navarasu.vim " Navarasu "
" so ~/.config/nvim/themes/onedark_ful.vim " Navarasu "
so ~/.config/nvim/themes/monokai_tanvirtin.vim

" so ~/.config/nvim/themes/onedark_pro.vim
"so ~/.config/nvim/themes/onedark_OLD.vim
 " so ~/.config/nvim/themes/github-vim-theme.vim
" so ~/.config/nvim/themes/material.vim

"" Cursor line
hi CursorLine guibg=#3a3a3a guifg=NONE
