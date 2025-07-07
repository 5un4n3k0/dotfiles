return {
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
          -- overwrite nvim-tree internal key bind
          vim.keymap.set("n", "<C-e>", toggle_tree, { buffer = bufnr, noremap = true, silent = true })
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
  }
}

