local TeleportToSafeZone = true;


local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[HeavyWeights] - $250"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
plr.Backpack["[HeavyWeights]"].Parent = plr.Character
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(86.081665, -25.2122707, -337.847443)
    end
    plr.Character["[HeavyWeights]"]:Activate()
    wait()
end
-- | Antiafk
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
