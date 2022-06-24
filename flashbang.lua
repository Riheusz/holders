local ScreenGui = Instance.new("ScreenGui")
local FlashFrame = Instance.new("Frame")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FlashFrame.Name = "FlashFrame"
FlashFrame.Parent = ScreenGui
FlashFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlashFrame.Position = UDim2.new(0.5, -960, 0.5, -540)
FlashFrame.Size = UDim2.new(0, 1920, 0, 1080)


local FlashbangSound = Instance.new("Sound")
FlashbangSound.Name = "Flashbang"
FlashbangSound.SoundId = "http://www.roblox.com/asset/?id=9114799182"
FlashbangSound.Volume = 1
FlashbangSound.Looped = false
FlashbangSound.archivable = false
FlashbangSound.Parent = game.Workspace
FlashbangSound:Play()

wait(0.6)
FlashFrame.BackgroundTransparency = 0.1
wait(0.1)
FlashFrame.BackgroundTransparency = 0.2
wait(0.1)
FlashFrame.BackgroundTransparency = 0.3
wait(0.1)
FlashFrame.BackgroundTransparency = 0.4
wait(0.1)
FlashFrame.BackgroundTransparency = 0.5
wait(0.1)
FlashFrame.BackgroundTransparency = 0.6
wait(0.1)
FlashFrame.BackgroundTransparency = 0.7
wait(0.1)
FlashFrame.BackgroundTransparency = 0.8
wait(0.1)
FlashFrame.BackgroundTransparency = 0.9
wait(0.1)
FlashFrame.Visible = false
--:troll:
