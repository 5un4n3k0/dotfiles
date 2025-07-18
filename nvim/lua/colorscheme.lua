--[[
           _                _                         
  ___ ___ | | ___  ___  ___| |__   ___ _ __ ___   ___ 
 / __/ _ \| |/ _ \/ __|/ __| '_ \ / _ \ '_ ` _ \ / _ \
| (_| (_) | | (_) \__ \ (__| | | |  __/ | | | | |  __/
 \___\___/|_|\___/|___/\___|_| |_|\___|_| |_| |_|\___|
                                                      
--]]

-- Author: sunaneko
-- ----------------
-- colorscheme settings
--
-- [Warning] 
--   This file must be loaded after loading 'plugin' directory.
--   The above loading is implemented in init.lua.


-- default colorscheme
local colorscheme = "nord"


-- options each colorschemes
if colorscheme == "catppuccin" then
  require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    transparent_background = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      notify = false,
      mini = false,
    },
  })
elseif colorscheme == "tokyonight" then
  require("tokyonight").setup({
    style = "storm", -- night, day, moon, storm
    transparent = true,
  })
elseif colorscheme == "kanagawa" then
  require("kanagawa").setup({
    transparent = true,
    theme = "wave", -- wave, dragon, lotus
  })
elseif colorscheme == "nord" then
  vim.cmd.colorscheme("nord")
  vim.cmd("colorscheme nord")
  vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "nord",
  callback = function()
    vim.cmd [[
      highlight Normal guibg=NONE ctermbg=NONE
      highlight NormalNC guibg=NONE ctermbg=NONE
      highlight SignColumn guibg=NONE ctermbg=NONE
      highlight VertSplit guibg=NONE ctermbg=NONE
      highlight StatusLine guibg=NONE ctermbg=NONE
      highlight LineNr guibg=NONE ctermbg=NONE
      highlight EndOfBuffer guibg=NONE ctermbg=NONE
      highlight Comment guifg=#88C0D0 ctermfg=109 gui=italic
    ]]
  end,
  })
end


-- adaption colorschemes (if fault, print error message)
local ok, err = pcall(vim.cmd.colorscheme, colorscheme)
if not ok then
  vim.notify("colorscheme '" .. colorscheme .. "' not found!", vim.log.levels.ERROR)
end

