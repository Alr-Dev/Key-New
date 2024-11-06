if _G.ScriptExecuted then
  return warn('Script was alredy executed.')
end
_G.ScriptExecuted = true
local types = {
  Remote = game:GetService("ReplicatedStorage").Events.AntiCheat
}
types.Remote:Destroy()
