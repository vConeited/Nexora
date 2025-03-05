local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local replicatedStorage = game:GetService("ReplicatedStorage")
local pathExists = replicatedStorage:FindFirstChild("Maps")

if not pathExists then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/vConeited/Nexora/refs/heads/main/SquidGameXLobbyDetect.lua?token=GHSAT0AAAAAAC74IE3ZC5GVEH7CB7DCSYKYZ6HZJKA"))()
else
 local Window = Fluent:CreateWindow({
        Title = "Nexora V1.0 | [🔫REBELLION] Squid Game X",
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
            setclipboard("https://discord.gg/uDHC6UDEKY")
        end
    })

    Tabs.Credits:AddButton({
        Title = "⭐ Copy Youtube channel link!",
        Description = "See the Youtube Channel to see the showcases!",
        Callback = function()
            setclipboard("Coming soon")
        end
    })

    local Section = Tabs.Games:AddSection("Lights out")

    Tabs.Games:AddButton({
        Title = "Lights Out",
        Description = "Make you teleport to a safe spot!",
        Callback = function()
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            local destination = Vector3.new(375, 56, 95)

            humanoidRootPart.CFrame = CFrame.new(destination)
        end
    })

    local Section = Tabs.Games:AddSection("Rebellion")

    Tabs.Games:AddButton({
        Title = "Rebellion",
        Description = "Make you teleport to the end of the rebellion!",
        Callback = function()
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            local destination = Vector3.new(430, 43, 181)

            humanoidRootPart.CFrame = CFrame.new(destination)
        end
    })

    Tabs.Games:AddParagraph({
        Title = "NOTE!",
        Content = "When you teleport to the end of Rebellion you need to interact with the door to actually win the game!"
    })

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
end
