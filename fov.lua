if getgenv().AimingSettings then return getgenv().AimingSettings end

-- // Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")

-- // Vars
local Heartbeat = RunService.Heartbeat
local LocalPlayer = Players.LocalPlayer
local CurrentCamera = Workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

-- // Optimisation Vars (ugly)
local Drawingnew = Drawing.new
local Color3fromRGB = Color3.fromRGB
local Vector2new = Vector2.new
local GetGuiInset = GuiService.GetGuiInset
local Randomnew = Random.new
local mathfloor = math.floor
local CharacterAdded = LocalPlayer.CharacterAdded
local CharacterAddedWait = CharacterAdded.Wait
local WorldToViewportPoint = CurrentCamera.WorldToViewportPoint
local RaycastParamsnew = RaycastParams.new
local EnumRaycastFilterTypeBlacklist = Enum.RaycastFilterType.Blacklist
local Raycast = Workspace.Raycast
local GetPlayers = Players.GetPlayers
local Instancenew = Instance.new
local IsDescendantOf = Instancenew("Part").IsDescendantOf
local FindFirstChildWhichIsA = Instancenew("Part").FindFirstChildWhichIsA
local FindFirstChild = Instancenew("Part").FindFirstChild
local tableremove = table.remove
local tableinsert = table.insert

-- // Silent Aim Vars
getgenv().AimingSettings = {
    Enabled = true,
    ShowFOV = true,
    FOVSides = 40,
    FOVColour = Color3fromRGB(242, 19, 19),
    VisibleCheck = true,
    FOV = 500,
    HitChance = 100,
    Selected = LocalPlayer,
    SelectedPart = nil,
    TargetPart = {"Head", "HumanoidRootPart"},
    Ignored = {
        Teams = {
            {
                Team = LocalPlayer.Team,
                TeamColor = LocalPlayer.TeamColor,
            },
        },
        Players = {
            LocalPlayer,
            91318356
        }
    }
}
local AimingSettings = getgenv().AimingSettings

-- // Show FOV
local circle = Drawingnew("Circle")
circle.Transparency = 1
circle.Thickness = 2
circle.Color = AimingSettings.FOVColour
circle.Filled = false
function AimingSettings.UpdateFOV()
    if (circle) then
        -- // Set Circle Properties
        circle.Visible = AimingSettings.ShowFOV
        circle.Radius = (AimingSettings.FOV * 3)
        circle.Position = Vector2new(Mouse.X, Mouse.Y + GetGuiInset(GuiService).Y)
        circle.NumSides = AimingSettings.FOVSides
        circle.Color = AimingSettings.FOVColour

        -- // Return circle
        return circle
    end
end

-- // Custom Functions
local CalcChance = function(percentage)
    percentage = mathfloor(percentage)
    local chance = mathfloor(Randomnew().NextNumber(Randomnew(), 0, 1) * 100) / 100
    return chance <= percentage / 100
end

-- // Customisable Checking Functions: Is a part visible
function AimingSettings.IsPartVisible(Part, PartDescendant)
    -- // Vars
    local Character = LocalPlayer.Character or CharacterAddedWait(CharacterAdded)
    local Origin = CurrentCamera.CFrame.Position
    local _, OnScreen = WorldToViewportPoint(CurrentCamera, Part.Position)

    -- // If Part is on the screen
    if (OnScreen) then
        -- // Vars: Calculating if is visible
        local raycastParams = RaycastParamsnew()
        raycastParams.FilterType = EnumRaycastFilterTypeBlacklist
        raycastParams.FilterDescendantsInstances = {Character, CurrentCamera}

        local Result = Raycast(Workspace, Origin, Part.Position - Origin, raycastParams)
        if (Result) then
            local PartHit = Result.Instance
            local Visible = (not PartHit or IsDescendantOf(PartHit, PartDescendant))

            -- // Return
            return Visible
        end
    end

    -- // Return
    return false
end

-- // Ignore player
function AimingSettings.IgnorePlayer(Player)
    -- // Vars
    local Ignored = AimingSettings.Ignored
    local IgnoredPlayers = Ignored.Players

    -- // Find player in table
    for i = 1, #IgnoredPlayers do
        local IgnoredPlayer = IgnoredPlayers[i]

        if (IgnoredPlayer == Player) then
            return false
        end
    end

    -- // Blacklist player
    tableinsert(IgnoredPlayers, Player)
    return true
end

-- // Unignore Player
function AimingSettings.UnIgnorePlayer(Player)
    -- // Vars
    local Ignored = AimingSettings.Ignored
    local IgnoredPlayers = Ignored.Players

    -- // Find player in table
    for i = 1, #IgnoredPlayers do
        local IgnoredPlayer = IgnoredPlayers[i]

        if (IgnoredPlayer == Player) then
            tableremove(IgnoredPlayers, i)
            return true
        end
    end

    -- //
    return false
end

-- // Ignore team
function AimingSettings.IgnoreTeam(Team, TeamColor)
    -- // Vars
    local Ignored = AimingSettings.Ignored
    local IgnoredTeams = Ignored.Teams

    -- // Find team in table
    for i = 1, #IgnoredTeams do
        local IgnoredTeam = IgnoredTeams[i]

        if (IgnoredTeam.Team == Team and IgnoredTeam.TeamColor == TeamColor) then
            return false
        end
    end

    -- // Ignore team
    tableinsert(IgnoredTeams, {Team, TeamColor})
    return true
end

-- // Unignore team
function AimingSettings.UnIgnoreTeam(Team, TeamColor)
    -- // Vars
    local Ignored = AimingSettings.Ignored
    local IgnoredTeams = Ignored.Teams

    -- // Find team in table
    for i = 1, #IgnoredTeams do
        local IgnoredTeam = IgnoredTeams[i]

        if (IgnoredTeam.Team == Team and IgnoredTeam.TeamColor == TeamColor) then
            -- // Remove
            tableremove(IgnoredTeams, i)
            return true
        end
    end

    -- // Return
    return false
end

-- //  Toggle team check
function AimingSettings.TeamCheck(Toggle)
    if (Toggle) then
        return AimingSettings.IgnoreTeam(LocalPlayer.Team, LocalPlayer.TeamColor)
    end

    return AimingSettings.UnIgnoreTeam(LocalPlayer.Team, LocalPlayer.TeamColor)
end

-- // Check teams
function AimingSettings.IsIgnoredTeam(Player)
    -- // Vars
    local Ignored = AimingSettings.Ignored
    local IgnoredTeams = Ignored.Teams

    -- // Check if team is ignored
    for i = 1, #IgnoredTeams do
        local IgnoredTeam = IgnoredTeams[i]

        if (Player.Team == IgnoredTeam.Team and Player.TeamColor == IgnoredTeam.TeamColor) then
            return true
        end
    end

    -- // Return
    return false
end

-- // Check if player (and team) is ignored
function AimingSettings.IsIgnored(Player)
    -- // Vars
    local Ignored = AimingSettings.Ignored
    local IgnoredPlayers = Ignored.Players

    -- // Loop
    for i = 1, #IgnoredPlayers do
        local IgnoredPlayer = IgnoredPlayers[i]

        -- // Check if Player Id
        if (typeof(IgnoredPlayer) == "number") then
            if (Player.UserId == IgnoredPlayer) then
                return true
            end
        end

        -- // Normal Player Instance
        if (IgnoredPlayer == Player) then
            return true
        end
    end

    -- // Team check
    return AimingSettings.IsIgnoredTeam(Player)
end

-- // Get the Direction, Normal and Material
function AimingSettings.Raycast(Origin, Destination, UnitMultiplier)
    if (typeof(Origin) == "Vector3" and typeof(Destination) == "Vector3") then
        -- // Handling
        if (not UnitMultiplier) then UnitMultiplier = 1 end

        -- // Vars
        local Direction = (Destination - Origin).Unit * UnitMultiplier
        local RaycastResult = Raycast(Workspace, Origin, Direction)

        if (RaycastResult ~= nil) then
            local Normal = RaycastResult.Normal
            local Material = RaycastResult.Material

            return Direction, Normal, Material
        end
    end

    -- // Return
    return nil
end

-- // Get Character
function AimingSettings.Character(Player)
    return Player.Character
end

-- // Check Health
function AimingSettings.CheckHealth(Player)
    local Character = AimingSettings.Character(Player)
    local Humanoid = FindFirstChildWhichIsA(Character, "Humanoid")

    local Health = (Humanoid and Humanoid.Health or 0)
    return Health > 0
end

-- // Check if silent aim can used
function AimingSettings.Check()
    return (AimingSettings.Enabled == true and AimingSettings.Selected ~= LocalPlayer and AimingSettings.SelectedPart ~= nil)
end
AimingSettings.checkSilentAim = AimingSettings.Check

-- // Get Closest Target Part
function AimingSettings.GetClosestTargetPartToCursor(Character)
    local TargetParts = AimingSettings.TargetPart

    -- // Vars
    local ClosestPart = nil
    local ClosestPartPosition = nil
    local ClosestPartOnScreen = false
    local ClosestPartMagnitudeFromMouse = nil
    local ShortestDistance = 1/0

    -- //
    local function CheckTargetPart(TargetPartName)
        local TargetPart = FindFirstChild(Character, TargetPartName)

        if (TargetPart) then
            local PartPos, onScreen = WorldToViewportPoint(CurrentCamera, TargetPart.Position)
            local Magnitude = (Vector2new(PartPos.X, PartPos.Y) - Vector2new(Mouse.X, Mouse.Y)).Magnitude

            if (Magnitude < ShortestDistance) then
                ClosestPart = TargetPart
                ClosestPartPosition = PartPos
                ClosestPartOnScreen = onScreen
                ClosestPartMagnitudeFromMouse = Magnitude
                ShortestDistance = Magnitude
            end
        end
    end

    -- // String check
    if (typeof(TargetParts) == "string") then
        -- // Check if it all
        if (TargetParts == "All") then
            -- // Loop through character children
            for _, v in ipairs(Character:GetChildren()) do
                -- // See if it a part
                if not (v:IsA("BasePart")) then
                    continue
                end

                -- // Check it
                CheckTargetPart(v.Name)
            end
        else
            -- // Individual
            CheckTargetPart(TargetParts)
        end
    end

    -- // Loop through all target parts
    if (typeof(TargetParts) == "table") then
        for i = 1, #TargetParts do
            local TargetPartName = TargetParts[i]
            CheckTargetPart(TargetPartName)
        end
    end

    -- //
    return ClosestPart, ClosestPartPosition, ClosestPartOnScreen, ClosestPartMagnitudeFromMouse
end

-- // Silent Aim Function
function AimingSettings.GetClosestPlayerToCursor()
    -- // Vars
    local TargetPart = nil
    local ClosestPlayer = nil
    local Chance = CalcChance(AimingSettings.HitChance)
    local ShortestDistance = 1/0

    -- // Chance
    if (not Chance) then
        AimingSettings.Selected = LocalPlayer
        AimingSettings.SelectedPart = nil

        return LocalPlayer
    end

    -- // Loop through all players
    local AllPlayers = GetPlayers(Players)
    for i = 1, #AllPlayers do
        local Player = AllPlayers[i]
        local Character = AimingSettings.Character(Player)

        if (AimingSettings.IsIgnored(Player) == false and Character) then
            local TargetPartTemp, _, _, Magnitude = AimingSettings.GetClosestTargetPartToCursor(Character)

            -- // Check if part exists and health
            if (TargetPartTemp and AimingSettings.CheckHealth(Player)) then
                -- // Check if is in FOV
                if (circle.Radius > Magnitude and Magnitude < ShortestDistance) then
                    -- // Check if Visible
                    if (AimingSettings.VisibleCheck and not AimingSettings.IsPartVisible(TargetPartTemp, Character)) then continue end

                    -- // Set vars
                    ClosestPlayer = Player
                    ShortestDistance = Magnitude
                    TargetPart = TargetPartTemp
                end
            end
        end
    end

    -- // End
    AimingSettings.Selected = ClosestPlayer
    AimingSettings.SelectedPart = TargetPart
end

-- // Heartbeat Function
Heartbeat:Connect(function()
    AimingSettings.UpdateFOV()
    AimingSettings.GetClosestPlayerToCursor()
end)

return AimingSettings

-- // Examples // --

--// Namecall Version // --

--[[
-- // Load AimingSettings Module
local AimingSettings = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Universal/AimingSettings/Module.lua"))()

-- // Hook
local __namecall
__namecall = hookmetamethod(game, "__namecall", function(...)
    -- // Vars
    local args = {...}
    local self = args[1]
    local method = getnamecallmethod()

    -- // Checks
    if (method == "FireServer") then
        if (self.Name == "RemoteNameHere") then
            -- change args

            -- // Return changed arguments
            return __namecall(unpack(args))
        end
    end

    -- // Return
    return __namecall(...)
end)
]]--

-- // Index Version // --

--[[
-- // Load AimingSettings Module
local AimingSettings = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Universal/AimingSettings/Module.lua"))()

-- // Hook
local __index
__index = hookmetamethod(game, "__index", function(t, k)
    -- // Check if it trying to get our mouse's hit or target
    if (t:IsA("Mouse") and (k == "Hit" or k == "Target")) then
        -- // If we can use the silent aim
        if (AimingSettings.Check()) then
            -- // Vars
            local TargetPart = AimingSettings.SelectedPart

            -- // Return modded val
            return (k == "Hit" and TargetPart.CFrame or TargetPart)
        end
    end

    -- // Return
    return __index(t, k)
end)
]]--
