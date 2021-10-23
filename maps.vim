"" System
" Switch Header and Source
map <A-o> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

"" Move lines 
nnoremap <A-S-j> :m .+1<CR>==
nnoremap <A-S-k> :m .-2<CR>==
inoremap <A-S-j> <Esc>:m .+1<CR>==gi
inoremap <A-S-k> <Esc>:m .-2<CR>==gi
vnoremap <A-S-j> :m '>+1<CR>gv=gv
vnoremap <A-S-k> :m '<-2<CR>gv=gv

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-l>    :vertical resize -2<CR>
nnoremap <M-h>    :vertical resize +2<CR>

" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" Sessions 
nmap <Leader>ss :<C-u>mksession<CR>
"nmap <Leader>sl :<C-u>SessionLoad<CR>

"" Dashboard
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>


"" Vim-Mundo
"" https://github.com/simnalamburt/vim-mundo
nnoremap <leader>u :MundoToggle<CR>
"" / for search
"" arrows or hjkl for move 
"" enter or p, P 

"" Open in browser
"nmap <silent> gx :<cmd>OpenBrowser <cWORD><cr>
let g:netrw_nogx = get(g:, 'netrw_nogx', 1)
  nmap gx <Plug>(openbrowser-open)
  vmap gx <Plug>(openbrowser-open)

"" ToggleTerm
" "let g:toggleterm_terminal_mapping = '<leader>te'
" nnoremap <leader>te <cmd>ToggleTerm<cr>
"" ToggleTerm with Cmake config 
command! -count=1 TermCMakeGenCompileDebug lua require'toggleterm'.exec("./SH_files/CMake_GCD",    <count>, 12)
command! -count=1 TermCMakeGenCompileRelease lua require'toggleterm'.exec("./SH_files/CMake_GCR",    <count>, 12)
command! -count=1 TermCMakeCompileDebug lua require'toggleterm'.exec("./SH_files/CMake_CD", <count>, 12)
command! -count=1 TermCMakeCompileRelease lua require'toggleterm'.exec("./SH_files/CMake_CR", <count>, 12)
command! -count=1 TermCMakeComRun lua require'toggleterm'.exec("./SH_files/CMake_compile_run \"$(basename $PWD)\"", <count>, 12)

nnoremap <leader>tev <cmd>ToggleTerm size=50 direction=vertical <cr>
nnoremap <leader>teh <cmd>ToggleTerm size=10 direction=horizontal <cr>
nnoremap <leader>tef <cmd>ToggleTerm direction=float <cr>

"" 
nnoremap <leader>tcgd <cmd>TermCMakeGenCompileDebug<cr>
nnoremap <leader>tcgr <cmd>TermCMakeGenCompileRelease<cr>
nnoremap <leader>tccd <cmd>TermCMakeCompileDebug<cr>
nnoremap <leader>tccr <cmd>TermCMakeCompileRelease<cr>
nnoremap <leader>tcr <cmd>TermCMakeComRun<cr>


" Symbols Outline
nnoremap <leader>oo <cmd>SymbolsOutline<cr>

"" vim-snip
" To add a new for its own type:
" 1) open the file and :VsnipOpen
imap <expr> <CR>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <CR>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
"imap <expr> <Tab>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
"smap <expr> <Tab>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" " Expand
" imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
"
" " Expand or jump
" imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
"
" " Jump forward or backward
" imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
" smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
"

"" Telescope
" https://github.com/nvim-telescope/telescope.nvim
" Find files using Telescope command-line sugar.
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>fcs <cmd>Telescope cmake select_target <cr>
nnoremap <leader>fcp <cmd>Telescope cmake create_project <cr>
nnoremap <leader>fcb <cmd>Telescope cmake select_build_type <cr>

nnoremap <leader>fccbb <cmd>CMake build<cr>
nnoremap <leader>fccba <cmd>CMake build_all<cr>
nnoremap <leader>fccbd <cmd>CMake build_and_debug<cr>
nnoremap <leader>fcccg <cmd>CMake configure<cr>
nnoremap <leader>fcccn <cmd>CMake clean<cr>
nnoremap <leader>fcccr <cmd>CMake clear_cache<cr>
nnoremap <leader>fccr <cmd>CMake run<cr>
nnoremap <leader>fccbr <cmd>CMake build_and_run<cr>
nnoremap <leader>fccd <cmd>CMake debug<cr>

" nnoremap <leader>ff <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<cr>

nnoremap <leader>fp <cmd>lua require('telescope').extensions.projects.projects( require('telescope.themes').get_dropdown({hidden = true}))<cr>
nnoremap <leader>fa <cmd>lua require('telescope.builtin').find_files( )<cr>
nnoremap <leader>fz <cmd>lua require('telescope.builtin').find_files{ file_ignore_patterns = {"build", ".cache"} }<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files{ defaults = {file_ignore_patterns = {"build", ".cache"} } , cwd = vim.fn.expand('%:p:h') } <cr>
nnoremap <leader>fq <cmd>lua require('telescope.builtin').quickfix()<cr>
nnoremap <leader>fm <cmd>lua require('telescope.builtin').marks()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
"nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
":nnoremap <Leader>pp :lua require'telescope.builtin'.planets{}
:nnoremap <Leader>fw :lua require'telescope.builtin'.file_browser()<cr>
:nnoremap <Leader>fs :lua require'telescope.builtin'.grep_string()<cr>
:nnoremap <Leader>flr :lua require'telescope.builtin'.lsp_references()<cr>
:nnoremap <Leader>fls :lua require'telescope.builtin'.lsp_workspace_symbols()<cr>
:nnoremap <Leader>fl! :lua require'telescope.builtin'.lsp_workspace_diagnostics()<cr>

"" #######################################################
"
"nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files( require('telescope.themes').get_dropdown({hidden = true}))<cr>
"nnoremap <leader>fq <cmd>lua require('telescope.builtin').quickfix(require('telescope.themes').get_dropdown({}))<cr>
"nnoremap <leader>fm <cmd>lua require('telescope.builtin').marks(require('telescope.themes').get_dropdown({}))<cr>
"nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<cr>
"nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<cr>
""nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
"":nnoremap <Leader>pp :lua require'telescope.builtin'.planets{}
":nnoremap <Leader>fw :lua require'telescope.builtin'.file_browser(require('telescope.themes').get_dropdown({}))<cr>
":nnoremap <Leader>fs :lua require'telescope.builtin'.grep_string(require('telescope.themes').get_dropdown({}))<cr>
":nnoremap <Leader>flr :lua require'telescope.builtin'.lsp_references(require('telescope.themes').get_dropdown({}))<cr>
":nnoremap <Leader>fls :lua require'telescope.builtin'.lsp_workspace_symbols(require('telescope.themes').get_dropdown({}))<cr>
":nnoremap <Leader>fl! :lua require'telescope.builtin'.lsp_workspace_diagnostics(require('telescope.themes').get_dropdown({}))<cr>
"
""
:nnoremap <Leader>fli :lua require'telescope.builtin'.lsp_implementations{}<cr>
:nnoremap <Leader>fld :lua require'telescope.builtin'.lsp_definitions{}<cr>
:nnoremap <Leader>flt :lua require'telescope.builtin'.lsp_type_definitions(require('telescope.themes').get_dropdown({}))<cr>
" nnoremap <leader>fp <cmd>Telescope projects<CR>


"" Lsp Saga
"  " lsp provider to find the cursor word definition and reference
"  "nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
"  " or use command LspSagaFinder
"  nnoremap <silent> gh :Lspsaga lsp_finder<CR>
"  
"  " code action
"  "nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
"  "vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
"  " or use command
"  nnoremap <silent><leader>lsa :Lspsaga code_action<CR>
"  vnoremap <silent><leader>lsr :<C-U>Lspsaga range_code_action<CR>
"  
"  " show hover doc
"  "nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
"  " or use command
"  nnoremap <silent><leader>lsk :Lspsaga hover_doc<CR>
"  " nnoremap <silent>K :Lspsaga hover_doc<CR>
"  
"  " scroll down hover doc or scroll in definition preview
"  nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
"  " scroll up hover doc
"  nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
"  
"  " show signature help
"  "nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
"  " or command
"  nnoremap <silent> gs :Lspsaga signature_help<CR>
"  
"  " and you also can use smart_scroll_with_saga to scroll in signature help win
"  
"  " rename
"  "nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
"  " or command
"  nnoremap <silent>gr :Lspsaga rename<CR>
"  " close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`
"  
"  " preview definition
"  "nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
"  " or use command
"  nnoremap <silent> gd :Lspsaga preview_definition<CR>
"  " can use smart_scroll_with_saga to scroll
"  
"  " show
"  nnoremap <silent><leader>lsd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
"  
"  nnoremap <silent> <leader>lsd :Lspsaga show_line_diagnostics<CR>
"  " only show diagnostic if cursor is over the area
"  nnoremap <silent><leader>lsc <cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>
"  
"  " jump diagnostic
"  "nnoremap <silent> [e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
"  "nnoremap <silent> ]e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
"  " or use command
"  nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
"  nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>
"  
"  " float terminal also you can pass the cli command in open_float_terminal function
"  "nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR> -- or open_float_terminal('lazygit')<CR>
"  "tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>
"  " or use command
"  nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
"  tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>
"  
"  highlight link LspSagaFinderSelection Search
"  " or
"  " highlight link LspSagaFinderSelection guifg='#ff0000' guibg='#00ff00' gui='bold'
"  
"" #############################################################
"" Debug vimspector_config
"
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

"  " for normal mode - the word under the cursor
"  nmap <Leader>di <Plug>VimspectorBalloonEval
"  " for visual mode, the visually selected text
"  xmap <Leader>di <Plug>VimspectorBalloonEval
"  
"  nnoremap <leader>da :call vimspector#Launch()<CR>
"  nnoremap <leader>dx :call vimspector#Reset()<CR>
"  nnoremap <leader>dso :call vimspector#StepOut()<CR>
"  nnoremap <leader>dsi :call vimspector#StepInto()<CR>
"  nnoremap <leader>dsv :call vimspector#StepOver()<CR>
"  nnoremap <leader>dss :call vimspector#Stop()<CR>
"  nnoremap <leader>dp :call vimspector#Pause()<CR>
"  nnoremap <leader>dr :call vimspector#Restart()<CR>
"  nnoremap <leader>dc :call vimspector#Continue()<CR>
"  nnoremap <leader>dt :call vimspector#RunToCursor()<CR>
"  nnoremap <leader>dbb :call vimspector#ToggleBreakpoint()<CR>
"  nnoremap <leader>dbh :call vimspector#ToggleBreakpoint({ hit count expr })<CR>
"  nnoremap <leader>dbx :call vimspector#ToggleBreakpoint( trigger expr)<CR>
"  nnoremap <leader>dw :call vimspector#AddWatch()<CR>
"  nnoremap <leader>dX :call vimspector#ClearBreakpoints()<CR>
"  nnoremap <leader>d? :call AddToWatch()<CR>
"  func! AddToWatch()
"  	let word = expand("<cexpr>")
"  	call vimspector#AddWatch(word)
"  endfunction
  
"" Dap
    nnoremap <silent> <leader>dc :lua require'dap'.continue() require("dapui").open()<CR>
    nnoremap <silent> <leader>dsv :lua require'dap'.step_over()<CR>
    nnoremap <silent> <leader>dsi :lua require'dap'.step_into()<CR>
    nnoremap <silent> <leader>dso :lua require'dap'.step_out()<CR>
    nnoremap <silent> <leader>db :lua require'dap'.toggle_breakpoint()<CR>
    nnoremap <silent> <leader>dl :lua require'dap'.list_breakpoints()<CR>
    nnoremap <silent> <leader>dB :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
    nnoremap <silent> <leader>dp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
    nnoremap <silent> <leader>do :lua require'dap'.repl.open() require("dapui").open()<CR><C-w>o
    nnoremap <silent> <leader>drl :lua require'dap'.run_last()<CR>
    nnoremap <silent> <leader>drr :lua require'dap'.run()<CR>
    nnoremap <silent> <leader>dx :lua require'dap'.disconnect() require("dapui").close()<CR><C-w>o

    nnoremap <silent> <leader>du :lua require("dapui").toggle()<CR>
	vnoremap <leader>de <Cmd>lua require("dapui").eval()<CR>
	nnoremap <leader>de <Cmd>lua require("dapui").eval()<CR>
	nnoremap <leader>dhh <Cmd>lua require'dap.ui.variables'.visual_hover()<CR>
	nnoremap <leader>dhv <Cmd>lua require'dap.ui.widgets'.hover()<CR>
	"nnoremap <leader>dhv <Cmd>lua require'dap.ui.variables'.hover(function() return vim.fn.expand("<cexpr>") end)<CR>
	nnoremap <leader>d? <Cmd>lua local widgets=require'dap.ui.widgets'; widgets.centered_float(widgets.scopes)<CR>

""	nnoremap <leader>dtc <Cmd>lua require'telescope'.extensions.dap.commands{}<CR>
""	nnoremap <leader>dtf <Cmd>lua require'telescope'.extensions.dap.configurations{}<CR>
""	nnoremap <leader>dtl <Cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>
""	nnoremap <leader>dtv <Cmd>lua require'telescope'.extensions.dap.variables{}<CR>
""	nnoremap <leader>dtr <Cmd>lua require'telescope'.extensions.dap.frames{}<CR>
""
"" ##############################################################
"" Markdown Previw Glow
noremap <leader>pg :Glow<CR>

"" ##############################################################
"" Bufferline

" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <A-Right> :BufferLineCycleNext<CR>
nnoremap <A-Left> :BufferLineCyclePrev<CR>

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <C-A-Right> :BufferLineMoveNext<CR>
nnoremap <C-A-Left> :BufferLineMovePrev<CR>

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>
nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>


