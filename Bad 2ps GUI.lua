local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local GendersTab = Library:CreateTab("Bad 2ps Genders", "This is where you choose your gender!", true)

local MorphsTab = Library:CreateTab("Bad 2ps Morphs", "This is where you choose your morph!", true)

local ChatCommandsTab = Library:CreateTab("Bad 2ps Chat Commands", "This is where you type your commands!", true)

local TeleportTab = Library:CreateTab("Bad 2ps Instant TP", "Press to teleport in game!", true)

GendersTab:CreateDropDown("Genders", {"Gender F", "Gender M"}, function(t) --the (arg) is the option you choose 
    if t == "Gender F" then
        local args = {
    [1] = "Female"
}
game:GetService("ReplicatedStorage").Events.GenderSystem.SetGenderEvent:FireServer(unpack(args))
    elseif t == "Gender M" then
        local args = {
    [1] = "Male"
}
game:GetService("ReplicatedStorage").Events.GenderSystem.SetGenderEvent:FireServer(unpack(args))
    end
end)

MorphsTab:CreateDropDown("Morphs", {"Big Female Morph", "Small Female Morph", "Big Futa Morph", "Small Futa Morph", "Femboy Morph" ,"Male Morph"}, function(t)
    if t == "Big Female Morph" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Female",
    [3] = "01Female",
    [4] = "Female 02"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    elseif t == "Small Female Morph" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Female",
    [3] = "01Female",
    [4] = "Female 01"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    elseif t == "Big Futa Morph" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Female",
    [3] = "02Futa",
    [4] = "Futa 02"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    elseif t == "Small Futa Morph" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Female",
    [3] = "02Futa",
    [4] = "Futa 01"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    elseif t == "Femboy Morph" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Male",
    [3] = "02Femboy",
    [4] = "Femboy 01"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    elseif t == "Male Morph" then
        local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = "Male",
    [3] = "01Male",
    [4] = "Male 01"
}

game:GetService("ReplicatedStorage").Events.MorphSystem.MorphPlayerEvent:FireServer(unpack(args))
    end
end)

ChatCommandsTab:CreateTextBox("Type Here!", function(t) --arg is what the text is inside the textbox
    game.Players:Chat(t)
end)

TeleportTab:CreateButton("Teleport!", function()
    for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v:FindFirstChild("ProximityPrompt") then
fireproximityprompt(v.ProximityPrompt)
        end
    end
end)