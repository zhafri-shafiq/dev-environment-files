local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
    print("Colorscheme not found!")
    return
end

local tn_status, tokyonight = pcall(require, 'tokyonight')
if not tn_status then
    return
end

tokyonight.setup({
    style = "moon"
})

vim.o.background = "dark"
