 -- init
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatsMyMute/Kraken/main/ui.lua"))()
    local lib = library.new("Kraken")
    local noclip
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
    local Main = lib:addPage("Main", 5012544693)
    local MainSection = Main:addSection("Get Weapons")
    local Teams = Main:addSection("Teams")
    local Other = Main:addSection("Other")

    MainSection:addButton("Get M9", function()
        game.workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
    end)

    MainSection:addButton("Get Remington", function()
        workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
    end)

    MainSection:addButton("Get Crude Knife", function()
        game.workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single["Crude Knife"].ITEMPICKUP)
    end)

    MainSection:addButton("Get Hammer", function()
        game.workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
    end)

    MainSection:addButton("Get AK-47", function()
        game.workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
    end)

    Teams:addButton("Become Guard", function()
        game.workspace.Remote.TeamEvent:FireServer("Bright blue")
    end)

    Teams:addButton("Become Inmate", function()
        game.workspace.Remote.TeamEvent:FireServer("Bright orange")
    end)

    Teams:addButton("Become Neutral", function()
        Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
    end)

    Teams:addButton("Become Criminal", function()
        local location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(location)
    end)

    Other:addToggle("Open Debug Stats", nil, function(active)
        if active == true then
            game:GetService("Players").LocalPlayer.PlayerGui.TestGui.Frame.Visible = true
            else
            game:GetService("Players").LocalPlayer.PlayerGui.TestGui.Frame.Visible = false
        end
    end)


    Other:addToggle("Destroy Annoying UI", nil, function(active)
        if active == true then
            game:GetService("Players").LocalPlayer.PlayerGui.Home.hud.Visible = false
            else
            game:GetService("Players").LocalPlayer.PlayerGui.Home.hud.Visible = true
        end
    end)

    local Misc = lib:addPage("Misc", 5012544693)
    local MiscMain = Misc:addSection("Misc")

    MiscMain:addButton("Arrest All Criminals", function()
        local Player = game.Players.LocalPlayer
        local cpos = Player.Character.HumanoidRootPart.CFrame
        for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
            if v.Name ~= Player.Name then
                local i = 10
                repeat
                wait()
                i = i-1
                game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
                Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
            until i == 0
            end
        end
    Player.Character.HumanoidRootPart.CFrame = cpos
    end)

    MiscMain:addSlider("Walk Speed Adjuster", 16, 16, 200, function(value)
        game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)

    MiscMain:addSlider("Jump Power Adjuster", 50, 50, 300, function(value)
        game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = value
    end)

    MiscMain:addSlider("HipHeight Adjuster", 0.5, 0.5, 100, function(value)
        game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = value
    end)


    MiscMain:addToggle("Noclip", nil, function(NC)
        if NC == true then
            noclip = game:GetService("RunService").RenderStepped:connect(function()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end)
        else
            noclip:Disconnect()
        end
    end)

    MiscMain:addButton("Remove Clothing", function()
        game.Players.LocalPlayer.Character.Clothing:Destroy()
        wait(0.1)
        game.Players.LocalPlayer.Character.Clothing:Destroy()
    end)


    MiscMain:addTextbox("TP To Player", "Username", function(value)
        local plr1 = game.Players.LocalPlayer.Character
        local plr2 = game.Workspace:FindFirstChild(value)
        
        plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
    end)

    MiscMain:addButton("Destroy All Doors", function()
        game:GetService("Workspace").Doors:Destroy()
    end)

    MiscMain:addButton("Escape", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(497.262573, 198.039948, 2212.94336)
    end)

    MiscMain:addButton("Invisible", function()
        local player = game.Players.LocalPlayer
        position = player.Character.HumanoidRootPart.Position
        wait(0.1)
        player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
        wait(0.1)
        humanoidrootpart = player.Character.HumanoidRootPart:clone()
        wait(0.1)
        player.Character.HumanoidRootPart:Destroy()
        humanoidrootpart.Parent = player.Character
        player.Character:MoveTo(position)
        wait()

        game.Players.LocalPlayer.Character.Torso.Transparency = 1
        game.Players.LocalPlayer.Character.Head.Transparency  = 1
        game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
        game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
        game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
        game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
        game.Players.LocalPlayer.Character.Humanoid:RemoveAccessories()
        game.Players.LocalPlayer.Character.Head.face:Remove()
    end)

    MiscMain:addButton("Reset Character", function()
        game.Players.LocalPlayer.Character:BreakJoints()
    end)

    MiscMain:addButton("TP To Car", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").CarContainer.Sedan.Body.Seat.Position)
    end)

    local Teleport = lib:addPage("Teleport", 5012544693)
    local TeleportMain = Teleport:addSection("TeleportMain")

    TeleportMain:addButton("TP to Criminal Base", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end)

    TeleportMain:addButton("TP to CourtYard", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(798.999756, 95.1383057, 2540.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)

    TeleportMain:addButton('TP to Cafeteria', function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(875.049805, 96.9333496, 2271.5498, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end)

    TeleportMain:addButton('TP to Prison', function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(590.699524, 98.0399399, 2269.83911)
    end)

    TeleportMain:addButton('TP to Sewers', function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.092468, 78.6991119, 2437.32397)
    end)

    TeleportMain:addButton('TP to Prison Cells', function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.500366, 99.9899902, 2458.89307)
    end)

    TeleportMain:addButton('TP to Prison Roof', function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(820.341248, 118.990005, 2378.33838)
    end)

    TeleportMain:addButton('TP to Police Base', function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(835.926208, 99.9900055, 2267.71191)
    end)

    TeleportMain:addButton('TP to Gate Button', function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(504.488312, 102.039917, 2242.48389)
    end)

    TeleportMain:addButton('TP to Survailence', function()
        local CPart = game:GetService("Workspace").Prison_Guard_Outpost.furniture_cctv.cctv.Chair.Part

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CPart.Position)
    end)

    TeleportMain:addButton('TP to Neutral Spawn', function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879.38031, 27.7899876, 2349.28955)
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

    loadstring(game:HttpGet("https://demonslayer0002.xyz/Kraken/NIGGANUTS9000/ALLAHISMYDAD/ingame/esplib.lua.php"))()

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