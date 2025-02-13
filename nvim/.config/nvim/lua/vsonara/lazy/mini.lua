return {
  {
    'echasnovski/mini.nvim',
    version = false,
    config = function()
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
