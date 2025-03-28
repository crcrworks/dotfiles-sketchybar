local colors = require("colors")

local whitelist = {
	["Spotify"] = true,
	["Music"] = true,
}

local media_img = sbar.add("item", {
	position = "right",
	background = {
		image = {
			string = "media.artwork",
			scale = 0.85,
		},
		color = colors.transparent,
	},
	label = { drawing = false },
	icon = { drawing = false },
	drawing = false,
	updates = true,
})

local media_artist = sbar.add("item", {
	position = "right",
	drawing = false,
	width = 0,
	label = {
		font = { size = 11 },
		y_offset = 5,
	},
})

local media_title = sbar.add("item", {
	position = "right",
	width = 0,
	drawing = false,
	label = {
		font = { size = 12 },
		y_offset = -6,
	},
})

media_img:subscribe("media_change", function(env)
	local isPlaying = (env.INFO.state == "playing")

	if whitelist[env.INFO.app] then
		media_artist:set({
			drawing = isPlaying,
			label = env.INFO.artist,
		})

		media_title:set({
			drawing = isPlaying,
			label = env.INFO.title,
		})

		media_img:set({ drawing = isPlaying })
	end
end)
