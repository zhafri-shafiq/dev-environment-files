local status, _ = pcall(vim.cmd, "colorscheme kanagawa")
if not status then
	print("Colorscheme not found!")
	return
end

local tn_status, kanagawa = pcall(require, "tokyonight")
if not tn_status then
	return
end

kanagawa.setup({
	style = "moon",
})

vim.o.background = "dark"
