function StopAnimations()
    for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
        if (v.Animation.AnimationId:match("rbxassetid")) then
            v:Stop()
            end
        end
    end
StopAnimations()
