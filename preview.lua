--[[
    Information:

    - Da Hood (https://www.roblox.com/games/2788229376/)
]]

-- // Dependencies
local Aiming = loadstring(game:HttpGet(https://raw.githubusercontent.com/fedaralagent/signalmodule.lua/main/Source%20created.lua"))()

-- // Disable Team Check
Aiming.TeamCheck(false)
Aiming.Ignored.IgnoreOtherTeams = false

-- // Downed Check
function Aiming.CheckCustom(Player)
    -- // Check if downed
    local Character = Aiming.Character(Player)
    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

    -- // Check B
    if (KOd or Grabbed) then
        return false
    end

    -- //
    return true
end

-- // Return
return Aiming
