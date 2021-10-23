
"" git-nvim-theme
" Vim Script
"colorscheme github_*
"
" Lua
lua << EOF

-- Lua

-- Example config in Lua
require("github-theme").setup({

	-- Color 
 --	theme_style = "dark", 
 	theme_style = "dark_default",
 -- theme_style = "dimmed",
 -- theme_style = "light",
 -- theme_style = "light_default",

  comment_style = "italic",
  keyword_style = "italic",
  function_style = "italic",
  variable_style = "italic",

 -- functionStyle = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"}
})

EOF

