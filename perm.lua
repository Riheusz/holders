local SG = Instance.new("ScreenGui")
local F = Instance.new("Frame")
local _1 = Instance.new("TextLabel")
local _2 = Instance.new("TextLabel")

SG.Name = "SG"
SG.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

F.Name = "F"
F.Parent = SG
F.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
F.Position = UDim2.new(0.53773582, -500000000, 0.752764583, -500000000)
F.Size = UDim2.new(0, 1000000000, 0, 1000000000)

_1.Name = "1"
_1.Parent = F
_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_1.BackgroundTransparency = 1.000
_1.Position = UDim2.new(0.49999997, -500000000, 0.5, -500000000)
_1.Size = UDim2.new(0, 1000000000, 0, 1000000000)
_1.Font = Enum.Font.RobotoCondensed
_1.Text = "HOODSENSE"
_1.TextColor3 = Color3.fromRGB(255, 255, 255)
_1.TextSize = 71.000
_1.TextWrapped = true

_2.Name = "2"
_2.Parent = F
_2.BackgroundColor3 = Color3.fromRGB(0, 12, 255)
_2.BackgroundTransparency = 1.000
_2.Position = UDim2.new(1.91999987e-07, 0, -3.19999991e-08, 0)
_2.Size = UDim2.new(0, 1000000000, 0, 1000000000)
_2.Font = Enum.Font.SourceSans
_2.Text = "PREMIUM"
_2.TextColor3 = Color3.fromRGB(0, 12, 255)
_2.TextSize = 44.000
_2.TextWrapped = true
