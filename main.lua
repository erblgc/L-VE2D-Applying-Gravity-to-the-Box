local love = require("love")

local world = love.physics.newWorld(0, 9.81, true)

local objects = {
    box = {
        x = 10,
        y = 10,
        w = 100,
        h = 100,
    }
}
objects.box.body = love.physics.newBody(world, objects.box.x, objects.box.y, "dynamic")
objects.box.shape = love.physics.newRectangleShape(objects.box.w, objects.box.h)
objects.box.fixture = love.physics.newFixture(objects.box.body, objects.box.shape , 1)
objects.box.fixture:setRestitution(0.9)

local function checkGround(box)
    local y = box.body:getY()
    if y >= love.graphics.getHeight() - box.h then
        box.body:setY(love.graphics.getHeight() - box.h)
        box.body:setLinearVelocity(0, 0) -- Hızı sıfırla
    end
end
function love.load()

end

function love.update(dt)
    world:update(dt)
    checkGround(objects.box)
end

function love.draw()
    love.graphics.rectangle("line", objects.box.body:getX(), objects.box.body:getY(), objects.box.w, objects.box.h)
end