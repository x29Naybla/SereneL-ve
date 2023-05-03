Player = Object:extend()
function Player:new(x, y, width, height)
	self.animations = {}
	self.x = x
	self.y = y
	self.width = width
	self.height = height
	self.speed = 50
	self.life = 100

	self.grid = anim8.newGrid(textureSize, textureSize, textures:getWidth(), textures:getHeight())
	self.animations.down = anim8.newAnimation(self.grid('6-9', 11), 0.25)
	self.animations.up = anim8.newAnimation(self.grid('6-9', 10), 0.25)
	self.animations.left = anim8.newAnimation(self.grid('6-9', 12), 0.25)
	self.animations.right = anim8.newAnimation(self.grid('6-9', 13), 0.25)

	self.facing = self.animations.down
end

function Player:update(dt)
	local isMoving = false

	if love.keyboard.isDown("down", "s") then
		self.y = self.y + self.speed * dt
		self.facing = self.animations.down
		isMoving = true
	end
	if love.keyboard.isDown("up", "w") then
		self.y = self.y - self.speed * dt
		self.facing = self.animations.up
		isMoving = true
	end
	if love.keyboard.isDown("left", "a") then
		self.x = self.x - self.speed * dt
		self.facing = self.animations.left
		isMoving = true
	end
	if love.keyboard.isDown("right", "d") then
		self.x = self.x + self.speed * dt
		self.facing = self.animations.right
		isMoving = true
	end

	if isMoving == false then
		self.facing:gotoFrame(5)
	end
	
	self.facing:update(dt)
end

function Player:draw()
	self.facing:draw(textures, self.x, self.y)
end