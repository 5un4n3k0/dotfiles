--[[
       _             _             _       _ _   
 _ __ | |_   _  __ _(_)_ __  ___  (_)_ __ (_) |_ 
| '_ \| | | | |/ _` | | '_ \/ __| | | '_ \| | __|
| |_) | | |_| | (_| | | | | \__ \ | | | | | | |_ 
| .__/|_|\__,_|\__, |_|_| |_|___/ |_|_| |_|_|\__|
|_|            |___/                             

--]]

-- Author: sunaneko
-- ----------------
-- Plugin manager settings and load other plugins install files.


-- lazy.nvim booststrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- load plugins file
require("lazy").setup({
  require("plugins.cmp"),
  require("plugins.colorscheme"),
  require("plugins.lsp"),
  require("plugins.ui"),
  require("plugins.coding"),
  require("plugins.telescope"),
  require("plugins.git"),
})

