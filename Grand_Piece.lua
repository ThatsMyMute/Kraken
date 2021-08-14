repeat wait() until game:IsLoaded();
if game.Workspace:FindFirstChild("part0000000") and game.Workspace:FindFirstChild("part0000002") then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Kraken";
        Text = "Aleady Executed";
        Duration = 1;
    })
else
    yeet = Instance.new("Part")
    yeet.Parent = game.Workspace
    yeet.Name = "part0000000"

    yeet2 = Instance.new("Part")
    yeet2.Parent = game.Workspace
    yeet2.Name = "part0000002"

    assert(key, 'key not found');
    local http_request = assert(syn.request, 'couldnt find http request func');
    local hash; do
        local MOD = 2^32
        local MODM = MOD-1
        local bxor = bit32.bxor;
        local band = bit32.band;
        local bnot = bit32.bnot;
        local rshift1 = bit32.rshift;
        local rshift = bit32.rshift;
        local lshift = bit32.lshift;
        local rrotate = bit32.rrotate;

        local str_gsub = string.gsub;
        local str_fmt = string.format;
        local str_byte = string.byte;
        local str_char = string.char;
        local str_rep = string.rep;

        local k = {
            0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
            0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
            0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
            0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
            0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
            0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
            0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
            0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
            0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
            0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
            0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
            0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
            0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
            0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
            0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
            0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2,
        }
        local function str2hexa(s)
            return (str_gsub(s, ".", function(c) return str_fmt("%02x", str_byte(c)) end))
        end
        local function num2s(l, n)
            local s = ""
            for i = 1, n do
                local rem = l % 256
                s = str_char(rem) .. s
                l = (l - rem) / 256
            end
            return s
        end
        local function s232num(s, i)
            local n = 0
            for i = i, i + 3 do n = n*256 + str_byte(s, i) end
            return n
            end
            local function preproc(msg, len)
            local extra = 64 - ((len + 9) % 64)
            len = num2s(8 * len, 8)
            msg = msg .. "\128" .. str_rep("\0", extra) .. len
            assert(#msg % 64 == 0)
            return msg
        end
        local function initH256(H)
            H[1] = 0x6a09e667
            H[2] = 0xbb67ae85
            H[3] = 0x3c6ef372
            H[4] = 0xa54ff53a
            H[5] = 0x510e527f
            H[6] = 0x9b05688c
            H[7] = 0x1f83d9ab
            H[8] = 0x5be0cd19
            return H
        end
        local function digestblock(msg, i, H)
            local w = {}
            for j = 1, 16 do w[j] = s232num(msg, i + (j - 1)*4) end
            for j = 17, 64 do
                local v = w[j - 15]
                local s0 = bxor(rrotate(v, 7), rrotate(v, 18), rshift(v, 3))
                v = w[j - 2]
                w[j] = w[j - 16] + s0 + w[j - 7] + bxor(rrotate(v, 17), rrotate(v, 19), rshift(v, 10))
            end
            local a, b, c, d, e, f, g, h = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]
            for i = 1, 64 do
                local s0 = bxor(rrotate(a, 2), rrotate(a, 13), rrotate(a, 22))
                local maj = bxor(band(a, b), band(a, c), band(b, c))
                local t2 = s0 + maj
                local s1 = bxor(rrotate(e, 6), rrotate(e, 11), rrotate(e, 25))
                local ch = bxor(band(e, f), band(bnot(e), g))
                local t1 = h + s1 + ch + k[i] + w[i]
                h, g, f, e, d, c, b, a = g, f, e, d + t1, c, b, a, t1 + t2
            end
            H[1] = band(H[1] + a)
            H[2] = band(H[2] + b)
            H[3] = band(H[3] + c)
            H[4] = band(H[4] + d)
            H[5] = band(H[5] + e)
            H[6] = band(H[6] + f)
            H[7] = band(H[7] + g)
            H[8] = band(H[8] + h)
        end
        function hash(msg, t) 
            msg = preproc(msg, #msg)
            local H = initH256({})
            for i = 1, #msg, 64 do digestblock(msg, i, H) end
            return str2hexa(num2s(H[1], 4) .. num2s(H[2], 4) .. num2s(H[3], 4) .. num2s(H[4], 4) .. num2s(H[5], 4) .. num2s(H[6], 4) .. num2s(H[7], 4) .. num2s(H[8], 4))
        end
    end
    local used = isfile("Kraken_HasBeenUsed.json")

        if used then

            else
                local spooky = http_request({
                    Url = ('https://demonslayer0002.xyz/Kraken/stuff/FirstTimeExecute.php?key=' .. key);
                    Method = 'GET';
                });
                if spooky.StatusCode == 200 then end
                writefile('Kraken_HasBeenUsed.json', '{}')
        end

    local data = http_request({
        Url = ('https://demonslayer0002.xyz/Kraken/svr.php?key=' .. key);
        Method = 'GET';
    });


    local whitelisted_flag = false;

    if data.StatusCode == 200 then
        local response = data.Body;
        if response == hash(key) then
            -- // wow, they are authenticated!
            whitelisted_flag  = true;
        else
            local failed = http_request({
                Url = ('https://demonslayer0002.xyz/Kraken/stuff/Failed.php?key=' .. key);
                Method = 'GET';
            });
            if failed.StatusCode == 200 then end
            game:Shutdown()
            wait(0.4)
            while true do end;
        end;
    else
        local failed = http_request({
            Url = ('https://demonslayer0002.xyz/Kraken/stuff/Failed.php?key=' .. key);
            Method = 'GET';
        });
        if failed.StatusCode == 200 then end
        game:Shutdown()
        wait(0.4)
        while true do end;
    end;
    if not whitelisted_flag then
        return (function()
            local failed = http_request({
                Url = ('https://demonslayer0002.xyz/Kraken/stuff/Failed.php?key=' .. key);
                Method = 'GET';
            });
            if failed.StatusCode == 200 then end
            game:Shutdown()
            wait(0.4)
            while true do end;
        end)();
    end;



    -- init
    local library = loadstring(game:HttpGet("https://demonslayer0002.xyz/Kraken/other/nothing.lua.php"))()
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

    function WSBypass()
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldindex = gmt.__index

        gmt.__index =
            newcclosure(
            function(self, b)
                if b == "WalkSpeed" then
                    return 16
                end
                return oldindex(self, b)
            end
        )
    end

    function JPBypass()
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldindex = gmt.__index

        gmt.__index =
            newcclosure(
            function(self, b)
                if b == "JumpPower" then
                    return 50
                end
                return oldindex(self, b)
            end
        )
    end

    function Antikick()
        local mt = getrawmetatable(game)
        local old = mt.namecall

        setreadonly(mt, false)
        mt.namecall = function(self, ...)
            local method = getnamecallmethod()
            if method == "Kick" then
                return
            end
            return old(self, ...)
        end
    end

    WSBypass()
    JPBypass()
    Antikick()

    -- first page
    local Main = lib:addPage("Main", 5012544693)
    local MainSection = Main:addSection("Main")

    local ESP = lib:addPage("ESP", 5012544693)
    local ESPSection = ESP:addSection("ESP")

    local Misc = lib:addPage("Misc", 5012544693)
    local MiscSection = Misc:addSection("Misc")


    MainSection:addToggle("Freeze Water", nil, function(water)
        if water == true then
            local water = game.Workspace.Effects.Water
            local watercopy = water:Clone()
            watercopy.Name = "watercopy"
            watercopy.CanCollide = true
            watercopy.Parent = game.Workspace.Effects
        else 
            if game.Workspace.Effects:FindFirstChild("watercopy") then
                game.Workspace.Effects:FindFirstChild("watercopy"):Destroy()
            end
        end
    end)

    MainSection:addToggle("Noclip", nil, function(NC)
        if NC == true then
            noclip = game:GetService("RunService").RenderStepped:connect(function()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end)
        else
            noclip:Disconnect()
        end
    end)

    MainSection:addButton("No Drowning", function()
        local metatable = getrawmetatable(game)
        local namecall = metatable.__namecall 
        setreadonly(metatable,false)
        
        metatable.__namecall = newcclosure(function(self,...)
            local method = getnamecallmethod()
                if method == "FireServer" and self.Name == "swim" then 
                    return nil
                end 
            return namecall(self,...)
        end)
    end)


    MainSection:addButton("Anti Knock", function()
        local metatable = getrawmetatable(game)
        local namecall = metatable.__namecall
        setreadonly(metatable, false)

        metatable.__namecall =
            newcclosure(
            function(self, ...)
                if self.Name == "KnockedOut" then
                    return nil
                end
                return namecall(self, ...)
            end
        )
    end)


    MainSection:addButton("Check Attempts", function()
        local local_player_name = game:GetService("Players").LocalPlayer.Name
        local attempts_check = game:GetService("ReplicatedStorage")["Stats" .. local_player_name].Stats.Attempts.Value
            lib:Notify("Attempts:", "Attempts: " .. attempts_check)
    end)

    if game:GetService("CoreGui").Kraken.Main.Main.Main.Container:FindFirstChild("Button") then
        game:GetService("CoreGui").Kraken.Main.Main.Main.Container.Button.Name = "Button1"
        game:GetService("CoreGui").Kraken.Main.Main.Main.Container.Button.Name = "Button2"
        game:GetService("CoreGui").Kraken.Main.Main.Main.Container.Button.Name = "Button3"
        game:GetService("CoreGui").Kraken.Main.Main.Main.Container.Button3.ImageColor3 = Color3.new(0.5, 0, 0)
    end


    MainSection:addButton("Infinite Roll", function()
        local metatable = getrawmetatable(game)
        local namecall = metatable.__namecall
        setreadonly(metatable, false)

        metatable.__namecall =
            newcclosure(
            function(self, ...)
                if self.Name == "takestam" then
                    return 0
                end
                return namecall(self, ...)
            end
        )
    end)

    MainSection:addButton("No Fall Damage", function()
        local game_metatable = getrawmetatable(game) -- the universal metatable used by all Instance userdata
        local namecall_original = game_metatable.__namecall -- the original __namecall method that we will be using inside our hook
        local remote_event = Instance.new("RemoteEvent") -- a guinea-pig remote we will be using for its access to the FireServer method
        local fireserver_original = game.ReplicatedStorage.Events.FallDmg
        setreadonly(game_metatable, false) -- allows us to modify the game's metatable
        game_metatable.__namecall =
            newcclosure(
            function(self, ...) -- the actual metatable hook
                local method = self.Name -- gets the method name (as a string)
                local script = getcallingscript() -- gets the script that fired the method (as an instance)
                return namecall_original(self, ...) -- calls and returns the original namecall so roblox doesn't commit self die
            end
        )
        fireserver_original =
            hookfunction(
            remote_event.FireServer,
            newcclosure(
                function(self, method, ...) -- hooks the FireServer method (to cover our asses when people do RemoteEvent.FireServer(RemoteEvent))
                    -- no need for a `getnamecallmethod()` as it is passed along as an argument above (still a string)
                    local script = getcallingscript() -- same as the namecall hook
                    return fireserver_original(self, ...) -- calls and returns the original method so roblox doesn't commit self die
                end
            )
        )
    end)

    MainSection:addSlider("Walk Speed Adjuster", 16, 16, 200, function(value)
        game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)

    MainSection:addSlider("Jump Power Adjuster", 50, 10, 400, function(value)
        game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = value
    end)


    _G.chestexecute = true
    ESPSection:addToggle("Chest ESP", nil, function(ChestEsp)
        if ChestEsp == true then
            _G.cheststuff = true
            if _G.chestexecute == false then
            elseif _G.chestexecute == true then
                _G.chestexecute = false
                while wait(2) do 
                    for i,v in pairs(game.Workspace.Env:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.Name == "Chest" then
                            if v.Parent:FindFirstChild("BillboardGui") then
                                if _G.cheststuff == true then
                                    v.Parent:FindFirstChild("BillboardGui").Enabled = true
                                elseif _G.cheststuff == false then
                                    v.Parent:FindFirstChild("BillboardGui").Enabled = false
                                end
                            else
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")
                            
                            BillboardGui.Parent = v.Parent
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1
                            BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
                            
                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                            TextLabel.BackgroundTransparency = 1
                            TextLabel.Size = UDim2.new(1, 0, 1, 0)
                            TextLabel.Text = v.Parent.Name
                            TextLabel.TextColor3 = Color3.new(1, 0, 0)
                            TextLabel.TextScaled = true
                            end
                        end
                    end
                end
            end
    
        else
            _G.cheststuff = false
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v.ClassName == "BillboardGui" and v.Parent.Name == "Chest" then
                    v.Enabled = false
                end
            end
        end    
    end)

    _G.ITEMSexecute = true
    ESPSection:addToggle("Buyable Item ESP", nil, function(ChestEsp)
        if ChestEsp == true then
            _G.ITEMSstuff = true
            if _G.ITEMSexecute == false then
            elseif _G.ITEMSexecute == true then
                _G.ITEMSexecute = false
                while wait(2) do 
                    for i,v in pairs(game.Workspace.BuyableItems:GetDescendants()) do
                        if v.Name == "ShopPart" then
                            if v.Parent:FindFirstChild("BillboardGui") then
                                if _G.ITEMSstuff == true then
                                    v.Parent:FindFirstChild("BillboardGui").Enabled = true
                                elseif _G.ITEMSstuff == false then
                                    v.Parent:FindFirstChild("BillboardGui").Enabled = false
                                end
                            else
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")
                            
                            BillboardGui.Parent = v.Parent
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1
                            BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
                            
                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                            TextLabel.BackgroundTransparency = 1
                            TextLabel.Size = UDim2.new(1, 0, 1, 0)
                            TextLabel.Text = v.Parent.Name
                            TextLabel.TextColor3 = Color3.new(0, 1, 0)
                            TextLabel.TextScaled = true
                            end
                        end
                    end
                end
            end
    
        else
            _G.ITEMSstuff = false
            for i,v in pairs(game.Workspace.BuyableItems:GetDescendants()) do
                if v.Name == "ShopPart" then
                    v.Enabled = false
                end
            end
        end    
    end)

    MiscSection:addButton("No Ship Crash Damage", function()
        local game_metatable = getrawmetatable(game) -- the universal metatable used by all Instance userdata
        local namecall_original = game_metatable.__namecall -- the original __namecall method that we will be using inside our hook
        local remote_event = Instance.new("RemoteEvent") -- a guinea-pig remote we will be using for its access to the FireServer method
        local fireserver_original = game.ReplicatedStorage.Events.ShipEvents.Rough
        setreadonly(game_metatable, false) -- allows us to modify the game's metatable
        game_metatable.__namecall =
            newcclosure(
            function(self, ...) -- the actual metatable hook
                local method = self.Name -- gets the method name (as a string)
                local script = getcallingscript() -- gets the script that fired the method (as an instance)
                return namecall_original(self, ...) -- calls and returns the original namecall so roblox doesn't commit self die
            end
        )
        fireserver_original =
            hookfunction(
            remote_event.FireServer,
            newcclosure(
                function(self, method, ...) -- hooks the FireServer method (to cover our asses when people do RemoteEvent.FireServer(RemoteEvent))
                    -- no need for a `getnamecallmethod()` as it is passed along as an argument above (still a string)
                    local script = getcallingscript() -- same as the namecall hook
                    return fireserver_original(self, ...) -- calls and returns the original method so roblox doesn't commit self die
                end
            )
        )
    end)

    MiscSection:addButton("FullBright", function()
        if game.Lighting:FindFirstChild("DepthOfFieldF") then
            game.Lighting:FindFirstChild("DepthOfFieldF"):Destroy()
        end
        if game.Lighting:FindFirstChild("Blur") then
            game.Lighting:FindFirstChild("Blur"):Destroy()
        end
        if game.Lighting:FindFirstChild("BlurF") then
            game.Lighting:FindFirstChild("BlurF"):Destroy()
        end
        if game.Lighting:FindFirstChild("Bloom") then
            game.Lighting:FindFirstChild("Bloom"):Destroy()
        end
        if game.Lighting:FindFirstChild("Atmosphere") then
            game.Lighting:FindFirstChild("Atmosphere"):Destroy()
        end
        while wait() do
        game.Lighting.FogEnd = 9999999999999
        end
    end)

    MiscSection:addToggle("Show Hitbox", nil, function(Hitbox)
        if Hitbox == true then
            settings():GetService("RenderSettings").ShowBoundingBoxes = true
        else
            settings():GetService("RenderSettings").ShowBoundingBoxes = false
        end
    end)


    MiscSection:addToggle("First Person", nil, function(FirstPerson)
        if FirstPerson == true then
            game.Players.LocalPlayer.CameraMaxZoomDistance = 0.5
            game.Players.LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, -1)
            if game.Players.LocalPlayer.Character:FindFirstChild("Hair1") then
                game.Players.LocalPlayer.Character:FindFirstChild("Hair1").Transparency = 1;
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Hair2") then
                game.Players.LocalPlayer.Character:FindFirstChild("Hair2").Transparency = 1;
            end
            for childIndex, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if child:IsA("BasePart") and child.Name ~= "Head" then
                    child:GetPropertyChangedSignal("LocalTransparencyModifier"):Connect(
                        function()
                            child.LocalTransparencyModifier = child.Transparency
                        end)
                end
            end
        else
            game.Players.LocalPlayer.CameraMaxZoomDistance = 128
            game.Players.LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, 0)
            if game.Players.LocalPlayer.Character:FindFirstChild("Hair1") then
                game.Players.LocalPlayer.Character:FindFirstChild("Hair1").Transparency = 0;
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Hair2") then
                game.Players.LocalPlayer.Character:FindFirstChild("Hair2").Transparency = 0;
            end
        end
    end)



    MiscSection:addKeybind("Hard Reset", Enum.KeyCode.Delete, function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0;
    end)


    local ESPS = ESP:addSection("Player ESP")

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