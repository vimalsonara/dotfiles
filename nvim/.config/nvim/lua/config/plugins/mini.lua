return {
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.icons").setup()

			require("mini.git").setup()

			require("mini.diff").setup()

			require("mini.tabline").setup()

			require("mini.surround").setup()

			-- local statusline = require("mini.statusline")
			-- statusline.setup({ use_icons = true, config = {} })
		end,
	},
}
