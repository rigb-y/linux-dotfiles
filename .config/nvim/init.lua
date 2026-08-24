require("hgoose")

vim.cmd([[hi SignColumn guibg=Normal]])
vim.cmd([[set autoindent]])
-- vim.cmd("colorscheme ron")
-- vim.cmd("colorscheme retrobox")
-- vim.cmd("colorscheme unokai")

-- Note: gruvYellow guifg=#fabd2f
vim.cmd("colorscheme gruv")
vim.cmd[[
    hi gruvGreenBold guifg=#579666
    hi gruvYellow guifg=#ffaac3
    hi gruvOrange guifg=#ffaac3
    hi LineNr guifg=#bdbdbd guibg=#171717
    hi SignColumn guibg=#171717
    hi delimiter guifg=#964246
    hi Operator guifg=#69B6B8

    hi gruvFg1 guifg=ebdbb2
    hi def link @lsp.type.parameter.c gruvFg1
]]

-- vim.cmd("colorscheme monokai-pro-classic")
-- vim.cmd[[
--     hi normal guibg=#171717
--     hi LineNr guifg=#bdbdbd guibg=#171717
--     hi SignColumn guibg=#171717
-- ]]

-- vim.cmd("colorscheme delek")
-- vim.cmd[[
--     hi normal guibg=#fff8dc guifg=#000000
--     hi LineNr guifg=#bdbdbd guibg=#171717
--     hi SignColumn guibg=#171717 guifg=#ffffff
-- ]]

-- vim.cmd("hi normal guibg=#1e1f22")
-- vim.cmd("colorscheme dracula_gruvback")
-- vim.cmd("colorscheme oxocarbon")

vim.opt.spell = true
vim.opt.spelllang = 'en'
vim.cmd[[
    hi SpellBad ctermfg=red guifg=red
    hi SpellCap ctermfg=blue guifg=blue
    hi NormalFloat guibg=#282828
    hi BufferLineFill guibg=#bdbdbd
    hi EndOfBuffer guibg=#bdbdbd
]]

vim.cmd[[
    command! -nargs=1 Look cexpr [] | bufdo vimgrepadd /<args>/gj % | copen
]]

-- Manual load of registers with macros
vim.cmd[[
    map <CR> @
    let @a = "i\\textbf{\<Esc>Ea}\<Esc>"
    let @b = "^i\\item\<Space>bold\<M-Tab>\<Esc>sa\<BS>\<Esc>f:\<Ignore>i}\<Esc>h"
    let @c = "^i\\item\<Space>\<Esc>h"
    let @d = "^f}\<Ignore>f{\<Ignore>i\<CR>\<Esc>"
]]

-- vim.api.nvim_create_user_command("Colorschemes", function()
--   local schemes = vim.fn.getcompletion("", "color")
--   vim.ui.select(schemes, { prompt = "Select colorscheme:" }, function(choice)
--     if choice then
--       vim.cmd("colorscheme " .. choice)
--     end
--   end)
-- end, {})
