for i,v in pairs(game:GetService('Players'):GetChildren()) do
   AnimationId = "3487719500"
   local Anim = Instance.new("Animation")
   Anim.AnimationId = "rbxassetid://"..AnimationId
   local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
   k:Play() --Play the animation
end
