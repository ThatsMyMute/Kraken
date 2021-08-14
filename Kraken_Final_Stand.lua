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



    repeat wait() until game:IsLoaded()
    local Name = "KrakenConfig.json"

    local DefaultSettings = {
    TeleSpeed = "Q",
    TP_Behind = "V",
    Hard_Reset = "Delete",
    Click_TP = "Insert",
    Toggle_UI = "RightControl"
    }

    local Settings

    if not pcall(function() readfile(Name) end) then writefile(Name, game:service'HttpService':JSONEncode(DefaultSettings)) end

    Settings = game:service'HttpService':JSONDecode(readfile(Name))

    local function Save()
    writefile(Name,game:service'HttpService':JSONEncode(Settings))
    end


    -- init
    local library = loadstring(game:HttpGet("https://demonslayer0002.xyz/Kraken/other/nothing.lua.php"))()
    local lib = library.new("Kraken")
    local Slow
    local EGod
    local FB
    local Auto_Moves = false
    local Auto_Attack = false
    local AutoFarm = false
    local Dusty
    local pautomove
    local Plr = game:GetService("Players").LocalPlayer
    local Char = Plr.Character 
    local Live = game:GetService("Workspace").Live
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
    local MainSection = Main:addSection("Main")


    MainSection:addToggle("Noslow", nil, function(noslow)
        if noslow == true then
            Slow = game:GetService("RunService").Stepped:Connect(function()
                    if game.Players.LocalPlayer.Character:FindFirstChild("Action") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Action"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Attacking") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Attacking"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Using") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Using"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("hyper") then
                        game.Players.LocalPlayer.Character:FindFirstChild("hyper"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Hyper") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Hyper"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("heavy") then
                        game.Players.LocalPlayer.Character:FindFirstChild("heavy"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("KiBlasted") then
                        game.Players.LocalPlayer.Character:FindFirstChild("KiBlasted"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Tele") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Tele"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("tele") then
                        game.Players.LocalPlayer.Character:FindFirstChild("tele"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Killed") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Killed"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Slow") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Slow"):Destroy()
                    end
                end
            )
        else
            Slow:Disconnect()
        end
    end)

    MainSection:addSlider("Tele-Speed", 0, 0, 1000, function(telespeed)
        down = false
            velocity = Instance.new("BodyVelocity")
            velocity.maxForce = Vector3.new(10000000, 0, 10000000)
        
            local speed = telespeed
            gyro = Instance.new("BodyGyro")
            gyro.maxTorque = Vector3.new(10000000, 0, 10000000)
        
            local hum = game.Players.LocalPlayer.Character.Humanoid
        
            function onButton1Down(mouse)
                down = true
                velocity.Parent = game.Players.LocalPlayer.Character.UpperTorso
                velocity.velocity = (hum.MoveDirection) * speed
                gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
                while down do
                    if not down then
                        break
                    end
                    velocity.velocity = (hum.MoveDirection) * speed
                    local refpos =
                        gyro.Parent.Position +
                        (gyro.Parent.Position - workspace.CurrentCamera.CoordinateFrame.p).unit * 5
                    gyro.cframe =
                        CFrame.new(gyro.Parent.Position, Vector3.new(refpos.x, gyro.Parent.Position.y, refpos.z))
                    wait(0.1)
                end
            end
        
            function onButton1Up(mouse)
                velocity.Parent = nil
                gyro.Parent = nil
                down = false
            end
        
            function onSelected(mouse)
                mouse.KeyDown:connect(
                    function(k)
                        if k:upper() == Settings.TeleSpeed then
                            onButton1Down(mouse)
                        end
                    end
                )
                mouse.KeyUp:connect(
                    function(k)
                        if k:upper() == Settings.TeleSpeed then
                            onButton1Up(mouse)
                        end
                    end
                )
            end
        
            onSelected(game.Players.LocalPlayer:GetMouse())
    end)

    MainSection:addToggle("Earth Godmode", nil, function(Earth_Godmode)
        if Earth_Godmode == true then
            local God = game.Workspace.Touchy.Part
            local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
            EGod = game:GetService("RunService").RenderStepped:Connect(function()
                    firetouchinterest(Root, God, 0)
                    firetouchinterest(Root, God, 1)
                    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Popup") then
                        game.Players.LocalPlayer.PlayerGui.Popup:Destroy()
                    end
                end)
        else
            EGod:Disconnect()
            if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Popup") then
                game.Players.LocalPlayer.PlayerGui.Popup:Destroy()
            end
        end
    end)

    MainSection:addToggle("Stay In Form", nil, function(StayinForm)
        if StayinForm == true then
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("SaiyanAuraWeak") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.SaiyanAuraWeak:Destroy()
            end

            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("MajinParticle") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.MajinParticle:Destroy()
            end

            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Lightning2") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Lightning2:Destroy()
            end

            if game.Players.LocalPlayer.Character:FindFirstChild("SaiyanHair") then
                game.Players.LocalPlayer.Character.SaiyanHair:Destroy()
            end

            if game.Players.LocalPlayer.Character.Head:FindFirstChild("Tatoo") then
                game.Players.LocalPlayer.Character.Head.Tatoo:Destroy()
            end

            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("MajinAura") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.MajinAura:Destroy()
            end

        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)

    behindtp = MainSection:addKeybind("TP Behind", Enum.KeyCode[Settings.TP_Behind], function()
        local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Vanish
            local player = game.Players.LocalPlayer
            function FindNearest(position)
                local lowest = math.huge
                local NearestPlayer = nil
                for i, v in pairs(game.Players:GetPlayers()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        if v and v.Character then
                            local distance = v:DistanceFromCharacter(position)
                            if distance < lowest then
                                lowest = distance
                                NearestPlayer = v
                            end
                        end
                    end
                end
                return NearestPlayer
            end
            Event:FireServer()
            target = FindNearest(game.Players.LocalPlayer.Character:WaitForChild("Head").Position)
            local man = game.Players.LocalPlayer.Character
            local enemy = game.Players[target.Name].Character
            man.PrimaryPart.CFrame = enemy.PrimaryPart.CFrame * CFrame.new(Vector3.new(0, 0, 3))
            game:GetService("Workspace").Camera.CFrame = enemy.PrimaryPart.CFrame
        end, function()
        end)

    -- second page
    local Misc = lib:addPage("Misc", 5012544693)
    local MiscMainSection = Misc:addSection("Main")
    local MiscOtherSection = Misc:addSection("Other")
    local MiscDragonSection = Misc:addSection("Dragon Crush")

    MiscMainSection:addSlider("FOV", 70, 1, 120, function(FOV)
        game.Workspace.Camera.FieldOfView = FOV
    end)

    MiscMainSection:addToggle("FullBright", nil, function(FullBright)
        if FullBright == true then
            FB = game:GetService("RunService").RenderStepped:Connect(function()
                    game.Lighting.FogEnd = (99999999)
                end)
        else
            FB:Disconnect()
            game.Lighting.FogEnd = (2000)
        end
    end)

    MiscMainSection:addToggle("FirstPerson", nil, function(FirstPerson)
        if FirstPerson == true then
            game.Players.LocalPlayer.CameraMaxZoomDistance = 0.5
            game.Players.LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, -1)

            for childIndex, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if child:IsA("BasePart") and child.Name ~= "Head" then
                    child:GetPropertyChangedSignal("LocalTransparencyModifier"):Connect(
                        function()
                            child.LocalTransparencyModifier = child.Transparency
                        end)
                end
            end
        else
            game.Players.LocalPlayer.CameraMaxZoomDistance = 20
            game.Players.LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(2, 2, 0)
        end
    end)

    MiscMainSection:addToggle("Invisibility", nil, function(Invisibility)
        if Invisibility == true then
            local Player = game.Players.LocalPlayer
            local function CheckRig()
                if Player.Character then
                    local Humanoid = Player.Character:WaitForChild("Humanoid")
                    if Humanoid.RigType == Enum.HumanoidRigType.R15 then
                        return "R15"
                    else
                        return "R6"
                    end
                end
            end

            local AirTP = true
            local Character = Player.Character
            local StoredCF = Character.PrimaryPart.CFrame
            if AirTP then
                local Part = Instance.new("Part", workspace)
                Part.Size = Vector3.new(5, 0, 5)
                Part.Anchored = true
                Part.CFrame = CFrame.new(Vector3.new(9999, 9999, 9999))
                Character.PrimaryPart.CFrame = Part.CFrame * CFrame.new(0, 3, 0)
                spawn(
                    function()
                        wait(3)
                        Part:Destroy()
                    end)
            end
            if CheckRig() == "R6" then
                local Clone = Character.HumanoidRootPart:Clone()
                Character.HumanoidRootPart:Destroy()
                Clone.Parent = Character
            else
                local Clone = Character.LowerTorso.Root:Clone()
                Character.LowerTorso.Root:Destroy()
                Clone.Parent = Character.LowerTorso
            end
            if AirTP then
                wait(1)
                Character.PrimaryPart.CFrame = StoredCF
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)

    MiscMainSection:addToggle("Show Hitbox", nil, function(Hitbox)
        if Hitbox == true then
            settings():GetService("RenderSettings").ShowBoundingBoxes = true
        else
            settings():GetService("RenderSettings").ShowBoundingBoxes = false
        end
    end)

    hardreset = MiscMainSection:addKeybind("Hard Reset", Enum.KeyCode[Settings.Hard_Reset], function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0;
    end)


    MiscMainSection:addToggle("Bean Spam", nil, function(BeanSpam)
        if BeanSpam == true then
            Spam = true
            while Spam do
                wait()
                local Event = game.Players.LocalPlayer.Backpack.ServerTraits.EatSenzu
                Event:FireServer(true)
            end
        else
            Spam = false
        end
    end)

    MiscMainSection:addDropdown("Slot Changer", {"Slot1","Slot2","Slot3"}, function(value)
            local A_1 = game:GetService("Workspace").FriendlyNPCs["Character Slot Changer"]
            local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
            Event:FireServer(A_1)
            wait(0.3)
            local A_1 = 
            {
                [1] = "Yes"
            }
            local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
            Event:FireServer(A_1)
            wait(0.3)
            local A_1 = 
            {
                [1] = "k"
            }
            local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
            Event:FireServer(A_1)
            wait(0.3)
            local A_1 = 
            {
                [1] = value
            }
            local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
            Event:FireServer(A_1)
            wait(0.3)
            local A_1 = 
            {
                [1] = "k"
            }
            local Event = nil
            Event:FireServer(A_1)
    end);

    MiscMainSection:addButton("No Flying Ki-Drain", function()
        local metatable = getrawmetatable(game)
        local namecall = metatable.__namecall 
        setreadonly(metatable,false)
        
        metatable.__namecall = newcclosure(function(self,...)
            local method = getnamecallmethod()
                if method == "FireServer" and self.Name == "Super" then 
                    return nil
                end 
            return namecall(self,...)
        end)
    end)

    MiscMainSection:addButton("Wing/Halo Remover", function()
        if game.Players.LocalPlayer.Character:FindFirstChild("RebirthWings") then
            game.Players.LocalPlayer.Character.RebirthWings:Destroy()
        elseif game.Players.LocalPlayer.Character:FindFirstChild("RealHalo") then
            game.Players.LocalPlayer.Character.RealHalo:Destroy()
        end
    end)

    MiscMainSection:addButton("Level Remover", function()
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        for i, model in pairs(character:GetChildren()) do
            if string.match(model.Name, "Lvl") then
                model:Destroy()
                break
            end
        end
    end)

    MiscOtherSection:addToggle("Top Respawn", nil, function(TopRespawn)
        if TopRespawn == true then
            respawn = true
            while respawn do
                wait(0.05)
                if game.Players.LocalPlayer.Character:FindFirstChild("SuperAction") then
                    game.Players.LocalPlayer.Character:FindFirstChild("SuperAction"):Destroy()
                end
            end
        else
            respawn = false
        end
    end)

    MiscOtherSection:addButton("Fusion Stack", function()
        if game.Players.LocalPlayer.Character.FindFirstChild("FUSED") then
            game.Players.LocalPlayer.Character["FUSED"]:Destroy()
        end
    end)

    MiscDragonSection:addToggle("Dragon Crush Yeet", nil, function(DCYeet)
        if DCYeet == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")
            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Crush")
                    if tool then
                        humanoid:EquipTool(tool)
                    end
                end
            end
            wait()
            if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Crush") then
                game.Players.LocalPlayer.Character["Dragon Crush"].Activator.HitDown:Destroy()
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)

    MiscDragonSection:addToggle("Dragon Crush Stuck", nil, function(DCStuck)
        if DCStuck == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")
            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Crush")
                    if tool then
                        humanoid:EquipTool(tool)
                    end
                end
            end
            wait()
            if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Crush") then
                game.Players.LocalPlayer.Character["Dragon Crush"].Activator.Flip:Destroy()
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Crush") then
                game.Players.LocalPlayer.Character["Dragon Crush"].Activator.Blocked:Destroy()
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)

    -- third page




    for i,v in pairs(game:GetService("Workspace").Live:GetChildren()) do
        if v.Name == "Big Snake" then
            v:Destroy()
        end
    end

    local Auto = lib:addPage("AutoFarm", 5012544693)
    local AutoFarm = Auto:addSection("AutoFarm")
    local Settingsa = Auto:addSection("Settings")
    local Move = Auto:addSection("Moves")

    AutoFarm:addButton("Recommended Farm", function()
        game:GetService("CoreGui").Kraken.Main.AutoFarm.AutoFarm.Container.NPC1.Button.Textbox.Text = "Saiba";
        game:GetService("CoreGui").Kraken.Main.AutoFarm.AutoFarm.Container.NPC2.Button.Textbox.Text = "Saiyan";
        game:GetService("CoreGui").Kraken.Main.AutoFarm.AutoFarm.Container.NPC3.Button.Textbox.Text = "Chi";
        game:GetService("CoreGui").Kraken.Main.AutoFarm.AutoFarm.Container.NPC4.Button.Textbox.Text = "Boxer";
    end)

    AutoFarm:addTextbox("NPC1", "Saiba", function(value)
    end)

    AutoFarm:addTextbox("NPC2", "Saiyan", function(value)
    end)    

    AutoFarm:addTextbox("NPC3", "Chi", function(value)
    end)    

    AutoFarm:addTextbox("NPC4", "Boxer", function(value)
    end)    

    game.CoreGui.Kraken.Main.AutoFarm.AutoFarm.Container.Textbox.Name = "NPC1"
    game.CoreGui.Kraken.Main.AutoFarm.AutoFarm.Container.Textbox.Name = "NPC2"
    game.CoreGui.Kraken.Main.AutoFarm.AutoFarm.Container.Textbox.Name = "NPC3"
    game.CoreGui.Kraken.Main.AutoFarm.AutoFarm.Container.Textbox.Name = "NPC4"


    Settingsa:addToggle("Auto Attack", nil, function(AutoAttack)
        if AutoAttack then
            Auto_Attack = true
                while Auto_Attack == true do
                    wait(.3)
                    if Auto_Attack == true and Target then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Target.HumanoidRootPart.Position).magnitude < 13 and game.PlaceId == 536102540 then
                            game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({[1] = "mx"},CFrame.new(0,0,0),nil,false)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Target.HumanoidRootPart.Position).magnitude < 13 and game.PlaceId ~= 536102540 then
                            game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({[1] = "md"},CFrame.new(0,0,0),nil,false)
                        end
                    end
                end
        else
            Auto_Attack = false
        end
    end)

    Settingsa:addToggle("Reset Stamina", nil, function(bool)
        if bool == true then
            _G.RESETSTAM = true
            repeat wait()
                if game:GetService("Players").LocalPlayer.Character.Ki.Value <= 100 and Target then
                    local Event = game:GetService("ReplicatedStorage").ResetChar
                    Event:FireServer()
                end
            until _G.RESETSTAM == false
        else
            _G.RESETSTAM = false
        end    
    end)



    Settingsa:addToggle("Start Auto Farm", nil, function(NPCFARM)
        if NPCFARM then
            AutoFarm = true
            local NPCS = {game:GetService("CoreGui").Kraken.Main.AutoFarm.AutoFarm.Container.NPC1.Button.Textbox.Text,
                            game:GetService("CoreGui").Kraken.Main.AutoFarm.AutoFarm.Container.NPC2.Button.Textbox.Text,
                            game:GetService("CoreGui").Kraken.Main.AutoFarm.AutoFarm.Container.NPC3.Button.Textbox.Text,
                            game:GetService("CoreGui").Kraken.Main.AutoFarm.AutoFarm.Container.NPC4.Button.Textbox.Text}
            local NPCNUMBER = 1
            while AutoFarm == true and wait() do 
                for i,v in pairs(Live:GetChildren()) do
                    if v.Name:find(NPCS[NPCNUMBER]) and string.len(NPCS[NPCNUMBER]) > 2 and v.Humanoid.Health > 1 and not v.Name:find("red") then
                        Target = v
                        repeat game:GetService("RunService").RenderStepped:Wait()
                            if AutoFarm == true then
                                if game.PlaceId == 2050207304 then
                                    game:GetService("Workspace").Live:FindFirstChild("Broly BR").Humanoid:ChangeState(11)
                                    end
                                if game.Players.LocalPlayer.Character.Humanoid.Health < 1 then
                                    repeat wait() until game.Players.LocalPlayer.Character.Humanoid.Health > 1 end
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                                local Time
                                game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,Vector3.new(v.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,v.HumanoidRootPart.Position.Z)) * CFrame.new(0,2,10)
                                Time = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude/10000
                                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Time,Enum.EasingStyle.Linear,Enum.EasingDirection.In),{CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2)}):Play()
                            end
                        until v.Humanoid.Health < 0.01 or AutoFarm == false 
                    end
                end
                if NPCNUMBER ~= 4 then 
                NPCNUMBER = NPCNUMBER + 1
                elseif NPCNUMBER == 4 then
                NPCNUMBER = 1
                end
            end
        else
            Target = nil
            AutoFarm = false
            if game:GetService("Workspace").Live:FindFirstChild("Broly BR") then
                local Broly = game:GetService("Workspace").Live:FindFirstChild("Broly BR")
                Broly.Head.Transparency = 0
                Broly.Head.Size = Vector3.new(2,1,1)
                Broly.HumanoidRootPart.Size = Vector3.new(3,3,1.5)
            end
        end
    end)

    local moveone
    local movetwo
    local movethree
    local movefour
    local movefive
    local movesix
    local moveseven
    local moveeight
    local movenine

    Move:addButton("Recommended Melee Moves", function()
        m_1.Button.Textbox.Text = "Trash";
        m_2.Button.Textbox.Text = "Final Blow";
        m_3.Button.Textbox.Text = "Trash???";
        m_4.Button.Textbox.Text = "Anger Rush";
        m_5.Button.Textbox.Text = "Justice Flash";    
        m_6.Button.Textbox.Text = "Blaster Meteor";
    end)

    m_1 = Move:addTextbox("Move1", "", function(value)
        moveone = value
    end)

    m_2 = Move:addTextbox("Move2", "", function(value)
        movetwo = value
    end)

    m_3 = Move:addTextbox("Move3", "", function(value)
        movethree = value
    end)

    m_4 = Move:addTextbox("Move4", "", function(value)
        movefour = value
    end)

    m_5 = Move:addTextbox("Move5", "", function(value)
        movefive = value
    end)

    m_6 = Move:addTextbox("Move6", "", function(value)
        movesix = value
    end)

    m_7 = Move:addTextbox("Move7", "", function(value)
        movesix = value
    end)

    m_8 = Move:addTextbox("Move8", "", function(value)
        movesix = value
    end)

    m_9 = Move:addTextbox("Move9", "", function(value)
        movesix = value
    end)

    Move:addToggle("Use Moves", nil, function(PlayerAutoMove)
        if PlayerAutoMove then
            Auto_Moves = true
            while wait(.2) do 
                if Auto_Moves == true and Target then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position  - Target.HumanoidRootPart.Position).magnitude < 40 then
                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.Name == nil then
                            else
                                if
                                v.Name == moveone or 
                                v.Name == movetwo or 
                                v.Name == movethree or
                                v.Name == movefour or
                                v.Name == movefive or
                                v.Name == movesix or
                                v.Name == moveseven or
                                v.Name == moveeight or
                                v.Name == movenine
                                then
                                v.Parent = game.Players.LocalPlayer.Character
                                v:Activate()
                                v:Deactivate()
                                wait(.2)
                                v.Parent = game.Players.LocalPlayer.Backpack
                                end
                            end
                        end
                    end
                end
            end
        else
            Auto_Moves = false
        end
    end)



    local running = true -- Create condition




    local Stats = lib:addPage("AutoStats", 5012544693)
    local Statssection = Stats:addSection("Auto Stats")



    Statssection:addToggle("Health Max", nil, function(bool)
        if bool == true then
            _G.stat1 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Health-Max"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat1 == false
        else
            _G.stat1 = false
        end
    end)

    Statssection:addToggle("Ki Max", nil, function(bool)
        if bool == true then
            _G.stat2 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Max"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat2 == false
        else
            _G.stat2 = false
        end
    end)

    Statssection:addToggle("Melee Damage", nil, function(bool)
        if bool == true then
            _G.stat3 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Phys-Damage"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat3 == false
        else
            _G.stat3 = false
        end
    end)

    Statssection:addToggle("Ki Damage", nil, function(bool)
        if bool == true then
            _G.stat4 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Damage"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat4 == false
        else
            _G.stat4 = false
        end
    end)

    Statssection:addToggle("Melee Resistance", nil, function(bool)
        if bool == true then
            _G.stat5 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Phys-Resist"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat5 == false
        else
            _G.stat5 = false
        end
    end)

    Statssection:addToggle("Ki Resistance", nil, function(bool)
        if bool == true then
            _G.stat6 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Resist"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat6 == false
        else
            _G.stat6 = false
        end
    end)

    Statssection:addToggle("Speed", nil, function(bool)
        if bool == true then
            _G.stat7 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Speed
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat7 == false
        else
            _G.stat7 = false
        end
    end)

    local Stat = lib:addPage("StatChecker", 5012544693)
    local StatSection = Stat:addSection("StatChecker")

    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local function RemoveSpaces(String)
        return String:gsub("%s+", "") or String
    end

    local function FindPlayer(String)
        String = RemoveSpaces(String)
        for _, _Player in pairs(Players:GetPlayers()) do
            if _Player.Name:lower():match("^" .. String:lower()) then
                return _Player
            end
        end
        return nil
    end


    StatSection:addTextbox("Player Name", "", function(PlayerName)
        local Target = FindPlayer(PlayerName)
        if Target and Target.Character then
            local plr = Target
            game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[1].Title.Text = " Name: " .. plr.Name .. ""
            game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[2].Title.Text = " Race: " .. game:GetService("Workspace").Live[plr.Name].Race.Value .. ""
            game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[3].Title.Text= " Health Max: " .. game:GetService("Workspace").Live[plr.Name].Stats["Health-Max"].Value .. ""
            game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[4].Title.Text= " Ki Max: " .. game:GetService("Workspace").Live[plr.Name].Stats["Ki-Max"].Value .. ""
            game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[5].Title.Text= " Melee Damage: " .. game:GetService("Workspace").Live[plr.Name].Stats["Phys-Damage"].Value .. ""
            game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[6].Title.Text= " Ki Damage: " .. game:GetService("Workspace").Live[plr.Name].Stats["Ki-Damage"].Value .. ""
            game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[7].Title.Text= " Melee Resistance: " .. game:GetService("Workspace").Live[plr.Name].Stats["Phys-Resist"].Value .. ""
            game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[8].Title.Text= " Ki Resistance: " .. game:GetService("Workspace").Live[plr.Name].Stats["Ki-Resist"].Value .. ""
            game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[9].Title.Text= " Speed: " .. game:GetService("Workspace").Live[plr.Name].Stats["Speed"].Value .. ""
            game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[10].Title.Text = " Prestige: " .. game:GetService("Workspace").Live[plr.Name].Prestige.Value .. ""
            if game:GetService("Workspace").Live[plr.Name]:FindFirstChild("RebirthWings") then
                game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[11].Title.Text = " Extra: Rebirthed Slot"
            elseif game:GetService("Workspace").Live[plr.Name]:FindFirstChild("RealHalo") then
                game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[11].Title.Text = " Extra: Heaven Slot"
            else
                game.CoreGui.Kraken.Main.StatChecker.StatChecker.Container[11].Title.Text = " Extra: Pure Slot"
            end
        end
    end)


    StatSection:addSypse("Name: ", function()end)
    StatSection:addSypse("Race: ", function()end)
    StatSection:addSypse("Health Max: ", function()end)
    StatSection:addSypse("Ki Max: ", function()end)
    StatSection:addSypse("Melee Damage: ", function()end)
    StatSection:addSypse("Ki Damage: ", function()end)
    StatSection:addSypse("Melee Resistance: ", function()end)
    StatSection:addSypse("Ki Resistance: ", function()end)
    StatSection:addSypse("Speed: ", function()end)
    StatSection:addSypse("Prestige: ", function()end)
    StatSection:addSypse("Extra: ", function()end)

        
    for count = 1,11 do
        game:GetService("CoreGui").Kraken.Main.StatChecker.StatChecker.Container.Button.Name = count
    end


    local Buy = lib:addPage("Buy", 5012544693)
    local BuyBeans = Buy:addSection("Beans&Jars")
    local BuyElderKai = Buy:addSection("Elder Kai")
    local BuyClothes = Buy:addSection("Alpha Clothes")


    BuyBeans:addDropdown("Beans", {"Stop Buying", "Red Beans", "Green Beans", "Blue Beans", "Yellow Beans"}, function(Beans)
        if Beans == "Red Beans" then
            _G.BeanBuy1 = true
            _G.BeanBuy2 = false
            _G.BeanBuy3 = false
            _G.BeanBuy4 = false
            while _G.BeanBuy1 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Beans"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Red"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Beans == "Green Beans" then
            _G.BeanBuy1 = false
            _G.BeanBuy2 = true
            _G.BeanBuy3 = false
            _G.BeanBuy4 = false
            while _G.BeanBuy2 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Beans"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Green"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Beans == "Blue Beans" then
            _G.BeanBuy1 = false
            _G.BeanBuy2 = false
            _G.BeanBuy3 = true
            _G.BeanBuy4 = false
            while _G.BeanBuy3 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Beans"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Blue"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Beans == "Yellow Beans" then
            _G.BeanBuy1 = false
            _G.BeanBuy2 = false
            _G.BeanBuy3 = false
            _G.BeanBuy4 = true
            while _G.BeanBuy4 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Beans"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yellow"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        else
            _G.BeanBuy1 = false
            _G.BeanBuy2 = false
            _G.BeanBuy3 = false
            _G.BeanBuy4 = false
        end
    end)

    BuyBeans:addDropdown("Jars", {"Stop Buying", "Red Jars", "Green Jars", "Blue Jars", "Yellow Jars"}, function(Jars)
        if Jars == "Red Jars" then
            _G.JarBuy1 = true
            _G.JarBuy2 = false
            _G.JarBuy2 = false
            _G.JarBuy4 = false
            while _G.JarBuy1 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Jars"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Red"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Jars == "Green Jars" then
            _G.JarBuy1 = false
            _G.JarBuy2 = true
            _G.JarBuy3 = false
            _G.JarBuy4 = false
            while _G.JarBuy2 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Jars"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Green"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Jars == "Blue Jars" then
            _G.JarBuy1 = false
            _G.JarBuy2 = false
            _G.JarBuy3 = true
            _G.JarBuy4 = false
            while _G.JarBuy3 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Jars"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Blue"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Jars == "Yellow Jars" then
            _G.JarBuy1 = false
            _G.JarBuy2 = false
            _G.JarBuy3 = false
            _G.JarBuy4 = true
            while _G.JarBuy4 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Jars"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yellow"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        else
            _G.JarBuy1 = false
            _G.JarBuy2 = false
            _G.JarBuy3 = false
            _G.JarBuy4 = false
        end
    end)

    BuyElderKai:addToggle("Buy Elder Kai", nil, function(ElderKai)
        if ElderKai == true then
            _G.elderkaibuy = true
            while _G.elderkaibuy and wait(1) do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Elder Kai"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        else
            _G.elderkaibuy = false
        end
    end)

    BuyClothes:addButton("TC Armor", function()
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(game.Workspace.FriendlyNPCs["TC Armor"])
        wait(0.35)
        local A_1 = {
            [1] = "k"
        }
        local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
        Event:FireServer(A_1)
        wait(0.35)
        local A_1 = {
            [1] = "Purchase"
        }
        local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
        Event:FireServer(A_1)
        wait(0.35)
        local A_1 = {
            [1] = "k"
        }
        local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
        Event:FireServer(A_1)
    end)

    BuyClothes:addButton("Aqua Gi", function()
        game.Players.LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(
                game.Workspace.FriendlyNPCs["Aqua Gi"]
            )
            wait(0.35)
            local A_1 = {
                [1] = "k"
            }
            local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
            Event:FireServer(A_1)
            wait(0.35)
            local A_1 = {
                [1] = "Purchase"
            }
            local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
            Event:FireServer(A_1)
            wait(0.35)
            local A_1 = {
                [1] = "k"
            }
            local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
            Event:FireServer(A_1)
    end)

    local Fun = lib:addPage("Fun", 5012544693)
    local FunMain = Fun:addSection("Main")
    local FunAura = Fun:addSection("Aura")

    FunMain:addToggle("Better Walking Anim", nil, function(WalkingAnimation)
        if WalkingAnimation == true then
            if game.Players.LocalPlayer.Character.Animate.walk:FindFirstChild("RunAnim") then
                game.Players.LocalPlayer.Character.Animate.walk:FindFirstChild("RunAnim").AnimationId = "rbxassetid://2625673611"
            end
        else
            if game.Players.LocalPlayer.Character.Animate.walk:FindFirstChild("RunAnim") then
                game.Players.LocalPlayer.Character.Animate.walk:FindFirstChild("RunAnim").AnimationId = "rbxassetid://669161051"
            end
        end
    end)

    FunMain:addSlider("Saturation", 0.2, -25, 25, function(Saturation)
        game.Lighting.ColorCorrection.Saturation = Saturation
    end)

    FunMain:addColorPicker("Wing/Halo Color", Color3.new(255,0,0), function(a)
        if game.Players.LocalPlayer.Character:FindFirstChild("RebirthWings") then
            game.Players.LocalPlayer.Character.RebirthWings.Handle.Color = (a)
        elseif game.Players.LocalPlayer.Character:FindFirstChild("RealHalo") then
            game.Players.LocalPlayer.Character.RealHalo.Handle.Color = (a)
        end    
    end)

    FunMain:addButton("Wide Head", function()
        if game.Players.LocalPlayer.Character.Head:FindFirstChild("Mesh") then
            game.Players.LocalPlayer.Character.Head:FindFirstChild("Mesh"):Destroy()
        end
    end)

    FunMain:addToggle("Drugs", nil, function(Drugs)
        _G.high = true
        if Drugs == true then
            while _G.high do
                game:GetService("TweenService"):Create(
                    game.Workspace.CurrentCamera,
                    TweenInfo.new(1.1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    {FieldOfView = 120}
                ):Play()
                game:GetService("TweenService"):Create(
                    game:GetService("Lighting").ColorCorrection,
                    TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    {Saturation = 35}
                ):Play()
                wait(1.1)
                game:GetService("TweenService"):Create(
                    game.Workspace.CurrentCamera,
                    TweenInfo.new(1.1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    {FieldOfView = 50}
                ):Play()
                game:GetService("TweenService"):Create(
                    game:GetService("Lighting").ColorCorrection,
                    TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    {Saturation = -35}
                ):Play()
                wait(1.1)
            end
        else
            _G.high = false
            wait(3)
            local FOVTEXT = game.CoreGui.RobloxCrashHandler["2"].Frame.ImageButton.Frame.FOV["2"].TextBox.Text
            game.Workspace.Camera.FieldOfView = 70
            game.Lighting.ColorCorrection.Saturation = 0.2
        end
    end)

    FunMain:addToggle("Dummy Stand", nil, function(Stand)
        if Stand == true then
            if game.PlaceId == 536102540 then
            local yes = 1
            local x, x4, t = {"Great Detective Cape"}, {}, .1
            function x2(x3)
                if x[1] ~= nil then
                    for i, v in pairs(game.Workspace.FriendlyNPCs:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("Torso") then
                            if v.Name:find(x3) and not v.Name:find("red") then
                                table.insert(x4, v)
                            end
                        end
                    end
                    table.remove(x, 1)
                end
            end

            x2(x[1])
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            game.Workspace.CurrentCamera.CFrame =
                CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                x4[1].HumanoidRootPart.Position
            ) * CFrame.new(0, 2, 10)
            if
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude >
                    12500
                then
                t = 2.5
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude >
                    1000
                then
                t = 1
                else
                t = 0.2
            end
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(t, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {CFrame = x4[1].HumanoidRootPart.CFrame * CFrame.new(0, .1, 3)}
            ):Play()
            if x4[1].Humanoid.Health < .1 then
                table.remove(x4, 1)
            end
            maybe = true
            while maybe == true do
                wait()
                if
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                        x4[1].HumanoidRootPart.Position).magnitude < 5
                    then
                    maybe = false
                    local LocalPlayer = game:GetService("Players").LocalPlayer
                    local unanchoredparts = {}
                    local movers = {}
                    for index, part in pairs(
                        game.workspace.FriendlyNPCs["Great Detective Cape"]:GetDescendants()
                    ) do
                        if
                            part:IsA("Part") and part.Anchored == false and
                                part:IsDescendantOf(LocalPlayer.Character) == false
                            then
                            table.insert(unanchoredparts, part)
                            part.Massless = true
                            part.CanCollide = false
                            if part:FindFirstChildOfClass("BodyPosition") ~= nil then
                                part:FindFirstChildOfClass("BodyPosition"):Destroy()
                            end
                        end
                    end
                    for index, part in pairs(unanchoredparts) do
                        local mover = Instance.new("BodyPosition", part)
                        table.insert(movers, mover)
                        mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    end
                    repeat
                        for index, mover in pairs(movers) do
                            mover.Position =
                                LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame:PointToWorldSpace(
                                Vector3.new(0, 0, 5)
                            )
                        end
                        wait(0.5)
                    until LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
                    for _, mover in pairs(movers) do
                        mover:Destroy()
                    end
                end
            end
            else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Sypse Hub";
                Text = "Not On Earth";
                Duration = 5;
                })
            end
        else
            ingame = false

            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)

    FunMain:addToggle("Dust", nil, function(Dust)
        if Dust == true then
            Dusty = game:GetService("RunService").RenderStepped:connect(
                function()
                    local A_1 = "average"
                    local A_2 =
                        CFrame.new(
                        -696.695679,
                        291.290009,
                        -5554.28467,
                        0.359417617,
                        0.41572988,
                        -0.83545661,
                        -0,
                        0.895282269,
                        0.445499539,
                        0.933176875,
                        -0.160120383,
                        0.321780175
                    )
                    local Event = game.Players.LocalPlayer.Backpack.ServerTraits.Vanish
                    Event:FireServer(A_1, A_2)
                end
            )
        else
            Dusty:Disconnect()
        end
    end)


    FunMain:addButton("Server Destroyer", function()
        game:GetService("RunService").RenderStepped:connect(function()
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if
                    v.Name == "Energy Wave" or 
                    v.Name == "Double Sunday" or 
                    v.Name == "Destructo Disk" or
                    v.Name == "Explosive Wave" or
                    v.Name == "Kamehameha" or
                    v.Name == "Tribeam" or
                    v.Name == "Super Volley" or
                    v.Name == "Burning Attack" or
                    v.Name == "Big Bang Attack" or
                    v.Name == "Hellzone Grenade" or
                    v.Name == "Special Beam Cannon" or
                    v.Name == "Galic Gun" or
                    v.Name == "Spirit Ball" or
                    v.Name == "Burning Blast" or
                    v.Name == "Death Beam Barrage" or
                    v.Name == "Chain Destructo Disk" or
                    v.Name == "Heat Dome Attack" or
                    v.Name == "Light Grenade" or
                    v.Name == "Death Saucer" or
                    v.Name == "Final Flash" or
                    v.Name == "Giant Storm" or
                    v.Name == "Finish Breaker" or
                    v.Name == "Warp Kamehameha" or
                    v.Name == "Spirit Bomb" or
                    v.Name == "Crusher Ball" or
                    v.Name == "Big Bang Kamehameha" or
                    v.Name == "Sudden Storm" or
                    v.Name == "Demon Flash" or
                    v.Name == "Milky Cannon" or
                    v.Name == "Super Nova" or
                    v.Name == "Murder Grenade" or
                    v.Name == "Genocide Shell" or
                    v.Name == "Break Cannon" or
                    v.Name == "Super Spirit Bomb" or
                    v.Name == "Beam Scatter" or
                    v.Name == "Final Shine" or
                    v.Name == "Hell Pillars" or
                    v.Name == "Justice Flash" or
                    v.Name == "Final Kame" or
                    v.Name == "Pressure Gauge" or
                    v.Name == "Divine Lasso" or
                    v.Name == "Holy Wrath" or
                    v.Name == "Super Death Beam" or
                    v.Name == "Planet Crusher" or
                    v.Name == "Blaster Meteor" or
                    v.Name == "Broly Kamehameha" or
                    v.Name == "Gigantic Breath" or
                    v.Name == "Eraser Cannon" or
                    v.Name == "Buu Blaster" or
                    v.Name == "Death Beam" or
                    v.Name == "Double Buster" or
                    v.Name == "Unrelenting Volley" or
                    v.Name == "Dark Beam" or
                    v.Name == "KKx4 Kamehameha" or
                    v.Name == "Flame Kamehameha" or
                    v.Name == "One-Hand Kamehameha" or
                    v.Name == "Explosive Grip"
                    then
                    v.Parent = game.Players.LocalPlayer.Character
                    v:Activate()
                    v:Deactivate()
                    wait(0.3)
                    v.Parent = game.Players.LocalPlayer.Backpack
                end
            end
        end)
    end)

    FunAura:addToggle("Super Dragon Fist Aura", nil, function(SuperDragonFistAura)
        if SuperDragonFistAura == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")

            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Super Dragon Fist")
                    if tool then
                        humanoid:EquipTool(tool)
                        wait(0.5)
                        if game.Players.LocalPlayer.Character:FindFirstChild("Super Dragon Fist") then
                        game.Players.LocalPlayer.Character["Super Dragon Fist"].Activator.Forward:Destroy()
                        end
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Kraken";
                        Text = "Move Equiped\nPress On a Player";
                        Duration = 5;
                        })    
                    else
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "Kraken";
                        Text = "Buy Super Dragon Fist";
                        Duration = 5;
                        })

                    end
                end
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)

    FunAura:addToggle("Super Rush Aura", nil, function(SuperRushAura)
        if SuperRushAura == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")

            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Super Rush")
                    if tool then
                        humanoid:EquipTool(tool)
                        wait(0.5)
                        if game.Players.LocalPlayer.Character:FindFirstChild("Super Rush") then
                        game.Players.LocalPlayer.Character["Super Rush"].Activator.Forward:Destroy()
                        end
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Kraken";
                        Text = "Move Equiped\nPress On a Player";
                        Duration = 5;
                        })    
                    else
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "Kraken";
                        Text = "Buy Super Rush";
                        Duration = 5;
                        })

                    end
                end
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)

    FunAura:addToggle("Kaioken Assault Aura", nil, function(KaiokenAssaultAura)
        if KaiokenAssaultAura == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")

            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Kaioken Assault")
                    if tool then
                        humanoid:EquipTool(tool)
                        wait(0.5)
                        if game.Players.LocalPlayer.Character:FindFirstChild("Kaioken Assault") then
                        game.Players.LocalPlayer.Character["Kaioken Assault"].Activator.Forward:Destroy()
                        end
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Kraken";
                        Text = "Move Equiped\nPress On a Player";
                        Duration = 5;
                        })    
                    else
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "Kraken";
                        Text = "Buy Kaioken Assault";
                        Duration = 5;
                        })

                    end
                end
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)

    FunAura:addToggle("Wrathful Charge Aura", nil, function(WrathfulChargeAura)
        if WrathfulChargeAura == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")

            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Wrathful Charge")
                    if tool then
                        humanoid:EquipTool(tool)
                        wait(0.5)
                        if game.Players.LocalPlayer.Character:FindFirstChild("Wrathful Charge") then
                        game.Players.LocalPlayer.Character["Wrathful Charge"].Activator.Forward:Destroy()
                        end
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Kraken";
                        Text = "Move Equiped\nPress On a Player";
                        Duration = 5;
                        })    
                    else
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "Kraken";
                        Text = "Buy Wrathful Charge";
                        Duration = 5;
                        })

                    end
                end
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)

    local Teleport = lib:addPage("Teleport", 5012544693)
    local TeleportMain = Teleport:addSection("Teleport")

    TeleportMain:addButton("Earth", function()
        game:GetService("TeleportService"):Teleport(536102540, game.Players.LocalPlayer)
    end)

    TeleportMain:addButton("Namek", function()
        game:GetService("TeleportService"):Teleport(882399924, game.Players.LocalPlayer)
    end)

    TeleportMain:addButton("Space", function()
        game:GetService("TeleportService"):Teleport(478132461, game.Players.LocalPlayer)
    end)

    TeleportMain:addButton("Future", function()
        game:GetService("TeleportService"):Teleport(569994010, game.Players.LocalPlayer)
    end)

    TeleportMain:addButton("Secret World", function()
        game:GetService("TeleportService"):Teleport(2046990924, game.Players.LocalPlayer)
    end)

    TeleportMain:addButton("Queue World", function()
        game:GetService("TeleportService"):Teleport(3565304751, game.Players.LocalPlayer)
    end)

    TeleportMain:addButton("Zaros", function()
        game:GetService("TeleportService"):Teleport(2651456105, game.Players.LocalPlayer)
    end)

    TeleportMain:addButton("HTC", function()
        game:GetService("TeleportService"):Teleport(882375367, game.Players.LocalPlayer)
    end)

    TeleportMain:addButton("Heaven", function()
        game:GetService("TeleportService"):Teleport(3552157537, game.Players.LocalPlayer)
    end)

    TeleportMain:addButton("Lookout", function()
        if game.PlaceId ~= 536102540 then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Kraken";
                Text = "Not On Earth";
                Duration = 2;
                })
            else
            local yes = 1
            local x, x4, t = {"KAMI"}, {}, .1
            function x2(x3)
                if x[1] ~= nil then
                    for i, v in pairs(game.Workspace.FriendlyNPCs:GetChildren()) do
                        if v:FindFirstChild("NpcNoid") and v:FindFirstChild("LowerTorso") then
                            if v.Name:find(x3) and not v.Name:find("red") then
                                table.insert(x4, v)
                            end
                        end
                    end
                    table.remove(x, 1)
                end
            end

            x2(x[1])
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            game.Workspace.CurrentCamera.CFrame =
                CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                x4[1].HumanoidRootPart.Position
            ) * CFrame.new(0, 2, 10)
            if
            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude >
                12500
            then
            t = 2.5
            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude >
                1000
            then
            t = 1
            else
            t = 0.2
        end
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(t, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                {CFrame = x4[1].HumanoidRootPart.CFrame * CFrame.new(0, .1, 3)}
            ):Play()
        end
    end)

    click = TeleportMain:addKeybind("Click TP", Enum.KeyCode[Settings.Click_TP], function()
        mouse = game.Players.LocalPlayer:GetMouse()
        if mouse.Target then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)
        end
    Settings.Click_TP = click.Button.Text.Text
    Save()
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

    uitoggle = settings:addKeybind("Toggle Keybind", Enum.KeyCode[Settings.Toggle_UI], function()
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

    settings:addButton("Save Current Keybinds", function()
        Settings.TP_Behind = behindtp.Button.Text.Text
        Settings.Hard_Reset = hardreset.Button.Text.Text
        Settings.Click_TP = click.Button.Text.Text
        Settings.Toggle_UI = uitoggle.Button.Text.Text
        Save()
        lib:Notify("Notice", "Successfully saved current keybinds!")
    end);


    settings:addButton("Restore Default Keybinds", function()
        Settings.TeleSpeed = "Q";
        Settings.TP_Behind = "V";
        Settings.Hard_Reset = "Delete";
        Settings.Click_TP = "Insert";
        Settings.Toggle_UI = "RightControl";
        Save()
        lib:Notify("Notice", "Successfully set the settings back to default!")
    end);


    -- load
    lib:SelectPage(lib.pages[1], true)
end