-- return {"ellisonleao/gruvbox.nvim", priority = 1000 , 
--   config = function()
--         vim.cmd.colorscheme "gruvbox"
--  end
-- }
-- return {
--     "dylanaraps/wal.vim",
--     configs = function()
--         local config = require("wal")
--         vim.cmd.colorscheme "wal"
--     end
-- }
return{ "catppuccin/nvim", name = "catppuccin", priority = 1000 ,
    config = function()
    require("catppuccin").setup({
        flavour = "macchiato", -- latte, frappe, macchiato, mocha ,auto
        background = { -- :h background
            light = "latte",
        },
        transparent_background = true, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
            enabled = false, -- dims the background color of inactive window
            shade = "light",
            percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesitter = true,
            notify = false,
            mini = {
                enabled = true,
                indentscope_color = "",
            },
            -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
    end
}