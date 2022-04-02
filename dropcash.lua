local rs = game:GetService("ReplicatedStorage")
_G.moneyAmount = 10000
rs.MainEvent:FireServer("DropMoney", _G.moneyAmount)
