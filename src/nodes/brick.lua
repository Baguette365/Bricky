--[[

The basic brick that will make after all of the futur bricks of Bricky

--]]

Brick = {}
Brick.__index = Brick
function checkType(value, expected, name)
    assert(type(value) == expected, name .. " must be " .. expected)
end

function greet(name, age)
    checkType(name, "string", "name")
    checkType(age, "number", "age")
    print("Bonjour " .. name .. ", tu as " .. age .. " ans.")
end


function Brick:new(position, rotation, scale)
    local self = setmetatable({}, Brick)
    self.position = position
    self.rotation = rotation
    self.scale = scale
    return self
end

function Brick:move(NewPosition, IsRelative)
    if not IsRelative then
        self.position = NewPosition
    else
        self.position = self.position + NewPosition
    end
end

function Brick:rotate(NewRotation, IsRelative)
    if not IsRelative then
        self.rotation = NewRotation
    else
        self.rotation = self.rotation + NewRotation
    end
end

function Brick:scale(NewScale, IsAbsolute)
    if not IsAbsolute then
        self.scale = self.scale * NewScale
    else
        self.scale = NewScale
    end
end








