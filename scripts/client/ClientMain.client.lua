--- Main injection point for the game on the client
-- @script ClientMain

local require = require(game:GetService("ReplicatedStorage"):WaitForChild("Nevermore"))
local GetRemoteFunction = require("GetRemoteFunction")
local GetClass = GetRemoteFunction("GetClass")

local Players = game:GetService("Players")

local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

local snackbarManager = require("SnackbarManager").new()
	:WithPlayerGui(playerGui)

local Classes = GetClass:InvokeServer()

snackbarManager:MakeSnackbar("Client loaded")
print("Client loaded")