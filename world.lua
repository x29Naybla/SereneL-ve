local World = {}

function World.generateWorld(width, height, textures)
    local tiles = {
        { id = dirt_floor, texture = love.graphics.newQuad(0, 0, textureSize, textureSize, 176, 208), temperature = 2, walkable = true },
        { id = sand_floor, texture = love.graphics.newQuad(16, 0, textureSize, textureSize, 176, 208), temperature = 3, walkable = true },
        { id = grass_floor, texture = love.graphics.newQuad(0, 16, textureSize, textureSize, 176, 208), temperature = 2, walkable = true},
        { id = snow_floor, texture = love.graphics.newQuad(16, 16, textureSize, textureSize, 176, 208), temperature = 1, walkable = true },
        { id = small_plant_floor, texture = love.graphics.newQuad(0, 32, textureSize, textureSize, 176, 208), temperature = 2, walkable = true},
        { id = rock_floor, texture = love.graphics.newQuad(32, 176, textureSize, textureSize, 176, 208), temperature = 2, walkable = true},
        { id = stones_floor, texture = love.graphics.newQuad(32, 192, textureSize, textureSize, 176, 208), temperature = 2, walkable = true},
    
        { id = lava_floor, texture = love.graphics.newQuad(64, 176, 16, 16, 176, 208), temperature = 4, walkable = false},
        { id = water_floor, texture = love.graphics.newQuad(64, 192, textureSize, textureSize, 176, 208), temperature = 2, walkable = false},
    }

    local world = {}
    for y = 1, height do
        world[y] = {}
        x = 1
        while x <= width do
            local tile = tiles[love.math.random(1, #tiles)]
            if x > 1 and world[y][x-1] and math.abs(tile.temperature - world[y][x-1].temperature) > 1 then
                
            elseif y > 1 and math.abs(tile.temperature - world[y-1][x].temperature) > 1 then

            else
                world[y][x] = tile
                x = x + 1
            end
        end
    end
    return world
end
  
function World.draw(world)
    for y = 1, #world do
      for x = 1, #world[y] do
        local tile = world[y][x]
        love.graphics.draw(textures, tile.texture, (x-1)*textureSize, (y-1)*textureSize)
      end
    end
end
  
return World