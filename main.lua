--[[
    *** IMPORTANT ***

please read README.md

--]]

function imports()
    Tick = require "src.packages.tick"
    Json = require "src.packages.json"
    Data = require "data"
end


function love.load()
    imports()
    Tick.framerate = 240 -- Limit framerate to 240 frames per second.
end

function love.update(dt)
    if Data.window and Data.window.title then
        love.window.setTitle(data.window.title)
    else
        love.window.setTitle(tostring(dt))
    end
end

function love.draw()

end









