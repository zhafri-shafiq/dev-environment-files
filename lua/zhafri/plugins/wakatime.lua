local wakatime_setup, wakatime = pcall(require, "wakatime")
if not wakatime_setup then
	return
end

wakatime.setup({})
