-- Lua
local options = require("core.options")

require("onedark").setup(
    {
        comment_style = "italic",
        keyword_style = "italic",
        function_style = "italic",
        variable_style = "italic",
        hide_inactive_statusline = false,
        dark_sidebar = false,
        dark_float = false,
        transparent = options.transparency_background,
        transparent_sidebar = options.transparent_background
    }
)

vim.cmd([[colorscheme onedark]])
