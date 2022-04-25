local function Banned(UserID, Reason)
	if game:GetService('Players').LocalPlayer.UserId == UserID then
		game:GetService('Players').LocalPlayer:Kick('                                HOODSENSE BANNED:                                                           '..Reason)
	end
end

Banned(2788229376, 'Using alt accounts.')
