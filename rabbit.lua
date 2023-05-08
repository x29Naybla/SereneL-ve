Rabbit = Object:extend()
function Rabbit:new(x, y)
    self.animations = {}
	self.x = x
	self.y = y
	self.speed = 50

    self.grid = anim8.newGrid(tS, tS, textures:getWidth(), textures:getHeight())
    self.animations.left = anim8.newAnimation(self.grid('10-11', 10), 0.25)
	self.animations.right = anim8.newAnimation(self.grid('10-11', 11), 0.25)

    self.facing = self.animations.right
end

function Rabbit:update(dt)
    local isMoving = false

    if isMoving == false then
		self.facing:gotoFrame(3)
	end

    self.facing:update(dt)
end

function Rabbit:draw()
    self.facing:draw(textures, self.x, self.y)
end