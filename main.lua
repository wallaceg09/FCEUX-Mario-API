--TODO: Delete here onwards
--Speeds
NORMAL = "normal"
NO_THROTTLE = "nothrottle" --Same as turbo
TURBO = "turbo"
MAXIMUM = "maximum"

local api = require("mario_mem_api")

io.output("Direction_Log.txt")
function main()
	emu.speedmode(NORMAL)
	
	while(true) do
		dir = api.player.mem_get_direction()
		if dir > 2 then
			io.write(dir, "\n")
			emu.message(dir)
		end
		emu.frameadvance()
	end
end

main()