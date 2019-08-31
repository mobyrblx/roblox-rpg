--- Sample class with Nevermore
-- @classmod SampleClass

local require = require(game:GetService("ReplicatedStorage"):WaitForChild("Nevermore"))
local Inventory = require("Inventory")
local Equipped = require("Equipped")
local ItemDatabase = require("ItemDatabase")
local ClassDatabase = require("ClassDatabase")

local Class = {}
Class.ClassName = "Class"
Class.__index = Class

function Class.new(player, name, weaponType)
	local self = {}
	setmetatable(self, Class)

	--// main stuff
	self.player = player
	self.name = name
	self.weaponType = weaponTypes

	--// important stuff
	self._maid = Maid.new()			

	--// stats
	self.level = 1
	self.xp = 0
	self.gold = 0

	--// inventory
	self.inventory = Inventory.new()

	--// equipped
	self.equipped = Equipped.new()

	ClassDatabase:set(self.name, self)

	return self
end

function Class:addItem(itemName, type)
	if (ItemDatabase:get(itemName, type, (self.weaponType or self.name))) then
		self.inventory:addItem(itemName, type, (self.weaponType or self.name))
	end
end

function Class:equipItem(name, type)
	if (self.inventory[type][name]) thens
		self.equipped:equipItem(type, name)
	end
end

return Class