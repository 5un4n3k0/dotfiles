--[[
              _   _                 
   ___  _ __ | |_(_) ___  _ __  ___ 
  / _ \| '_ \| __| |/ _ \| '_ \/ __|
 | (_) | |_) | |_| | (_) | | | \__ \
  \___/| .__/ \__|_|\___/|_| |_|___/
      |_|                          

--]]

-- Author: sunaneko
-- ----------------
-- nvim's basic options settings.

-- for conciseness
local opt = vim.opt


-- line number
opt.number = true

-- indent
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- search
opt.smartcase = true
opt.ignorecase = true
opt.hlsearch = true
opt.incsearch = true

-- visual
opt.cursorline = true


opt.allowrevins = false

opt.ambiwidth = 'single'
