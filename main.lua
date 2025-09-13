--[[
    *** IMPORTANT ***

please read README.md

--]]

function imports()
    tick = require "src.packages.tick"
    json = require "src.packages.json"
    data = require "data"
end


function love.load()
    imports()
    tick.framerate = 240 -- Limit framerate to 240 frames per second.
end

function love.update(dt)
    if data.window and data.window.title then
        love.window.setTitle(data.window.title)
    else
        love.window.setTitle(tostring(dt))
    end
end

function love.draw()

end









