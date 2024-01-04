# LÖVE2D Box Physics Example

This is a simple LÖVE2D project that demonstrates basic physics using the love.physics module. The example includes a dynamic box affected by gravity, with collision detection against the ground.

## How to Use

1. Download and install LÖVE2D from [love2d.org](https://love2d.org/).
2. Clone this repository or download it as a ZIP.
3. Open the project folder in LÖVE2D or drag and drop the folder onto the LÖVE2D application.
4. After install the required libraries execute `love .` in your terminal to run out the main file.

## Project Structure

- **main.lua**: The main game file containing the physics simulation and rendering code.
  
## Physics Implementation

The project utilizes the `love.physics` module to create a dynamic box affected by gravity. The box has restitution set to 0.9 for bouncing.

```lua
local love = require("love")

local world = love.physics.newWorld(0, 9.81, true)

-- ... (box creation and physics setup)

function love.update(dt)
    world:update(dt)
    checkGround(objects.box)
end

function love.draw()
    love.graphics.rectangle("line", objects.box.body:getX(), objects.box.body:getY(), objects.box.w, objects.box.h)
}
```
## Ground Collision Detection

The checkGround function ensures that the box stays above the ground and resets its velocity when it reaches the bottom.
