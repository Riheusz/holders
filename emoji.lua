--// Credits to space im too lazy to do this uwu love you space \\--

local StarId = {
	[3254506659] = true,
	[1456523092] = true,
	[2244576018] = true,
	[1683670578] = true,
	[715976876] = true,
	[2604028397] = true,
	[943527190] = true,
}

local CrownId = {
	[2452452863] = true,
	[3215415009] = true,
}

local DiamondId = {}

local WoahId = {
	[2426318135] = true,
	[2994493100] = true,
}

function premium()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if StarId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
			end
		elseif CrownId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
				end
			end
		elseif DiamondId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]'..v.DisplayName)
				end
			end
		elseif WoahId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😲]'..v.DisplayName)
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso:FindFirstChild('BodyBackAttachment') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😳]'..v.DisplayName)
				end
			end
		end
	end
end
local success,err = pcall(premium)
