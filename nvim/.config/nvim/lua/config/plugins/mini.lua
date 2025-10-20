return {
	{
		"echasnovski/mini.nvim",
		config = function()
			local icons = require("mini.icons")
			icons.setup()

			local statusline = require("mini.statusline")
			statusline.setup({ use_icons = true })

			local git = require("mini.git")
			git.setup()

			local diff = require("mini.diff")
			diff.setup()
		end,
	},
}
