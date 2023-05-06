local World = {}
require "tiles"

function World.generateWorld(width, height, textures)

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
            love.graphics.draw(textures, tile.texture, (x-1)*tS, (y-1)*tS)
            if tile.object then
                tile.object:draw(textures, x, y, tS)
            end
        end
    end
end
  
return World
