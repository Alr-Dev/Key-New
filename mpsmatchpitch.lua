
if _G.BypassTwo or _G.BypassedOne then
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
_G.BypassTwo = true
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
local Tab = DrRayLibrary.newTab("Configs", "ImageIdHere")
