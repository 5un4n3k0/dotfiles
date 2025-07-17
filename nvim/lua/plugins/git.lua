--[[
       _ _   
  __ _(_) |_ 
 / _` | | __|
| (_| | | |_ 
 \__, |_|\__|
 |___/       

--]]

-- Author: sunaneko
-- ----------------
-- Download and settings about git plugins.


return {
   {
       "akinsho/toggleterm.nvim",
       name = "toggleterm",
       cmd = "ToggleTerm",
       keys = {
         {"<leader>tt", "<cmd>ToggleTerm<cr>", desc = "toggle term"}
       },
       config = function()
         require("toggleterm").setup({
         highlights = {
           Normal = {
             guibg = nil,
           },
           NormalFloat = {
             link = 'Normal',
           },
           FloatBorder = {
             guifg = "#88C0D0",
             guibg = "#2E3440",
           },
         },
         defaults = {
           size = 100,
           hide_numbers = true,
           shade_filetypes = {},
           shade_terminals = true,
           shading_factor = 2,
           start_in_insert = true,
           insert_mappings = true,
           persist_size = true,
           direction = 'float',
           close_on_exit = true
         }
       })
     end,
   }
}

