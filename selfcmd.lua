--idk why u tryin to "crack" self commands that u can make in 5 mins LOL
local User = game.Players.LocalPlayer

User.Chatted:connect(function(cht)
if cht:match("$commands") then
setclipboard("$commands, $reset,  $jobid, $hop, $rejoin, $fly, $rage")
                end
        end)
User.Chatted:connect(function(cht)
if cht:match("$reset") then
game.Players.LocalPlayer.Character.Humanoid:Destroy()
                end
        end)

User.Chatted:connect(function(cht)
if cht:match("$jobid") then
setclipboard(""..game.JobId.."")
                end
        end)

User.Chatted:connect(function(cht)
if cht:match("$hop") then
loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/serverhop.lua'))()
                end
        end)
User.Chatted:connect(function(cht)
if cht:match("$rejoin") then
loadstring(game:HttpGet('https://pastebin.com/raw/1gtVMUz3'))()
                end
        end) 
User.Chatted:connect(function(cht)
if cht:match("$fly") then
loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/fly.lua'))()
                end
        end)

User.Chatted:connect(function(cht)
if cht:match("$rage") then
game.Players.LocalPlayer:Kick("                                RAGE QUIT!")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAGE QUIT")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAGE QUI")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAGE QU")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAGE Q")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAGE ")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAG")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RA")
wait(0.5)
game.Players.LocalPlayer:Kick("                                R")
wait(0.5)
game.Players.LocalPlayer:Kick("")
wait(0.5)
game.Players.LocalPlayer:Kick("                                R")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RA")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAG")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAGE")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAGE ")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAGE Q")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAGE QU")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAGE QUI")
wait(0.5)
game.Players.LocalPlayer:Kick("                                RAGE QUIT")
wait(0.5)

                end
        end)
