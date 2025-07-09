--[[
 _   _                 ___       _             __                
| | | |___  ___ _ __  |_ _|_ __ | |_ ___ _ __ / _| __ _  ___ ___ 
| | | / __|/ _ \ '__|  | || '_ \| __/ _ \ '__| |_ / _` |/ __/ _ \
| |_| \__ \  __/ |     | || | | | ||  __/ |  |  _| (_| | (_|  __/
 \___/|___/\___|_|    |___|_| |_|\__\___|_|  |_|  \__,_|\___\___|
                                                                 
]]--

-- Author: sunaneko
-- ----------------
-- User interface settings. (e.x.) airline, nerdtree


return {
  -- nerd tree --
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local function toggle_tree()
        vim.cmd("NvimTreeToggle")
      end

      -- default buffer key maps
      vim.keymap.set("n", "<C-e>", toggle_tree, { noremap = true, silent = true })
      vim.keymap.set("i", "<C-e>", function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
        toggle_tree()
      end, { noremap = true, silent = true })
      
      require("nvim-tree").setup({
        on_attach = function(bufnr)
        local api = require("nvim-tree.api")

      -- open files or directories
      vim.keymap.set("n", "<CR>", api.node.open.edit, {
        desc = "Open file or folder",
        buffer = bufnr,
        noremap = true,
        silent = true
      })

      vim.keymap.set("n", "<C-e>", function()
        vim.cmd("NvimTreeClose")
      end, { buffer = bufnr, noremap = true, silent = true })
      end,
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
    })
  end,
  },
  -- air line --
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
      require("lualine").setup({
        options = {
          theme = "kanagawa",  -- colorscheme
          component_separators = "|",
          section_separators = "",
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { "filename" },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })
  end,
  },
  -- buffer line --
  {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        separator_style = "none",  -- "slant" / "thick" / "thin"
        show_close_icon = false,
        show_buffer_close_icons = false,
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "left",
            separator = true,
          }
        },
      },
    })

    -- key bind --
    -- normal
    vim.keymap.set("n", "<Right>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
    vim.keymap.set("n", "<Left>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
    -- insert
    vim.keymap.set("i", "<Right>", function()
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
      vim.cmd("BufferLineCycleNext")
    end, { desc = "Next buffer (insert mode)", noremap = true, silent = true })

    vim.keymap.set("i", "<Left>", function()
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
      vim.cmd("BufferLineCyclePrev")
    end, { desc = "Prev buffer (insert mode)", noremap = true, silent = true })
  end,
  }
}

