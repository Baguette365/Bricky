--[[

An basic image brick that while display a sprite in 2D

--]]

require "brick"

-- Classe "Enfant" qui hérite de Personne
Image2D = setmetatable({}, {__index = })
Image2D.__index = Image2D

function Enfant:new(nom, age, jouet)
    local self = setmetatable(Personne:new(nom, age), Enfant)
    self.jouet = jouet
    return self
end

function Enfant:sePresenter()
    -- on peut réutiliser la méthode parent
    Personne.sePresenter(self)
    print("Et je joue avec " .. self.jouet)
end
