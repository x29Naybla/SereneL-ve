love.graphics.setDefaultFilter("nearest", "nearest")
textures = love.graphics.newImage("res/default.png")
tS = 16

function love.load()
	Object = require "libs/classic"
	anim8 = require "libs/anim8"
	World = require "world"
	camera = require "libs/camera"
	require "player"
	require "rabbit"

	gameState = "menu"
	selection = 1

	world = World.generateWorld(16, 16, textures)
	p1 = Player(100, 50)
	r1 = Rabbit(100, 50)
	cam = camera()
end


function love.update(dt)
	if gameState == "menu" then

		if love.keyboard.isDown("return") then
			if selection == 1 then
				gameState = "playing"
			elseif selection == 2 then
				love.event.quit()
			end
		end

		if love.keyboard.isDown("up", "w") then
			selection = selection + 1
			if selection == 3 then
				selection = 1
			end
		end
		if love.keyboard.isDown("down", "s") then
			selection = selection - 1
			if selection < 1 then
				selection = 2
			end
		end

		

	elseif gameState == "playing" then
		p1:update(dt)
		r1:update(dt)
		cam:lookAt(p1.x*3, p1.y*3)

		if love.keyboard.isDown("escape") then
			gameState = "menu"
		end
	end
end


function love.draw()
	if gameState == "menu" then
		love.graphics.setFont(love.graphics.newFont(48))
		love.graphics.printf("Serene Bond", 0, love.graphics.getHeight()/6, love.graphics.getWidth(), "center")

		love.graphics.setFont(love.graphics.newFont(24))
		love.graphics.printf("New World", 0, love.graphics.getHeight() * (3/6), love.graphics.getWidth(), "center")
		love.graphics.printf("Exit", 0, love.graphics.getHeight() * (4/6), love.graphics.getWidth(), "center")

		love.graphics.printf(">", -128, love.graphics.getHeight() * ((selection+2)/6), love.graphics.getWidth(), "center")

	elseif gameState == "playing" then
		cam:attach()
			love.graphics.scale(3)
			World.draw(world)
			p1:draw()
			r1:draw()
		cam:detach()
	end

end