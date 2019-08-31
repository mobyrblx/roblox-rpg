--- Sample class with Nevermore
-- @classmod SampleClass

local require = require(game:GetService("ReplicatedStorage"):WaitForChild("Nevermore"))
local Class = require("Class")
local Maid = require("Maid")

local Knight = {}
Knight.ClassName = "Class"
Knight.__index = Class
setmetatable(Class, Knight)

function Knight.new(player)
	local self = Class.new(player, "Knight", "Sword")
	setmetatable(self, Knight)

	return self
end

return Knight