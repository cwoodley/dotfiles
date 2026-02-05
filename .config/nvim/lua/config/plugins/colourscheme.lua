return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			styles = {
				italic = false,
			},
			highlight_groups = {
				StatusLine = { fg = "love", bg = "love", blend = 10 },
				StatusLineNC = { fg = "subtle", bg = "surface" },
			},
		})
		vim.cmd("colorscheme rose-pine-moon")
	end,
}
