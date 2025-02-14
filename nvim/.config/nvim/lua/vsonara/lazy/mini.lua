return {
  {
    'echasnovski/mini.nvim',
    version = false,
    config = function()
      local icons = require 'mini.icons'
      icons.setup()

      local git = require 'mini.git'
      git.setup()

      local diff = require 'mini.diff'
      diff.setup()

      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = true }

      local ai = require 'mini.ai'
      ai.setup()

      local comment = require 'mini.comment'
      comment.setup()

      local pairs = require 'mini.pairs'
      pairs.setup()

      local surround = require 'mini.surround'
      surround.setup()

      local indentscope = require 'mini.indentscope'
      indentscope.setup()

      local trailspace = require 'mini.trailspace'
      trailspace.setup()

      local move = require 'mini.move'
      move.setup()
    end
  },
}
