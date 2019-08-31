--- Sample class with Nevermore
-- @classmod SampleClass

local require = require(game:GetService("ReplicatedStorage"):WaitForChild("Nevermore"))
local Inventory = require("Inventory")

local Equipped = {}
Equipped.ClassName = "Class"
Equipped.__index = Class
setmetatable(Equipped, Inventory)

function Equipped.new(player, name, weaponType)
	local self = Inventory.new()
	setmetatable(self, Equipped)

    self.boosts = nil

	return self
end

return Equipped