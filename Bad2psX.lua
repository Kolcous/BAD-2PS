local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kolcous/BAD-2ps-GUI/main/ui5.lua", true))()

local PlayerTab = Library:CreateTab("Player", "This is where you choose your Player functions!", true)

local BotTab = Library:CreateTab("Bot", "This is where you customize your bot!", true)

local CommandsTab = Library:CreateTab("Commands", "This is where you choose your command!", true)

PlayerTab:CreateDropDown("Genders", {"Female", "Male"}, function(t)
    if t == "Female" then
        local args = {
    [1] = "Female"
}
game:GetService("ReplicatedStorage").Events.GenderSystem.SetGenderEvent:FireServer(unpack(args))
    elseif t == "Male" then
        local args = {
    [1] = "Male"
}
game:GetService("ReplicatedStorage").Events.GenderSystem.SetGenderEvent:FireServer(unpack(args))
    end
end)

PlayerTab:CreateDropDown("Morphs", {"Big female", "Small female", "Big futa", "Small futa", "Femboy" ,"Male"}, function(t)
    if t == "Big female" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Female",
    [3] = "01Female",
    [4] = "Female 02"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    elseif t == "Small female" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Female",
    [3] = "01Female",
    [4] = "Female 01"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    elseif t == "Big futa" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Female",
    [3] = "02Futa",
    [4] = "Futa 02"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    elseif t == "Small futa" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Female",
    [3] = "02Futa",
    [4] = "Futa 01"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    elseif t == "Femboy" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Male",
    [3] = "02Femboy",
    [4] = "Femboy 01"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    elseif t == "Male" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Male",
    [3] = "01Male",
    [4] = "Male 01"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    end
end)

PlayerTab:CreateTextBox("Type player char here!", function(t)
    game.Players:Chat("/char ".. t)
end)

BotTab:CreateToggle("Enable Bot", function(t)
    if t then
        game.Players:Chat("/bot spawn")
    else
        game.Players:Chat("/bot delete")
    end
end)

BotTab:CreateDropDown("Commands", {"Bot Gender", "Bot Morphs"}, function(t)
    if t == "Bot Gender" then
        game.Players:Chat("/bot gender")
    elseif t == "Bot Morphs" then
        game.Players:Chat("/bot morphs")
    end
end)

--[[ BotTab:CreateDropDown("Gender", {}, function(t)
    if t == "" then
        
    elseif t == "" then
        
    end
end)

BotTab:CreateDropDown("Morph", {}, function(t)
    if t == "" then
        
    elseif t == "" then
        
    end
end) ]]--

BotTab:CreateTextBox("Type bot char here!", function(t)
    game.Players:Chat("/bot char ".. t)
end)

CommandsTab:CreateToggle("First person", function(t)
    if t then
        game.Players:Chat("/fp")
    else
        game.Players:Chat("/fp")
    end
end)

CommandsTab:CreateButton("Accessories", function()
    game.Players:Chat("/accessories")
end)

CommandsTab:CreateButton("Server create", function()
    game.Players:Chat("/server create")
end)

CommandsTab:CreateButton("Server start", function()
    game.Players:Chat("/server start")
end)
