 return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    transparent_background = true,  -- Enables transparent background
  },
  config = function()
    -- Ensure that the configuration is correctly applied
    require("catppuccin").setup({
      transparent_background = true,
      -- Add any other settings you need
    })
    -- Apply the colorscheme after setting it up
    vim.cmd.colorscheme "catppuccin"
  end,
}
 
