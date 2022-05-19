for i,v in pairs(game:GetService('Players'):GetChildren()) do
   Player = v.Name
   AnimationId = "3487719500"
   local Anim = Instance.new("Animation")
   Anim.AnimationId = "rbxassetid://"..AnimationId
   local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
   k:Play() --Play the animation
end
