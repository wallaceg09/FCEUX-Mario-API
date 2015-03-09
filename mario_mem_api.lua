local constants = require("mario_mem_constants")
local MAP_SCREEN_WIDTH = 16
local MAP_SCREEN_HEIGHT = 13

--[[
Reads a map tile from memory.
Inputs:
	x				-	x position of the tile that should be read from memory. Must be in the index format of 0...n-1.
	y				-	y position of the tile that should be read from memory. Must be in the index format of 0...n-1.
	START_MEM_ADDR	-	Initial memory starting block. This must be either mario_mem_constants.MAP_SCREEN_A_TILES or "".MAP_SCREEN_B_TILES.

Returns:
	Single byte containing the tile number. Should be treated as an integer.
--]]
function mem_get_tile(x, y, START_MEM_ADDR)
	return memory.readbyte((y * MAP_SCREEN_WIDTH + x) + START_MEM_ADDR)
end

--[[
Reads the two-dimensional map data of the screen number passed to it.
Inputs:
	player_current_screen	-	current screen of the player
Outputs:
--]]
function mem_get_map(player_current_screen)
	if player_current_screen % 2 == 0 then
		local START_MEM_ADDR = constants.MAP_SCREEN_A_TILES
	else
		local START_MEM_ADDR = constants.MAP_SCREEN_B_TILES
	end
	
	map_mat = {}
	
	for y = 1, MAP_SCREEN_HEIGHT1, 1 do								--Matrix indexing is 1...n
		map_mat[y] = {}
		
		for x = 1, MAP_SCREEN_WIDTH, 1 do
			map_mat[y][x] = mem_get_tile(x-1, y-1, START_MEM_ADDR)	--Indexing for the internal map storage should be 0...n-1, hence x-1 and y-1
		end
	end
	
	return map_mat
end




--TODO: Delete here onwards
--Speeds
NORMAL = "normal"
NO_THROTTLE = "nothrottle" --Same as turbo
TURBO = "turbo"
MAXIMUM = "maximum"

function main()
end

main()