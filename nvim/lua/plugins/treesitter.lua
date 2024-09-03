return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",  -- Run :TSUpdate after installation to update parsers
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {"c", "lua", "python"},  -- Add languages you want to support
        sync_install = false,
        highlight = { enable = true },  -- Enable syntax highlighting
        indent = { enable = true },  -- Enable automatic indentation
      })
    end,
  },
}

