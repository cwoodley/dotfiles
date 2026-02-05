return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	opts = function(_, opts)
		require("lualine").setup({
			options = {
				--- @usage 'rose-pine' | 'rose-pine-alt'
				theme = "rose-pine-alt",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = {
					{ "filename", file_status = true, path = 1 },
				},
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			tabline = {
				lualine_a = {
					{ "buffers", show_filename_only = true },
				},
			},
		})
	end,
	-- config = function()
	-- end,
}
