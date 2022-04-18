local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    "ur bad";
    "rat";
    "ez";
    "my grandma has more skill than you";
    "trash";
    "LOL";
    "imagine being you right now";
    "xd";
    "stinky head";
    "you lose";
    "hoodsense.cc = win";
    "why do you even try";
    "I didn't think being this bad was possible";
    "leave";
    "no skill";
    "ahahahahahahaha";
    "bad";
    "you're nothing";
    "hoodsense.cc on top kid";
    "so trash";
    "so bad";
    "ur salty";
    "salty";
    "look he's mad";
    "cry more";
    "get good, get hoodsense.cc";
    "keep crying";
    "cry baby";
    "hahaha I won";
    "no one likes u";
    "darn";
    "thank you for your time";
    "you were so close!";
    "get good, get hoodsense.cc";
    "better luck next time!";
    "rodent";
    "get good, get hoodsense.cc";
    "XD";
    "/e dab";
    "free wanted LOL";
    ".gg/hoodsense";
    "time to take out the trash";
    "hoodsense winning, L";
    "did you get worse?";
    "I'm surprised you haven't quit yet";
    "Man your aim is nothing.";
    "Bros playing without hoodsense.cc"










}


function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.J and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
 
game:GetService("UserInputService").InputBegan:connect(TrashTalk)
