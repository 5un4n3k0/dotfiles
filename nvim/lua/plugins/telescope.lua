--[[
 _       _                                
| |_ ___| | ___  ___  ___ ___  _ __   ___ 
| __/ _ \ |/ _ \/ __|/ __/ _ \| '_ \ / _ \
| ||  __/ |  __/\__ \ (_| (_) | |_) |  __/
 \__\___|_|\___||___/\___\___/| .__/ \___|
                              |_|         
--]]

-- Author: sunaneko
-- ----------------
-- Mainly, search plugin with UI.


return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find file" },
    { "<leader>fl", "<cmd>Telescope live_grep<cr>",  desc = "find string" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "find buffer" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "find help" },
  },
  config = function()
    require("telescope").setup({
      theme = "nord",
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          width = 0.9,
          prompt_position = "top",
        },
        sorting_strategy = "ascending",
        mappings = {
          i = {
            ["<C-h>"] = "which_key",
          },
        },
     },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    })

    -- extension
    pcall(require("telescope").load_extension, "fzf")
  end,
}

