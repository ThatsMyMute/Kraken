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



    local library = loadstring(game:HttpGet("https://demonslayer0002.xyz/Kraken/other/nothing.lua.php"))()
    local lib = library.new("Kraken")
    local safezone = game:GetService("Workspace").SpawnPoint
    local char = game.Players.LocalPlayer.Character
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
    local main = Main:addSection("Main")

    function antiafk()
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(
            function()
                vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end
        )
    end


    --Bypasses

    function WSBypass()
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldindex = gmt.__index

        gmt.__index =
            newcclosure(
            function(self, b)
                if b == "WalkSpeed" then
                    return 30.6
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

    antiafk()
    WSBypass()
    Antikick()
    --##################################################################################################################################################################--




    local daw = main:addSlider("Walk Speed Adjuster", 0, 8, 200, function(value)
        game.Players.LocalPlayer.Character.BaseStats.MoveSpeed.Value = value
    end) 

    main:addButton("Collect Chests", function()
        local time = 1.5
    for i,v in pairs(game:GetService("Workspace").Chest:GetChildren()) do
        if v.Name == "Chest" then
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = v.Touch.CFrame}):Play()
        wait(time + 0.3)
        local A_1 = "f"
                local Event = game:GetService("Players").LocalPlayer.Backpack.Input
                Event:FireServer(A_1)
        end
        end
    end)


    main:addButton("Collect Items", function()
        local char = game.Players.LocalPlayer.Character
    for i,v in pairs(game:GetService("Workspace").Items:GetDescendants()) do
        if v.Name == "CanUse" then
            local time = 1.5
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = v.Parent.CFrame}):Play()   
            wait(time + 3.8)
            local A_1 = "f"
            local Event = game:GetService("Players").JJbot10.Backpack.Input
            Event:FireServer(A_1)
        end
        end
    end)

    local gold
    main:addToggle("Collect touchable", nil, function(bool)
        if bool == true then
            local char = game.Players.LocalPlayer.Character
            gold = game:GetService("RunService").RenderStepped:connect(function()
                for i,v in pairs(game:GetService("Workspace").Touch:GetChildren()) do
                    local time = 1
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()   
                end
            end)
        else
            gold:Disconnect()
        end
    end)


    local aura
    main:addToggle("Delete Aura's", nil, function(bool)
        if bool == true then
            aura = game:GetService("RunService").RenderStepped:connect(function()
                if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GnomPart") then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GnomPart"):Destroy()
                end
                if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Bubble") then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Bubble"):Destroy()
                end
            end)
        else
            aura:Disconnect()
        end
    end)


    local tps = lib:addPage("Teleports", 5012544693)
    local tp = tps:addSection("Teleport To")

    tp:addButton("Next Floor", function()
        local stairs = game:GetService("Workspace").Dungeon.Stairs.Touch
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = stairs.CFrame}):Play()
    end)

    tp:addButton("Spawn", function()
        local spawn = game:GetService("Workspace").SpawnPoint
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = spawn.CFrame}):Play()
    end)


    tp:addButton("Bank", function()
        local time = 1.8
        if #game.Workspace.Events:GetChildren() == 0 then
            lib:Notify("Notice", "No events in the server") end
        for i,v in pairs(game:GetService("Workspace").Events:GetChildren()) do
                if v.IntEvent.Value == "SendGold" then
                    lib:Notify("Notice", "Found a bank, teleporting to it")
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
                end
                end
    end)

    local ws = lib:addPage("Worship", 5012544693)
    local wship = ws:addSection("Worship Main")

    wship:addButton("Go to Worship Statue", function()
        local time = 1.8
        if #game.Workspace.Events:GetChildren() == 0 then
            lib:Notify("Notice", "No events in the server") end
        for i,v in pairs(game:GetService("Workspace").Events:GetChildren()) do
                if v.IntEvent.Value == "Worship" then
                    lib:Notify("Notice", "Found a Worship Statues, teleporting to it | Make sure to stay close to it for a few seconds")
                game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
                wait(time + 3.5)
                for e = 0,25 do
                    wait(0.6)
                    local A_1 = "event"
                        local A_2 = v
                        local Event = game:GetService("Players").LocalPlayer.Backpack.Input
                        Event:FireServer(A_1, A_2)
                        end
                end
                if v.IntEvent.Value ~= "Worship" then
                    lib:Notify("Notice", "No Worship Statue ") 
                    end
                    
    end
    end)

    local Misc = lib:addPage("Misc", 5012544693)
    local misc = Misc:addSection("Misc Main")

    misc:addKeybind("Click TP", Enum.KeyCode.Insert, function()
        mouse = game.Players.LocalPlayer:GetMouse()
            if mouse.Target then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
            end
    end)

    local noclip
    misc:addToggle("Noclip", nil, function(NC)
            if NC == true then
                noclip = game:GetService("RunService").RenderStepped:connect(function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end)
            else
                noclip:Disconnect()
            end
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