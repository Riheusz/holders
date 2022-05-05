local StarId = {
	[3128475189] = true,
	[2244576018] = true,
	[1683670578] = true,
 	[715976876] = true,
	[2604028397] = true,
	[943527190] = true,
	[244225295] = true,
	[3323076730] = true,
	[2908771029] = true,
	[1090807044] = true,
	[401984657] = true,
	[2557134457] = true,
	[2579528939] = true,
	[3234569780] = true,
	[739797913] = true,
	[554069643] = true,
	[704864053] = true,
	[882873696] = true,		
	[2788229376] = true,
	[243011466] = true,
	[180050164] = true,
	[2530475931] = true,
	[2752617727] = true,
	[3447149531] = true,
}

local CrownId = {
	[2452452863] = true,
	[3449237561] = true,
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
		end
	end
end
local success,err = pcall(premium)
