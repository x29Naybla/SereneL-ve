--alt + L  to run
function love.load()
	Object = require "libs/classic"
	anim8 = require "libs/anim8"
	require "player"

	love.graphics.setDefaultFilter("nearest", "nearest")
	textures = love.graphics.newImage("res/default.png")

	
	p1 = Player(100, 50, 30, 30)

end


function love.update(dt)
	p1:update(dt)
end


function love.draw()
	p1:draw()
end