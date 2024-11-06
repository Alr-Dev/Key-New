if _G.ScriptExecuted then
  return warn('Script was alredy executed.')
end
_G.ScriptExecuted = true
local types = {
  Remote = game:GetService("ReplicatedStorage").Events.AntiCheat
}
types.Remote:Destroy()
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("SPJ Reach", "Default")
local Tab = DrRayLibrary.newTab("Main", "ImageIdHere")
local Tab2 = DrRayLibrary.newTab("Customize", "ImageIdHere")
Tab.newSlider("Right leg", "", 100, false, function(Value) 
    local rightLeg = game.Players.LocalPlayer.Character['Right Leg']
    rightLeg.Size = Vector3.new(Value, rightLeg.Size.Y, Value)
end)
Tab.newSlider("Left leg", "", 100, false, function(Value) 
    local leftLeg = game.Players.LocalPlayer.Character['Left Leg']
    leftLeg.Size = Vector3.new(Value, leftLeg.Size.Y, Value)
end)
Tab2.newSlider("Right leg transparency", "", 5, false, function(Value) 
    game.Players.LocalPlayer.Character['Right Leg'].Transparency = Value
end)
Tab2.newSlider("Left leg transparency", "", 5, false, function(Value) 
    game.Players.LocalPlayer.Character['Left Leg'].Transparency = Value
end)
game.Players.LocalPlayer.Character['Right Leg'].Massless = true
game.Players.LocalPlayer.Character['Left Leg'].Massless = true
