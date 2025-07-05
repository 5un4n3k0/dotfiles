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

-- for conciseness --
local opt = vim.opt


-- indent --
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true


-- search --
opt.smartcase = true
opt.ignorecase = true
opt.hlsearch = true
opt.incsearch = true


-- visual --
opt.number = true
opt.cursorline = true
opt.background = 'dark'


-- character --
opt.ambiwidth = 'single'


-- input --
opt.allowrevins = false
opt.backspace = { "indent", "eol", "start" }


-- directory --
opt.autochdir = false


-- auto load --
opt.autoread = true
opt.autowrite = false
opt.autowriteall = false


-- backup --
-- [Note]
--   Basically, backup is stored by git system.
opt.backup = false
opt.backupcopy = 'auto'
opt.backupdir = '.,$XDG_STATE_HOME/nvim/backup//'
opt.backupext = '~'
opt.backupskip = { "/tmp/*", "/private/tmp/*", "*.log" }


-- language specific settings --
-- arabic
opt.arabic = false
opt.arabicshape = true

