local constants = require("mario_mem_constants")
local MAP_SCREEN_WIDTH = 16
local MAP_SCREEN_HEIGHT = 13

local MAX_ENEMIES = 5

local mario_mem_api = {}

local player = {}

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
	if player_current_screen % 2 == 0 then							--TODO: Test to make sure this is correct
		local START_MEM_ADDR = constants.MAP_SCREEN_A_TILES
	else
		local START_MEM_ADDR = constants.MAP_SCREEN_B_TILES
	end
	
	map_mat = {}
	
	for y = 1, MAP_SCREEN_HEIGHT, 1 do								--Matrix indexing is 1...n
		map_mat[y] = {}
		
		for x = 1, MAP_SCREEN_WIDTH, 1 do
			map_mat[y][x] = mem_get_tile(x-1, y-1, START_MEM_ADDR)	--Indexing for the internal map storage should be 0...n-1, hence x-1 and y-1
		end
	end
	
	return map_mat
end

function mem_get_current_screen()
	return memory.readbyte(constants.MAP_CURRENT_SCREEN)
end

function mem_get_next_screen()
	return memory.readbyte(constants.MAP_NEXT_SCREEN)
end


--Player Memory API

function player.mem_get_animation()
	return memory.readbyte(constants.PLAYER_ANIM)
end

function player.mem_get_facing()
	return memory.readbyte(constants.PLAYER_FACING)
end

function player.mem_get_state()
	return memory.readbyte(constants.PLAYER_STATE)
end

function player.mem_get_float_state()
	return memory.readbyte(constants.PLAYER_FLOAT_STATE)
end

function player.mem_is_small()
	return memory.readbyte(constants.PLAYER_IS_SMALL)
end

function player.mem_get_horizontal_speed()
  return memory.readbyte(constants.PLAYER_HORIZONTAL_SPEED)
end

function player.mem_get_absolute_horizontal_speed()
  return memory.readbyte(constants.PLAYER_ABSOLUTE_HORIZONTAL_SPEED)
end

function player.mem_get_vertical_speed_whole()
  return memory.readbyte(constants.PLAYER_VERTICAL_VELOCITY_WHOLE)
end

function player.mem_get_vertical_speed_fraction()
  return memory.readbyte(constants.PLAYER_VERTICAL_VELOCITY_FRACTION)
end

function player.mem_get_level_horizontal_position()--TODO: Refactor name after researching. I assume this is the same as constants.MAP_CURRENT_SCREEN
  return memory.readbyte(constants.PLAYER_LEVEL_HORIZONTAL_POSITION)
end

function player.mem_get_current_screen_x_position()
  return memory.readbyte(constants.PLAYER_SCREEN_X_POSITION)
end

function player.mem_get_current_screen_y_position()
  return memory.readbyte(constants.PLAYER_SCREEN_Y_POSITION)
end


mario_mem_api.player = player
return mario_mem_api