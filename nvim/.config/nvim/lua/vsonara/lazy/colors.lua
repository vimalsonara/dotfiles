return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
  },
  {
    "ellisonleao/gruvbox.nvim",
    name = 'gruvbox',
    priority = 1000,
    config = true,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
  },
  {
    'folke/tokyonight.nvim',
    name = 'tokyonight-night',
    priority = 1000,
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'

      -- this will make background transparent
      -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,

  },
  {
    "olimorris/onedarkpro.nvim",
    name = 'onedark',
    priority = 1000,
  }
}
