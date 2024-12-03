-- Default options:
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {
            -- SpellBad	Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
            SpellBad = { undercurl = undercurl, underline = not undercurl, sp = "#98BB6C" },
            -- SpellCap	Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
            SpellCap = { undercurl = undercurl, underline = not undercurl, sp = "#658594" },
            -- SpellLocal	Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
            SpellLocal = { undercurl = undercurl, underline = not undercurl, sp = "#658594" },
            -- SpellRare	Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
            SpellRare = { undercurl = undercurl, underline = not undercurl, sp = "#98BB6C" },
        }
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa");
