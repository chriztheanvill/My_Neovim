" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
"""" FCITX
Plug 'h-hg/fcitx.nvim'

"""" Color
Plug 'norcalli/nvim-colorizer.lua'

"""" Line 
" Plug 'hoob3rt/lualine.nvim'
Plug 'nvim-lualine/lualine.nvim'

"" ToggleTerm
Plug 'akinsho/toggleterm.nvim'

"""" Menu
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }
" To use Python remote plugin features in Vim, can be skipped
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'nixprime/cpsm'
Plug 'romgrk/fzy-lua-native'

"""" Bookmarks 
Plug 'MattesGroeger/vim-bookmarks'

"""" Buffers
Plug 'akinsho/bufferline.nvim'

"""" Undo
"" vim-mundo https://github.com/simnalamburt/vim-mundo
Plug 'simnalamburt/vim-mundo'

"""" Completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-calc'
Plug 'hrsh7th/cmp-latex-symbols'

"""" Markdown glow
Plug 'ellisonleao/glow.nvim'
Plug 'ixru/nvim-markdown'
Plug 'dhruvasagar/vim-table-mode'

"""" Parenteses
Plug 'windwp/nvim-autopairs'

" For vsnip user.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Complete icons
Plug 'onsails/lspkind-nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-lsputils'
Plug 'ray-x/lsp_signature.nvim'
Plug 'nvim-lua/lsp-status.nvim'

" Neovim-cmake
Plug 'Shatur/neovim-cmake'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'skywind3000/asyncrun.vim'
Plug 'theHamsta/nvim-dap-virtual-text'

" LSP Saga
" Plug 'glepnir/lspsaga.nvim' ""<-- Original
" Plug 'tami5/lspsaga.nvim', {'branch': 'nvim51'}

" Vimspector GDB
" Run: :VimspectorInstall
" For Updates: :VimspectorUpdate
Plug 'puremourning/vimspector'

"" Git 
" vim fugitive
Plug 'tpope/vim-fugitive'

" vim-gutter
Plug 'airblade/vim-gitgutter'

" icons
Plug 'lambdalisue/nerdfont.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" indent highlight
Plug 'lukas-reineke/indent-blankline.nvim'

" NeoVim FZF
Plug 'vijaymarupudi/nvim-fzf'

" Outline
Plug 'simrat39/symbols-outline.nvim'

" Project
Plug 'ahmedkhalf/project.nvim' 
"Plug 'rmagatti/auto-session'

" Tree
"Plug 'preservim/nerdtree' " Delete
Plug 'kyazdani42/nvim-tree.lua'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'dhruvmanila/telescope-bookmarks.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-telescope/telescope-dap.nvim'

" TODO: Comments
Plug 'folke/todo-comments.nvim'
Plug 'numToStr/Comment.nvim'

" Web 
Plug 'tyru/open-browser.vim'
Plug 'itchyny/vim-external'

" Treesitter
" Run
" :TSInstall cpp llvm glsl bash json lua
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter-refactor'

"""" Initial 
"" Startify
"Plug 'mhinz/vim-startify'

"" Dashboard
Plug 'glepnir/dashboard-nvim'

" Which-key
Plug 'folke/which-key.nvim'

"""""""""""""""""""""""""
"" Themes
Plug 'joshdick/onedark.vim' " OLD "
" Plug 'monsonjeremy/onedark.nvim'
" Plug 'navarasu/onedark.nvim'
" Plug 'ful1e5/onedark.nvim'
Plug 'olimorris/onedarkpro.nvim'
Plug 'projekt0n/github-nvim-theme'
" Plug 'marko-cerovac/material.nvim' "Does nothing
Plug 'tanvirtin/monokai.nvim'

" Make sure you use single quotes
" Initialize plugin system
call plug#end()
