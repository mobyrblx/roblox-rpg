--- Main injection point for the game
-- @script ServerMain

local require = require(game:GetService("ReplicatedStorage"):WaitForChild("Nevermore"))

local ClassDatabase = require("ClassDatabase")
local ItemDatabase = require("ItemDatabase")
 
local GetRemoteFunction = require("GetRemoteFunction")
local GetClass = GetRemoteFunction("GetClass")

function GetClass.OnServerInvoke(className)
    return ClassDatabase:get(className) or ClassDatabase:get()
end

print("Server loaded")