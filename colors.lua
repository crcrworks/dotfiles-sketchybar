return {
	black = 0xff232A2E,
	white = 0xffe2e2e3,
	red = 0xffE67E80,
	green = 0xffA7C080,
	blue = 0xff7FBBB3,
	yellow = 0xffDBBC7F,
	orange = 0xffE69875,
	magenta = 0xffD699B6,
	grey = 0xff7A8478,
	transparent = 0x00000000,

	bar = {
		bg = 0xff232A2E,
		border = 0xff475258,
	},
	popup = {
		bg = 0xff2D353B,
		border = 0xff475258,
	},
	bg1 = 0xff343F44,
	bg2 = 0xff3D484D,

	with_alpha = function(color, alpha)
		if alpha > 1.0 or alpha < 0.0 then
			return color
		end
		return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
	end,
}
