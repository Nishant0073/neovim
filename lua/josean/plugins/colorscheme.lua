return {
	{
		"Mofiqul/dracula.nvim",
		priority = 1000,
		config = function()
			require("dracula").setup({
				italic_comment = true,
				transparent_bg = false,
				colors = {
					bg = "#000000",
					fg = "#f8f8f2",
					selection = "#2d2d2d",
					comment = "#6272a4",
					red = "#ff5555",
					orange = "#ffb86c",
					yellow = "#f1fa8c",
					green = "#50fa7b",
					purple = "#bd93f9",
					cyan = "#8be9fd",
					pink = "#ff79c6",
					bright_red = "#ff6e6e",
					bright_green = "#69ff94",
					bright_yellow = "#ffffa5",
					bright_blue = "#d6acff",
					bright_magenta = "#ff92df",
					bright_cyan = "#a4ffff",
					bright_white = "#ffffff",
					menu = "#000000",
					visual = "#3e4452",
					gutter_fg = "#4b5263",
					nontext = "#3b4048",
				},
			})
			vim.cmd([[colorscheme dracula]])
		end,
	},
}
