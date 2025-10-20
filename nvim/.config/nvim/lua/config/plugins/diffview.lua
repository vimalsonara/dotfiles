return {
	{
		"sindrets/diffview.nvim",
		config = function()
			require("diffview").setup()

			-- Create a toggle function for Diffview
			local function toggle_diffview()
				local lib = require("diffview.lib")
				local diffview_tab = lib.get_current_view()

				if diffview_tab then
					vim.cmd("DiffviewClose")
				else
					vim.cmd("DiffviewOpen")
				end
			end

			-- Create a toggle function for file history
			local function toggle_file_history()
				local lib = require("diffview.lib")
				local diffview_tab = lib.get_current_view()

				if diffview_tab then
					vim.cmd("DiffviewClose")
				else
					vim.cmd("DiffviewFileHistory")
				end
			end

			-- Map the toggle functions
			vim.keymap.set("n", "<leader>gd", toggle_diffview, { desc = "[G]it [D]iffview" })
			vim.keymap.set("n", "<leader>gh", toggle_file_history, { desc = "[G]it File [H]istory" })
		end,
	},
}
