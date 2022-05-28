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
loadstring(game:HttpGet('https://raw.githubusercontent.com/eksotopro/holders/main/ragequit.lua.lua'))()
                end
        end)
