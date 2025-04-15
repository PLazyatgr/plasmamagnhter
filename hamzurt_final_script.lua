-- Hamzurt GUI (Modifikasi dari sxrge_script_hub)

-- Services
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local Mouse = player:GetMouse()

-- UI Library (Kavo)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Ui-Library/main/KavoUI.lua"))()
local Window = Library.CreateLib("Hamzurt GUI", "DarkTheme")

-- Tab: Script Hub (S)
local scriptTab = Window:NewTab("Script Hub")
local scriptSection = scriptTab:NewSection("Daftar Game")

local gameScripts = {
    ["Blox Fruits"] = "https://raw.githubusercontent.com/REDzHUBHUB/BloxFruit/main/README.md",
    ["Pet Simulator X"] = "https://raw.githubusercontent.com/VeriHub/VeriHubScript/main/PetSimulatorX",
    ["Arsenal"] = "https://raw.githubusercontent.com/RobloxHacksYT/Arsenal-Hack-GUI/main/ArsenalGUI.lua",
    ["King Legacy"] = "https://raw.githubusercontent.com/VeriHub/VeriHubScript/main/KingLegacy",
    ["Anime Fighters"] = "https://raw.githubusercontent.com/KonichiwaHub/AnimeFighters/main/Main.lua",
    ["Shindo Life"] = "https://raw.githubusercontent.com/NexusScriptHub/Shindo-Life/main/Shindo.lua",
    ["Brookhaven"] = "https://raw.githubusercontent.com/kjay1211/RobloxScripts/main/Brookhaven/Script.lua",
    ["Da Hood"] = "https://raw.githubusercontent.com/ScriptRipperz/DaHood/main/gui",
    ["Slap Battles"] = "https://raw.githubusercontent.com/REDzHUBHUB/SlapBattle/main/README.md",
    ["Rainbow Friends"] = "https://raw.githubusercontent.com/RandomRobloxScript/RainbowFriends/main/script"
}

for gameName, scriptUrl in pairs(gameScripts) do
    scriptSection:NewButton(gameName, "Execute script untuk " .. gameName, function()
        loadstring(game:HttpGet(scriptUrl))()
    end)
end

-- Tab: Troll FE (T)
local trollTab = Window:NewTab("Troll FE")
local trollSection = trollTab:NewSection("Troll Scripts")

trollSection:NewButton("FE Fly", "Terbang bebas", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabledFly/FEFly/main/main.lua"))()
end)

trollSection:NewButton("Fling GUI", "Dorong pemain lain", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptHub/Fling/main/FlingGUI.lua"))()
end)

-- Notifikasi saat execute
game.StarterGui:SetCore("SendNotification", {
    Title = "Hamzurt Loaded",
    Text = "Script berhasil dijalankan!",
    Duration = 5
})

-- Logo H Toggle GUI
local toggleGui = Instance.new("ImageButton")
toggleGui.Name = "HamzurtToggle"
toggleGui.Size = UDim2.new(0, 50, 0, 50)
toggleGui.Position = UDim2.new(0, 10, 0, 200)
toggleGui.Image = "rbxassetid://17378388928" -- logo H neon
toggleGui.BackgroundTransparency = 1
toggleGui.Parent = game:GetService("CoreGui")

local toggled = true
toggleGui.MouseButton1Click:Connect(function()
    toggled = not toggled
    Library:ToggleUI()
end)
