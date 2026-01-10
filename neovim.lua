return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#131328",
                bg_dark = "#131328",
                bg_highlight = "#3d3d64",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ECC0A0",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#ECC0A0",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#7d7da4",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#DE5F65",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#f1a8ab",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#AF8878",
                -- green: Comments, strings, success states, git additions
                green = "#EC8B74",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#aab5cb",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#9498c2",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#c69ec7",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#e9d7e9",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
