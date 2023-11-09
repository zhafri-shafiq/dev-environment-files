local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local lualine_gruvbox_dark = require("lualine.themes.onedark")

-- new colors for theme
local new_colors = {
	blue = "#65D1FF",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
}

-- change nightlfy theme colors
lualine_gruvbox_dark.normal.a.bg = new_colors.blue
lualine_gruvbox_dark.insert.a.bg = new_colors.green
lualine_gruvbox_dark.visual.a.bg = new_colors.violet
lualine_gruvbox_dark.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black, -- black
	},
}

lualine.setup({
	options = {
		theme = lualine_gruvbox_dark,
	},
})
