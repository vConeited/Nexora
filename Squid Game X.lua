local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Nexora V1.0 | Squid Game X",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Credits = Window:AddTab({ Title = "Credits", Icon = "link" }),
    Games = Window:AddTab({ Title = "Games", Icon = "gamepad-2" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do

    Tabs.Credits:AddParagraph({
        Title = "Welcome!",
        Content = "This script was created by vVvConceited!"
    })

    local Section = Tabs.Credits:AddSection("-----------------------------------------------------")
    
    Tabs.Credits:AddButton({
    Title = "🔗 Copy Discord server link!",
    Description = "Enter the discord for other updates!",
    Callback = function()
        print("Discord")
    end
})

copyLinkToClipboard(myLink)

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")


Window:SelectTab(1)

Fluent:Notify({
    Title = "Nexora",
    Content = "The script has been loaded successfully.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
end
