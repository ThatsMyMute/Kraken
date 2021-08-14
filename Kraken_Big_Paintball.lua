    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatsMyMute/Kraken/main/ui.lua"))()
    local lib = library.new("Kraken")



    -- themes
    local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(255, 0, 0),
    Accent = Color3.fromRGB(255, 0, 0),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
    }

    -- first page
    local Main = lib:addPage("Weapon", 5012544693)
    local MainSection = Main:addSection("Weapon")

    local Movement = lib:addPage("Movement", 5012544693)
    local MovementS = Movement:addSection("Movement")



    MainSection:addSlider("Bullet Velocity", 0, 0, 9999, function(value)
        for i,v in pairs(game:GetService("ReplicatedStorage").Framework.Modules["1 | Directory"].Guns:GetChildren()) do
            pcall(function()
                require(v)[tostring(i)].velocity = value
            end)
        end
    end)

    MainSection:addButton("Increased Fire Rate", function()
        for i,v in pairs(game:GetService("ReplicatedStorage").Framework.Modules["1 | Directory"].Guns:GetChildren()) do
            pcall(function()
                require(v)[tostring(i)].firerate = -math.huge
            end)
        end
    end)

    MainSection:addToggle("Automatic Fire Rate", nil, function(value)
        for i,v in pairs(game:GetService("ReplicatedStorage").Framework.Modules["1 | Directory"].Guns:GetChildren()) do
            pcall(function()
                require(v)[tostring(i)].automatic = value
            end)
        end
    end)



    MovementS:addSlider("Additional Speed", 0, 0, 100, function(value)
        for i,v in pairs(game:GetService("ReplicatedStorage").Framework.Modules["1 | Directory"].Guns:GetChildren()) do
            pcall(function()
                require(v)[tostring(i)].additionalSpeed = value
            end)
        end
    end)

    local ESP = lib:addPage("ESP", 5012544693)
    local ESPS = ESP:addSection("ESP")

    shared.Visuals = { --// Configuration (Will load default settings if shared.Visuals doesn't exist.)
        Enabled = false,
        CrosshairEnabled = false,
        Boxes = false,
        Healthbar = false,
        Tracers = false,
        Info = false,
        ShowAllyTeam = false,
        UseTeamColor = true,
        AllyColor = Color3.fromRGB(0, 255, 0),
        EnemyColor = Color3.fromRGB(255, 0, 0),
        Crosshair = {
            Size = 5,
            Thickness = 1.5,
            Offset = 5
        }
    }

    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatsMyMute/Kraken/main/esp.lua"))()

    ESPS:addToggle("Enable ESP", nil, function(bool)
        shared.Visuals.Enabled = bool
    end)

    ESPS:addToggle("Boxes", nil, function(bool)
        shared.Visuals.Boxes = bool
    end)

    ESPS:addToggle("Healthbar", nil, function(bool)
        shared.Visuals.Healthbar = bool
    end)

    ESPS:addToggle("Tracers", nil, function(bool)
        shared.Visuals.Tracers = bool
    end)

    ESPS:addToggle("Info", nil, function(bool)
        shared.Visuals.Info = bool
    end)

    ESPS:addToggle("ShowAllyTeam", nil, function(bool)
        shared.Visuals.ShowAllyTeam = bool
    end)

    ESPS:addToggle("UseTeamColor", true, function(bool)
        shared.Visuals.UseTeamColor = bool
    end)




    -- second page
    local theme = lib:addPage("Settings", 5012544693)
    local colors = theme:addSection("Colors")
    local settings = theme:addSection("Settings")

    for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
    colors:addColorPicker(theme, color, function(color3)
    lib:setTheme(theme, color3)
    end)
    end

    settings:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
        lib:toggle()
        end, function()
    end)

    settings:addButton("Destroy UI", function()
        if game.CoreGui:FindFirstChild("Kraken") then
            game:GetService("CoreGui").Kraken:Destroy();
            game.Workspace.part0000000:Destroy();
            game.Workspace.part00000002:Destroy();
        end
    end)


    -- load
    lib:SelectPage(lib.pages[1], true)
end
