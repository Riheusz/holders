local ScreenGui = Instance.new("ScreenGui")
local JumpScareFrame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

JumpScareFrame.Name = "JumpScareFrame"
JumpScareFrame.Parent = ScreenGui
JumpScareFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JumpScareFrame.Position = UDim2.new(0.5, -960, 0.5, -540)
JumpScareFrame.Size = UDim2.new(0, 1920, 0, 1080)

ImageLabel.Parent = JumpScareFrame
ImageLabel.BackgroundColor3 = Color3.fromRGB(20,20,20)
ImageLabel.Position = UDim2.new(0.5, -960, 0.5, -540)
ImageLabel.Size = UDim2.new(0, 1920, 0, 1080)
ImageLabel.Image = "rbxassetid://8013340085"


local ScreamSound = Instance.new("Sound")
ScreamSound.Name = "Scream"
ScreamSound.SoundId = "http://www.roblox.com/asset/?id=8280196339" or "http://www.roblox.com/asset/?id=7588947168"
ScreamSound.Volume = 0.7
ScreamSound.Looped = false
ScreamSound.archivable = false
ScreamSound.Parent = game.Workspace
ScreamSound:Play()

wait(1.2)
ImageLabel.ImageTransparency = 0.1
wait(0.1)
ImageLabel.ImageTransparency = 0.2
wait(0.1)
ImageLabel.ImageTransparency = 0.3
wait(0.1)
ImageLabel.ImageTransparency = 0.4
wait(0.1)
ImageLabel.ImageTransparency = 0.5
wait(0.1)
ImageLabel.ImageTransparency = 0.6
wait(0.1)
ImageLabel.ImageTransparency = 0.7
wait(0.1)
ImageLabel.ImageTransparency = 0.8
wait(0.1)
ImageLabel.ImageTransparency = 0.9
wait(0.1)
JumpScareFrame.Visible = false
--:troll:
