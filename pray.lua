local Player = game:GetService("Players").LocalPlayer
			local UniversalAnimation = Instance.new("Animation")

			function stopTracks()
				for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
					if (v.Animation.AnimationId:match("rbxassetid")) then
						v:Stop()
					end
				end
			end

			function loadAnimation(id)
				if UniversalAnimation.AnimationId == id then
					stopTracks()
					UniversalAnimation.AnimationId = "1"
				else
					UniversalAnimation.AnimationId = id
					local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
					animationTrack:Play()
				end
			end
loadAnimation("rbxassetid://3487719500")
