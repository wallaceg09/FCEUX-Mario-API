local mario_mem_constants = {}

--MISC CONSTANTS
mario_mem_constants.TMP_MEM = 0x0								--TODO: research

mario_mem_constants.AMOUNT_TO_LOAD = 0X4						--TODO: research
mario_mem_constants.A_B_BUTTON_FLAGS = 0XA						--TODO: research
mario_mem_constants.VERT_DIRECTION_FLAGS = 0XB					--TODO: research

mario_mem_constants.AIR_BUBBLE_ONE_Y_POSITION = 0XD4			--TODO: research

mario_mem_constants.UNKNOWN_HORIZONTAL_COUNTER = 0X400			--TODO: research

mario_mem_constants.HORIZONTAL_SPLIT_OFFSET = 0X490

mario_mem_constants.HAMMER_HITBOX = 0X4D0						--TODO: research. 9 x 4 bytes [x1, y1] [x2, y2]  max 9 hammers?

mario_mem_constants.COIN_BOX_COIN_HITBOX = 0X4E0				--TODO: research. 3 x 4 bytes [x1, y1] [x2, y2]. Coins from question marks and coins from above bricks when breaking brick

mario_mem_constants.COIN_COLLECTED_COUNTER = 0X6D4				--TODO: research

mario_mem_constants.CONTROLLER_ONE_INPUT = 0X6FC				--0X74A = MORE ACCURATE?
mario_mem_constants.CONTROLLER_TWO_INPUT = 0X6FD				--0X74B = MORE ACCURATE?

mario_mem_constants.CONTROLLER_ONE_BUTTONS = 0X74A				--TODO: research. More accurate?
mario_mem_constants.CONTROLLER_TWO_BUTTONS = 0X74B				--TODO: research. More accurate?

mario_mem_constants.GAME_MODE = 0X770							--TODO: research

mario_mem_constants.TOGGLE_LOAD_LUIGI_ON_DEATH = 0X77A			--TODO: research

mario_mem_constants.DEMO_START_TIMER = 0X7A2					--TODO: research

mario_mem_constants.SCROLLSPEED = 0X775							--TODO: research

mario_mem_constants.IS_PAUSED = 0X776							--TODO: research

mario_mem_constants.UNKNOWN_BACKGROUND_PALLETTE = 0X744			--TODO: research

mario_mem_constants.UNKNOWN_LEFT_RIGHT_COUNTER = 0X705			--TODO: research. Counter increases when left or right pressed?

mario_mem_constants.UNKNOWN_CURRENT_GRAVITY = 0X70A				--TODO: research

mario_mem_constants.UNKNOWN_REPLACE_TREES = 0X733				--TODO: research

mario_mem_constants.UNKNOWN_LOAD_TILES_AS_CLOUDS = 0X743		--TODO: research

mario_mem_constants.UNKNOWN_TIMER = 0X747						--TODO: research

mario_mem_constants.UNKNOWN_GOLD_BLOCK_PALLETE = 0X74E			--TODO: research

mario_mem_constants.UNKNOWN_MUST_NOT_BE_ZERO = 0X752			--TODO: research

mario_mem_constants.UNKNOWN_MARIO_LUIGI_FLAG = 0X753			--TODO: research

mario_mem_constants.UNKNOWN_CRASH_IF_CHANGED = 0X774			--TODO: research

mario_mem_constants.UNKNOWN_PAUSE_TIMER = 0X777					--TODO: research

mario_mem_constants.UNKNOWN_AFFECTS_BLOCKS = 0X778				--TODO: research

mario_mem_constants.UNKNOWN_AFFECTS_COLORS = 0X779				--TODO: research

mario_mem_constants.UNKNOWN_TIMERS = 0X780						--TODO: research. Last timer @ 0X7A2

mario_mem_constants.UNKNOWN_PRELEVEL_SCREEN_TIMER = 0X7A0		--TODO: research

mario_mem_constants.UNKNOWN_CANNOT_DIE_FLAG = 0X7B1				--TODO: research

mario_mem_constants.UNKNOWN_DIGITS_OF_TIME = 0X7F8				--TODO: research. Last address = 0X7FA

mario_mem_constants.UNKNOWN_DIFFICULTY = 0X7FC					--TODO: research.

--PLAYER CONSTANTS
mario_mem_constants.PLAYER_ANIM = 0x1							--TODO: research

mario_mem_constants.UNKNOWN_PLAYER_Y = 0X2						--TODO: research
mario_mem_constants.UNKNOWN_PLAYER_X = 0X5						--TODO: research

mario_mem_constants.UNKNOWN_PLAYER_DIRECTION = 0X3				--TODO: research

mario_mem_constants.PLAYER_STATE = 0XE							--TODO: research
mario_mem_constants.PLAYER_FLOAT_STATE = 0X1D					--TODO: research
mario_mem_constants.PLAYER_IS_SMALL = 0X754						--1 when Mario is small, 0 otherwise

mario_mem_constants.PLAYER_FACING = 0X33 						--1 when facing right, 2 when facing left
mario_mem_constants.UNKNOWN_PLAYER_HEADING = 0X39				--TODO: research

mario_mem_constants.PLAYER_HORIZONTAL_SPEED = 0X57				--TODO: research

mario_mem_constants.PLAYER_LEVEL_HORIZONTAL_POSITION = 0X6D		--TODO: research

mario_mem_constants.PLAYER_SCREEN_X_POSITION = 0X86				--TODO: research
mario_mem_constants.PLAYER_SCREEN_Y_POSITION = 0XCE				--(multiply with PLAYER_VERTICAL_SCREEN_POSITION to get level y pos) 

mario_mem_constants.PLAYER_VERTICAL_VELOCITY_WHOLE = 0X9F 		--Signed byte
mario_mem_constants.PLAYER_VERTICAL_VELOCITY_FRACTION = 0X433	--TODO: research

mario_mem_constants.PLAYER_VERTICAL_SCREEN_POSITION = 0XB5		--1 = VIEWPORT, 0 = ABOVE VIEWPORT, >1 = BELOW VIEWPORT (INCREASING)

mario_mem_constants.PLAYER_CURRENTSCREEN_X_OFFSET = 0X3AD		--TODO: research
mario_mem_constants.PLAYER_CURRENTSCREEN_Y_OFFSET = 0X3B8		--TODO: research

mario_mem_constants.PLAYER_ABSOLUTE_HORIZONTAL_SPEED = 0X700				--TODO: research

mario_mem_constants.UNKNOWN_PLAYER_VERTICAL_COUNTER = 0X416		--TODO: research

mario_mem_constants.PLAYER_MAX_VELOCITY_LEFT = 0X450			--TODO: research
mario_mem_constants.PLAYER_MAX_VELOCITY_RIGHT = 0X456			--TODO: research

mario_mem_constants.PLAYER_PALLETTE = 0X3C4						--TODO: research

mario_mem_constants.PLAYER_HITBOX = 0X4AC						--1 x 4 bytes [x1, y1] [x2,y2]

mario_mem_constants.PLAYER_SPRITE_STATE = 0X6DF					--TODO: research

mario_mem_constants.PLAYER_ALLOW_SLIDE_STOP = 0X701				--If set to zero, Mario stops instantly instead of sliding

mario_mem_constants.WALK_ANIMATION = 0X702						--TODO: untested

mario_mem_constants.TOGGLE_WALK = 0X704							--Value of 0 makes Mario swim. 1 Makes Mario walk

mario_mem_constants.CURRENT_GRAVITY = 0X709						--TODO: research

mario_mem_constants.UNKNOWN_BIG_SMALL_ANIMATION = 0X70B			--TODO: research

mario_mem_constants.PLAYER_WALK_ANIMATION_DELAY_FRAMES = 0X70C	--TODO: research

mario_mem_constants.PLAYER_WALK_ANIMATION_CURRENT_FRAME = 0X70D	--TODO: research

mario_mem_constants.PLAYER_BIG_MARIO_DUCKING = 0X714			--TODO: research

mario_mem_constants.PLAYER_JUMP_TIMER = 0X782					--TODO: research
mario_mem_constants.PLAYER_DEATH_INVULN_TIMER = 0X79E			--TODO: research
mario_mem_constants.PLAYER_STAR_TIMER = 0X79F					--TODO: research

mario_mem_constants.UNKNOWN_PLAYER_FALL_TIMER = 0X795
mario_mem_constants.UNKNOWN_PLAYER_X_LOAD_NEXT_SCREEN = 0X71C	--TODO: research
mario_mem_constants.UNKNOWN_PLAYER_X_MOVE_SCREEN = 0X71D		--TODO: research

--ENEMY CONSTANTS
mario_mem_constants.ENEMY_ONE_DRAWN = 0XF
mario_mem_constants.ENEMY_TWO_DRAWN = 0X10
mario_mem_constants.ENEMY_THREE_DRAWN = 0X11
mario_mem_constants.ENEMY_FOUR_DRAWN = 0X12
mario_mem_constants.ENEMY_FIVE_DRAWN = 0X13

mario_mem_constants.ENEMY_ONE_TYPE = 0X16
mario_mem_constants.ENEMY_TWO_TYPE = 0X17
mario_mem_constants.ENEMY_THREE_TYPE = 0X18
mario_mem_constants.ENEMY_FOUR_TYPE = 0X19
mario_mem_constants.ENEMY_FIVE_TYPE = 0X1A

mario_mem_constants.ENEMY_ONE_HEADING = 0X46
mario_mem_constants.ENEMY_TWO_HEADING = 0X47
mario_mem_constants.ENEMY_THREE_HEADING = 0X48
mario_mem_constants.ENEMY_FOUR_HEADING = 0X49
mario_mem_constants.ENEMY_FIVE_HEADING = 0X4A

mario_mem_constants.ENEMY_ONE_HORIZONTAL_SPEED = 0X58 			--Named vertical on online resource
mario_mem_constants.ENEMY_TWO_HORIZONTAL_SPEED = 0X59
mario_mem_constants.ENEMY_THREE_HORIZONTAL_SPEED = 0X5A
mario_mem_constants.ENEMY_FOUR_HORIZONTAL_SPEED = 0X5B
mario_mem_constants.EMENY_FIVE_HORIZONTAL_SPEED = 0X5C

mario_mem_constants.ENEMY_ONE_LEVEL_HORIZONTAL_POSITION = 0X6E 	--TODO: Consider adding all. Might refactor to just have beginning enemy position for all enemy-based calls
--TODO: Consider reducing enemy status calls to simply offsets from initial memory location
mario_mem_constants.ENEMY_ONE_SCREEN_X_POSITION = 0X87
mario_mem_constants.ENEMY_ONE_SCREEN_Y_POSITION = 0XCF			--(multiply with ENEMY_ONE_VERTICAL_SSCREEN_POSITION to get level y pos) 

mario_mem_constants.ENEMY_ONE_CURRENTSCREEN_X_OFFSET = 0X3AE	--GOES TO 0X3B2
mario_mem_constants.ENEMY_ONE_CURRENTSCREEN_Y_OFFSET = 0X3B9	--GOES TO 0X3BD
--TODO: Research ENEMY STATES: 0X1E -> 0X23

mario_mem_constants.ENEMY_ONE_VERTICAL_VELOCITY_WHOLE = 0XA0 	--GOES TO 0XA4

mario_mem_constants.ENEMY_ONE_HITBOX = 0X4B0					--5 x 4 bytes [x1, y1] [x2, y2]

mario_mem_constants.ENEMY_ONE_VERTICAL_SCREEN_POSITION = 0XB6	--1 = VIEWPORT, 0 = ABOVE VIEWPORT, >1 = BELOW VIEWPORT (INCREASING)

mario_mem_constants.UNKNOWN_ENEMY_VERTICAL_COUNTER = 0X417		--GOES TO 0X41B

--POWERUP CONSTANTS
mario_mem_constants.POWERUP_DRAWN = 0X14
mario_mem_constants.POWERUP_ON_SCREEN = 0X1B
mario_mem_constants.POWERUP_STATE = 0X23
mario_mem_constants.POWERUP_STATE_UNKNOWN = 0X756
mario_mem_constants.POWERUP_TYPE = 0X39

mario_mem_constants.MUSHROOM_HEADING = 0X4B

mario_mem_constants.POWERUP_SCREEN_X_POSITION = 0X8C
mario_mem_constants.POWERUP_SCREEN_Y_POSITION = 0XD4			--(multiply with POWERUP_VERTICAL_SCREEN_POSITION to get level y pos) 

mario_mem_constants.POWERUP_VERTICAL_SCREEN_POSITION = 0XBB 	--1 = VIEWPORT, 0 = ABOVE VIEWPORT, >1 = BELOW VIEWPORT (INCREASING)

mario_mem_constants.POWERUP_CURRENTSCREEN_X_OFFSET = 0X3B3
mario_mem_constants.POWERUP_CURRENTSCREEN_Y_OFFSET = 0X3BE

mario_mem_constants.POWERUP_HITBOX = 0X4C4						--1 x 4 bytes [x1, y1] [x2, y2]

--FIREBALL CONSTANTS
mario_mem_constants.FIREBALL_ONE_DRAWN = 0X24
mario_mem_constants.FIREBALL_TWO_DRAWN = 0X25

mario_mem_constants.FIREBALL_1_X = 0X8D --??
mario_mem_constants.FIREBALL_2_X = 0X8E --??

mario_mem_constants.FIREBALL_1_Y = 0XA6
mario_mem_constants.FIREBALL_2_Y = 0XA7

mario_mem_constants.FIREBALL_1_VERT_SPEED = 0XD6
mario_mem_constants.FIREBALL_2_VERT_SPEED = 0XD7

mario_mem_constants.FIREBALL_1_HITBOX = 0X4C8					--1 x 4 bytes [x1, y1] [x2, y2]
mario_mem_constants.FIREBALL_2_HITBOX = 0X4CC					--1 x 4 bytes [x1, y1] [x2, y2]

mario_mem_constants.FIREBALL_COUNTER = 0X6CE					--First bit probably used to toggle between hitbox indices?

mario_mem_constants.FIREBALL_UNKNOWN_X = 0X3AF					--TODO: research
mario_mem_constants.FIREBALL_UNKNOWN_Y = 0X3BA					--TODO: research

mario_mem_constants.UNKNOWN_FIREBALL_STUFF1 = 0X43A				--TODO: research
mario_mem_constants.UNKNOWN_FIREBALLE_STUFF2 = 0X43B			--TODO: research

mario_mem_constants.FIREBALL_SHOT_TIMER = 0X781					--TODO: research

--LAYOUT ADDRESS CONSTANTS
mario_mem_constants.LEVEL_LAYOUT_ADDRESS = 0XE7					--TODO: research
mario_mem_constants.ENEMY_LAYOUT_ADDRESS = 0XE9					--TODO: research

mario_mem_constants.LEVEL_CURRENT_LAYOUT_INDEX = 0X72C			--TODO: research. LAST VALUE = 0X72C
mario_mem_constants.ENEMY_LAYOUT_INDEX = 0X739					--TODO: research

--REGISTER CONSTANTS
mario_mem_constants.PAUSE_EFFECT_REGISTER = 0XFA				--TODO: research
mario_mem_constants.AREA_MUSIC_REGISTER = 0XFB					--TODO: research
mario_mem_constants.EVENT_MUSIC_REGISTER = 0XFC					--TODO: research
mario_mem_constants.SOUND_EFFECT_1_REGISTER = 0XFD				--TODO: research
mario_mem_constants.SOUND_EFFECT_2_REGISTER = 0XFE				--TODO: research
mario_mem_constants.SOUND_EFFECT_3_REGISTER = 0XFF				--TODO: research

--BRICK CONSTANTS
--TODO: research brick smash 1 y and brick smash 2 y
-- ~~ addresses are 0x85->0x91 and 0x90->0x92 respectively
--TODO: research brick smash 1 x  and brick smash 2 x
-- ~~ addresses are 0xd79 and 0xD8->0xDA respectively

--SCORING CONSTANTS
mario_mem_constants.SCORE_TILES = 0X110							--TODO: research. ENDS AT 0X115
mario_mem_constants.SCORE_X = 0X117								--TODO: research. ENDS AT 0X11B
mario_mem_constants.SCORE_Y = 0X11E								--TODO: research. ENDS AT 0X122

mario_mem_constants.LIVES = 0X75A								--TODO: research
mario_mem_constants.COINS = 0X75E								--TODO: research

mario_mem_constants.HIGH_SCORE = 0X7D7							--TODO: research. Last address = 0X7DC
mario_mem_constants.MARIO_CURRENT_SCORE = 0X7DD					--TODO: research. Last address = 0X7E2
mario_mem_constants.LUIGI_CURRENT_SCORE = 0X7D3				--TODO: research. Last address = 0X7D8

mario_mem_constants.ON_SCREEN_COINS = 0X7ED						--TODO: research. Last address = 0X7EE

--MAP CONSTANTS		--TODO: consider renaming to level
mario_mem_constants.MAP_CURRENT_SCREEN = 0X71A
mario_mem_constants.MAP_NEXT_SCREEN = 0X7AB
mario_mem_constants.MAP_SCREEN_A_TILES = 0X500
mario_mem_constants.MAP_SCREEN_B_TILES = 0X5D1					--TODO: Verify
mario_mem_constants.MAP_TOGGLE_SCROLLING = 0X723				--TODO: research. 1 = allow scroll. 0 = disable scroll?
mario_mem_constants.MAP_AREA_LOADED = 0X750						--TODO: research. http://1st.geocities.jp/bysonshome/smb1/index256a_2.html
mario_mem_constants.LEVEL_PALLETTE = 0X773						--TODO: research

mario_mem_constants.UNKNOWN_MAP_LOAD_TIMER = 0X71E				--TODO: research
mario_mem_constants.UNKNOWN_MAP_SCROLL_TIMER = 0X71F			--TODO: research
mario_mem_constants.UNKNOWN_MAP_BACKGROUND = 0X755				--TODO: research
mario_mem_constants.UNKNOWN_PRELEVEL = 0X75E					--TODO: research

mario_mem_constants.WORLD = 0X75F								--TODO: research
mario_mem_constants.LEVEL = 0X760								--TODO: research


return mario_mem_constants