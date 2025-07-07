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


-- indent and line break --
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true -- when use lsp, false
opt.autoindent = true -- when use lsp, false
opt.breakindent = true
opt.breakindentopt = ''

opt.breakat = ' ^I!@*-+;:,./?'
opt.showbreak = '↪ '

-- c lang
opt.cindent = false -- instead lsp
opt.cinkeys = '0{,0},0),0],:,0#,!^F,o,O,e'
opt.cinoptions = ''
opt.cinwords = 'if,else,while,do,for,switch'


-- search --
opt.smartcase = true
opt.ignorecase = true
opt.hlsearch = true
opt.incsearch = true


-- visual --
opt.number = true
opt.cursorline = true
opt.colorcolumn = ''
opt.background = 'dark'
opt.termguicolors = true


-- character --
opt.ambiwidth = 'single'
opt.charconvert = ''


-- input --
opt.allowrevins = false
opt.backspace = { 'indent', 'eol', 'start' }
opt.binary = false


-- comment --
opt.comments = 's1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-,fb:•'
opt.commentstring = ''


-- complete --
opt.complete = '.,w,b,u,t'
opt.completefunc = '' -- instead lsp
opt.completeitemalign = 'abbr,kind,menu'


-- directory --
opt.autochdir = false


-- auto load --
opt.autoread = true
opt.autowrite = false
opt.autowriteall = false


-- bell --
opt.belloff = 'all'


-- when saving --
opt.bomb = false


-- backup --
-- [Note]
--   Basically, backup is stored by git system.
opt.backup = false
opt.backupcopy = 'auto'
opt.backupdir = '.,$XDG_STATE_HOME/nvim/backup//'
opt.backupext = '~'
opt.backupskip = { '/tmp/*', '/private/tmp/*', '*.log' }


-- buffer --
opt.bufhidden = 'hide'
opt.buflisted = true
opt.buftype = ''


-- replacement --
opt.casemap = { 'internal', 'keepascii' }


-- command --
-- cmd window
opt.cmdheight = 1
opt.cmdwinheight = 7

-- complement
opt.cedit = '<C-e>'

-- cd
opt.cdpath = { '.', '' }


-- language specific settings --
-- arabic
opt.arabic = false
opt.arabicshape = true


-- others --
opt.clipboard = ''

