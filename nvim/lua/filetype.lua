--   __ _ _      _                    
--  / _(_) | ___| |_ _   _ _ __   ___ 
-- | |_| | |/ _ \ __| | | | '_ \ / _ \
-- |  _| | |  __/ |_| |_| | |_) |  __/
-- |_| |_|_|\___|\__|\__, | .__/ \___|
--                   |___/|_|         

-- Author: sunaneko
-- ----------------
-- filetype settings

vim.filetype.add({
  extension = {
    cmm = "c",
    hmm = "c"
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "sh",
  callback = function()
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end
})

