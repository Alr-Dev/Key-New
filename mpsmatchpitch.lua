
if _G.BypassTwo then
    print('Bypass was alredy executed.')
end
if _G.ScriptExec then
    return print('Script was alredy executed.')
end
local types = {
    X = game:GetService("ReplicatedStorage").Events.AntiCheat,
    V = game:GetService("StarterPlayer").StarterPlayerScripts.Scripts.AntiCheat
}
_G.BypassedOne = true
_G.ScriptExec = true
local function bypass()
if types.V then
    types.V:Destroy()
end
if types.X then
    types.X:Destroy()
end
end
bypass()
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("SPJ Reach", "Default")
local Tab = DrRayLibrary.newTab("Main", "ImageIdHere")
local Tab2 = DrRayLibrary.newTab("Customize", "ImageIdHere")
Tab.newSlider("Right leg", "", 5, false, function(Value) 
    game.Players.LocalPlayer.Character['Right Leg'].Size = Vector3.new(Value, Value, Value)
end)
Tab.newSlider("Left leg", "", 5, false, function(Value) 
    game.Players.LocalPlayer.Character['Left Leg'].Size = Vector3.new(Value, Value, Value)
end)
Tab2.newSlider("Right leg transparency", "", 5, false, function(Value) 
    game.Players.LocalPlayer.Character['Right Leg'].Transparency = Value
end)
Tab2.newSlider("Left leg transparency", "", 5, false, function(Value) 
    game.Players.LocalPlayer.Character['Left Leg'].Transparency = Value
end)
