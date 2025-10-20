return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("telescope").setup({
				extensions = {
					fzf = {},
				},
			})

			require("telescope").load_extension("fzf")

			local keymap = vim.keymap
			local builtin = require("telescope.builtin")
			keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
			keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
			keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
			keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
			keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
			keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
			keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
			keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
			keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
			keymap.set("n", "<leader>gf", builtin.git_files, { desc = "[G]it [F]iles" })
			keymap.set("n", "<leader>sg", function()
				builtin.live_grep({
					additional_args = function()
						return { "--fixed-strings" }
					end,
				})
			end, { desc = "[S]earch by [G]rep" })
			keymap.set("n", "<leader>/", function()
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "[/] Fuzzily search in current buffer" })
			keymap.set("n", "<leader>s/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "[S]earch [/] in Open Files" })
			keymap.set("n", "<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[S]earch [N]eovim files" })
			keymap.set("n", "<space>ep", function()
				require("telescope.builtin").find_files({
					cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
				})
			end)
		end,
	},
}
