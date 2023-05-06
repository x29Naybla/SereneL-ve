tiles = {
    { id = "dirt_floor", texture = love.graphics.newQuad(0, 0, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = true, walkable = true },
    { id = "sand_floor", texture = love.graphics.newQuad(1*tS, 0, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 3, fertile = false, walkable = true },
    { id = "grass_floor", texture = love.graphics.newQuad(0, 1*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = true, walkable = true},
    { id = "snow_floor", texture = love.graphics.newQuad(1*tS, 1*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 1, fertile = true, walkable = true },
    
    { id = "small_plant", texture = love.graphics.newQuad(0, 2*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},
    
    { id = "red_flower", texture = love.graphics.newQuad(0, 3*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},
    { id = "orange_flower", texture = love.graphics.newQuad(0, 4*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},
    { id = "yellow_flower", texture = love.graphics.newQuad(0, 5*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},
    { id = "cyan_flower", texture = love.graphics.newQuad(0, 6*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},

    { id = "blue_flower", texture = love.graphics.newQuad(1*tS, 3*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},
    { id = "purple_flower", texture = love.graphics.newQuad(1*tS, 4*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},
    { id = "pink_flower", texture = love.graphics.newQuad(1*tS, 5*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},
    { id = "white_flower", texture = love.graphics.newQuad(0, 6*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},


    { id = "rock_floor", texture = love.graphics.newQuad(2*tS, 11*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},
    { id = "stones_floor", texture = love.graphics.newQuad(2*tS, 12*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},

    { id = "magma", texture = love.graphics.newQuad(4*tS, 11*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 4, fertile = false, walkable = false},
    { id = "magma_stones", texture = love.graphics.newQuad(3*tS, 11*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 4, fertile = false, walkable = false},
    { id = "water", texture = love.graphics.newQuad(4*tS, 12*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = false},
    { id = "water_stones", texture = love.graphics.newQuad(3*tS, 12*tS, tS, tS, textures:getWidth(), textures:getHeight()), temperature = 2, fertile = false, walkable = true},
}