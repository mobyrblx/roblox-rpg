--- Sample class with Nevermore
-- @classmod SampleClass

local require = require(game:GetService("ReplicatedStorage"):WaitForChild("Nevermore"))
local Database = require("ItemDatabases")

local Inventory = {}
Inventory.ClassName = "Class"
Inventory.__index = Class

function Inventory.new(player, name, weaponType)
	local self = {}
	setmetatable(self, Inventory)

    self.armor = {}
    self.weapon = {}
    self.boost = {}

	return self
end

function Inventory:addItem(itemName, type, subType)
    self[type][itemName] = {}
    self[type][itemName] = Database:get(type, subType, itemName)
end

return Inventorys