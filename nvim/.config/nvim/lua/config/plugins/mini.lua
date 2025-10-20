return {
	{
		"echasnovski/mini.nvim",
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		config = function()
			local statusline = require("mini.statusline")
			statusline.setup({ use_icons = true })
		end,
	},
}
