--alt + L  to run
local World = require "world"

function love.load()
	Object = require "libs/classic"
	anim8 = require "libs/anim8"
	require "player"

	love.graphics.setDefaultFilter("nearest", "nearest")
	textures = love.graphics.newImage("res/default.png")
	textureSize = 16

	world = World.generateWorld(15, 10, textures)
	p1 = Player(100, 50, 30, 30)
end


function love.update(dt)
	p1:update(dt)
end


function love.draw()
	love.graphics.scale(3)
	World.draw(world)
	p1:draw()
end