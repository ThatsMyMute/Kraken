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



        
    local Ember = 4601350214
    local Obelisk = 4601350809
    local Nimbus = 4601350656  
    local Haze = 4601350760  
    local Dunes = 4601350394 
    local Storm = 5084678830  
    local Training = 5431071837   
    local ForestofEmbers = 5447073001  
    local DawnHideout = 5431069982  
    local ArenaX = 5743370338 
    local ShindoWorld = 5943872934  
    local War = 5824792748
    --old-antitp bypass
    if workspace:FindFirstChild("CCoff") then
        game:GetService("Workspace").CCoff:Destroy()
    end
    --antiafk
    local VirtualUser=game:service'VirtualUser'
        game:service'Players'.LocalPlayer.Idled:connect(function()
        warn("anti-afk")
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
    --variables
    local player = game.Players.LocalPlayer
    local mission = player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory")
    local menuplace = 4616652839
    local forestplace = 5447073001
    local rainplace = 5084678830
    local trainingplace = 5431071837
    local akatsukiplace = 5431069982
    local worldxplace = 5943874201
    local villageplace = game:GetService("Workspace"):FindFirstChild("rank")
    local warplace = game:GetService("Workspace"):FindFirstChild("warmode")
    function toTarget(pos, targetPos, targetCFrame)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((targetPos - pos).Magnitude/getgenv().speed, Enum.EasingStyle.Linear)
        local tween, err = pcall(function()
            local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90))})
            tween:Play()
        end)
        if not tween then return err end
    end

    --UI Lib Loading

    local library = loadstring(game:HttpGet("https://demonslayer0002.xyz/Kraken/other/nothing.lua.php"))()
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
    local Main = lib:addPage("Main", 5012544693)
    local main = Main:addSection("Main")
    local section1 = Main:addSection("Auto Doge")

    main:addButton("Infinite Chakra", function()
            _G.InfChakra = true
            loadstring(game:HttpGet('https://demonslayer0002.xyz/Kraken/SpookyStuffDontDelete/suckmybum/ingame/infchakra.lua.php'))()
    end)


    main:addButton("Tree Jump", function()
        game.Players.LocalPlayer.Character['Right Leg'].Touched:Connect(function(hit)
        hit.Name = 'leaf'
        hit.Parent = game:GetService("Workspace").map.Tree.tree
        wait(1)
        end)
        end)




    main:addButton("Rejoin Server",function()
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
        ts:Teleport(game.PlaceId, p)
    end)

    section1:addButton("Auto Dodge", function()
        _G.Doge = true;
        _G.dogespeed = 80;
        
        local mt = getrawmetatable(game)
        local old = mt.__newindex
        setreadonly(mt, false)
        
        mt.__newindex = newcclosure(function(t,k,v)
            pcall(function()
                if t == game:GetService("Players").LocalPlayer.Character.Humanoid and k == "WalkSpeed" and _G.Doge then
                    v = _G.dogespeed;
                end
            end)
            return old(t,k,v)
        end)
    end)


    --Two page
    local AutoFarm = lib:addPage("Auto Farm", 5012544693)
    local Farm = AutoFarm:addSection("NPC Farm")
    local Scroll = AutoFarm:addSection("Scroll Farm")
    getgenv().speed = 500


        local autofarm
        Farm:addToggle("Auto Farm", nil, function(bool)
            autofarm = bool
        end)
        
        local RANKUP
        Farm:addToggle("Auto Prestige", nil, function(bool)
            RANKUP = bool
        end)
        
            local jinfarm
        Scroll:addToggle("Jin Farm", nil, function(bool)
            jinfarm = bool
        end)

        Scroll:addToggle("Scroll Farm", nil, function(bool)
            scrollfarm = bool
        end)
        
        
    local tps = lib:addPage("Teleports", 5012544693)
    local section69 = tps:addSection("Teleportation")

    section69:addDropdown("Teleport to", {"Ember", "Obelisk", "Nimbus", "Haze", "Dunes", "Storm", "Training", "Forest of Embers", "Dawn Hideout", "ArenaX", "Shindo World", "War"}, function(tpto)
        if tpto == "Ember" then
            game:GetService("TeleportService"):Teleport(Ember, game.Players.LocalPlayer)
        elseif tpto == "Obelisk" then
            game:GetService("TeleportService"):Teleport(Obelisk, game.Players.LocalPlayer)
        elseif tpto == "Nimbus" then
            game:GetService("TeleportService"):Teleport(Nimbus, game.Players.LocalPlayer)
        elseif tpto == "Haze" then
            game:GetService("TeleportService"):Teleport(Haze, game.Players.LocalPlayer)
        elseif tpto == "Dunes" then
            game:GetService("TeleportService"):Teleport(Dunes, game.Players.LocalPlayer)
        elseif tpto == "Storm" then
            game:GetService("TeleportService"):Teleport(Storm, game.Players.LocalPlayer)
        elseif tpto == "Training" then
            game:GetService("TeleportService"):Teleport(Training, game.Players.LocalPlayer)
        elseif tpto == "Forest of Embers" then
            game:GetService("TeleportService"):Teleport(ForestofEmbers, game.Players.LocalPlayer)
        elseif tpto == "Dawn Hideout" then
            game:GetService("TeleportService"):Teleport(DawnHideout, game.Players.LocalPlayer) 
        elseif tpto == "ArenaX" then
            game:GetService("TeleportService"):Teleport(ArenaX, game.Players.LocalPlayer) 
        elseif tpto == "Shindo World" then
            game:GetService("TeleportService"):Teleport(ShindoWorld, game.Players.LocalPlayer) 
        elseif tpto == "War" then
            game:GetService("TeleportService"):Teleport(War, game.Players.LocalPlayer)
            end
    end)
    
        section69:addDropdown("Create Private Server (MUST HAVE GAMEPASS)", {"Ember", "Obelisk", "Nimbus", "Haze", "Dunes", "Storm", "Training", "Forest of Embers", "Dawn Hideout", "ArenaX", "Shindo World", "War"}, function(tpto)
            if tpto == "Ember" then
                local A_1 = "createprivateserver"
                local A_2 = Ember
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
            elseif tpto == "Obelisk" then
                local A_1 = "createprivateserver"
                local A_2 = Obelisk
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
            elseif tpto == "Nimbus" then
                local A_1 = "createprivateserver"
                local A_2 = Nimbus
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
            elseif tpto == "Haze" then
                local A_1 = "createprivateserver"
                local A_2 = Haze
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
            elseif tpto == "Dunes" then
                local A_1 = "createprivateserver"
                local A_2 = Dunes
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
            elseif tpto == "Storm" then
                local A_1 = "createprivateserver"
                local A_2 = Storm
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
            elseif tpto == "Training" then
                local A_1 = "createprivateserver"
                local A_2 = Training
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
            elseif tpto == "Forest of Embers" then
                local A_1 = "createprivateserver"
                local A_2 = ForestofEmbers
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
            elseif tpto == "Dawn Hideout" then
                local A_1 = "createprivateserver"
                local A_2 = DawnHideout
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
            elseif tpto == "ArenaX" then
                local A_1 = "createprivateserver"
                local A_2 = ArenaX
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
            elseif tpto == "Shindo World" then
                local A_1 = "createprivateserver"
                local A_2 = ShindoWorld
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
            elseif tpto == "War" then
                local A_1 = "createprivateserver"
                local A_2 = War
                local Event = game:GetService("Players").LocalPlayer.startevent
                Event:FireServer(A_1, A_2)
                
                end
        end)






    --Warmode Page
    local warmodepage = lib:addPage("War Farm", 5012544693)
    local warfarm = warmodepage:addSection("Warmode")

    local war
        warfarm:addToggle("Warmode", nil, function(bool)
        war = bool
        end)
        
        warfarm:addToggle("Reset after Round 21", nil, function(bool)
            local rnd = game:GetService"Workspace".warserver.round
    local delay = 1

    game:GetService("RunService").RenderStepped:Connect(function()
    wait(delay)
    if (rnd.Value >= 21) then
        game:GetService("Players").LocalPlayer.Character.Head:Destroy()
        wait(delay)
    end
    end)
        end)

        game:GetService('RunService').Stepped:connect(function()
            if autofarm or gift then
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end)
            end
        end)
        local green = "http://www.roblox.com/asset/?id=5459241648"
        local red = "http://www.roblox.com/asset/?id=5459241799"
        local candy = "http://www.roblox.com/asset/?id=6078390771"
        spawn(function()
            while wait() do
                if autofarm then
                    if  player.currentmission.Value == nil then
                        for i,v in pairs(workspace.missiongivers:GetChildren()) do
                            pcall(function()
                                if player.currentmission.Value == nil and v.Name == "" and v:FindFirstChild("Head") and v.Head:FindFirstChild("givemission").Enabled and v.Head.givemission:FindFirstChild("color").Visible  then
                                    local TALK = v:FindFirstChild("Talk")
                                    local lvl = player.statz.lvl.lvl.Value
                                    if lvl <= 699 then
                                        if player.currentmission.Value == nil  and v.Talk:FindFirstChild("typ").Value == "defeat" and v.Head.givemission.Enabled and v.Head.givemission.color.Visible and v.Head.givemission.color.Image == green then
                                            local getmission = v:FindFirstChild("HumanoidRootPart")
                                            local clienttalk = v:FindFirstChild("CLIENTTALK")
                                            repeat wait(.3)
                                                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-8,0)))
                                                if (player.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude < 10 then
                                                    clienttalk:FireServer()
                                                    wait(.3)
                                                    clienttalk:FireServer("accept")
                                                end
                                            until mission.Visible or v:FindFirstChild("Head").givemission.Enabled == false or player.currentmission.Value == "mission" or not autofarm
                                        end
                                    elseif lvl >= 700 then
                                        if player.currentmission.Value == nil and TALK.typ.Value == "defeat" and v.Head.givemission.Enabled and v.Head.givemission.color.Visible and v.Head.givemission.color.Image == green or v.Head.givemission.color.Image == red then
                                            local getmission = v:FindFirstChild("HumanoidRootPart")
                                            local clienttalk = v:FindFirstChild("CLIENTTALK")
                                            repeat wait(.3)
                                                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-8,0)))
                                                if (player.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude < 10 then
                                                    clienttalk:FireServer()
                                                    wait(.3)
                                                    clienttalk:FireServer("accept")
                                                end
                                            until mission.Visible or v:FindFirstChild("Head").givemission.Enabled == false or player.currentmission.Value == "mission" or not autofarm
                                        end
                                    end
                                end
                            end)
                        end
                    else
                        for i,v in pairs(workspace.npc:GetChildren()) do
                            pcall(function()
                                if v.ClassName == "Model" and v:FindFirstChild("npctype") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 then
                                    repeat wait(.5)
                                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-8,0)))
                                        v.Humanoid.Health = 0
                                    until v.Humanoid.Health == 0 or not autofarm or player.currentmission.Value == nil
                                end
                            end)
                        end
                    end
                end
            end
        end)
        spawn(function()
            while wait() do
                if gift then
                    local spins = player.statz.spins.Value
                    if spins < 500 then
                        for i,v in pairs(workspace.missiongivers:GetChildren()) do
                            pcall(function()
                                if mission.Visible == false and v.ClassName == "Model" and v:FindFirstChild("Head"):FindFirstChild("givemission").Enabled and v:FindFirstChild("CLIENTTALK") and v:FindFirstChild("Talk") and string.find(v.Talk.talk1.Value, "Happy holidays, here is 1 FREE spin!") and v.Talk:FindFirstChild("typ").Value == "halloweenevent" and v.Head.givemission.color.Image == gift then
                                    repeat wait(.3)
                                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-5,0)))
                                        v.CLIENTTALK:FireServer()
                                        wait(.2)
                                        v.CLIENTTALK:FireServer("accept")
                                    until v:FindFirstChild("Head").givemission.Enabled == false or not gift
                                end
                            end)
                        end
                    else
                        print("max spins reached 500")
                    end
                end
            end
        end)
        local function SCROLLFARM()
            for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
                if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
                    local scrollA = v.sh:FindFirstChild("invoke")
                    print("SCROLL SPAWNED")
                    pcall(function()
                        toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.sh.Position,CFrame.new(v.sh.Position))
                    end)
                    scrollA:FireServer(game.Players.LocalPlayer)
                    fireclickdetector(v.sh.ClickDetector)
                end
            end
        end
        local function SCROLLFARM1()
            for i,v in pairs(game.workspace:GetChildren()) do
                if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
                    local scrollA = v.sh:FindFirstChild("invoke")
                    print("SCROLL SPAWNED in workspace")
                    pcall(function()
                        toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.sh.Position,CFrame.new(v.sh.Position))
                        scrollA:FireServer(game.Players.LocalPlayer)
                        fireclickdetector(v.sh.ClickDetector)
                    end)
                end
            end
        end

        spawn(function()
            while wait() do
                if scrollfarm then
                    repeat wait()
                        SCROLLFARM()
                        SCROLLFARM1()
                    until not scrollfarm or not war or not war2
                end
            end
        end)
        
            game:GetService('RunService').Stepped:connect(function()
            if war or war2 then
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end)
            end
        end)

        spawn(function()
            while wait() do
                if war or war2 then
                    repeat wait()
                        SCROLLFARM()
                        SCROLLFARM1()
                    until not scrollfarm or not war or not war2
                end
            end
        end)
        spawn(function()
            while wait() do
                if war then
                    pcall(function()
                        refresh:Refresh("War Completed: " .. count)
                        refreshC:Refresh("Round: " .. workspace.warserver.round.Value)
                    end)
                    for i,v in pairs(workspace.npc:GetChildren()) do
                        if workspace.warserver:FindFirstChild("zetsu").Value > 0 and string.find(workspace.warserver.text.Value, "Left") or string.find(workspace.warserver.text.Value, "DEFEAT") and v.ClassName == "Model" and v:FindFirstChild("npc") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 and not v:FindFirstChild("megaboss") then
                            wait(.2)
                            pcall(function()
                                v.Humanoid.Health = 0
                            end)
                        elseif v.ClassName == "Model" and v:FindFirstChild("npc") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 and v:FindFirstChild("megaboss") then
                            wait(6)
                            pcall(function()
                                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position))
                                v.Humanoid.Health = 0
                            end)
                        end
                    end
                    if reset then
                        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if v.Name == "warserver" and v:FindFirstChild("round").Value > 20 then
                                wait(5)
                                player.Character:BreakJoints()
                                repeat wait()
                                until v.round.Value == 0
                                count = count + 1
                            end
                        end
                    end
                end
            end
        end)
        
        spawn(function()
            while wait() do
                if war2 then
                    refresh:Refresh("War Completed: " .. count)
                    refreshC:Refresh("Round: " .. workspace.warserver.round.Value)
                    for i,v in pairs(workspace.npc:GetChildren()) do
                        if workspace.warserver:FindFirstChild("zetsu").Value > 0 and string.find(workspace.warserver.text.Value, "Left") or string.find(workspace.warserver.text.Value, "DEFEAT") and v.ClassName == "Model" and v:FindFirstChild("npc") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 and not v:FindFirstChild("megaboss") then
                            pcall(function()
                                repeat wait()
                                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-12,0)))
                                wait(.3)
                                v.Humanoid.Health = 0
                                until v.Humanoid.Health == 0
                            end)
                        elseif v.ClassName == "Model" and v:FindFirstChild("npc") and string.find(v.Name, "npc") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Head.CFrame.Y > -1000 and v:FindFirstChild("megaboss") then
                            wait(8)
                            pcall(function()
                                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-25,0)))
                                v.Humanoid.Health = 0
                            end)
                        else
                            wait()
                        end
                    end
                    if reset then
                        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if v.Name == "warserver" and v:FindFirstChild("round").Value > 20 then
                                wait(5)
                                player.Character:BreakJoints()
                                repeat wait()
                                until v.round.Value == 0
                                count = count + 1
                            end
                        end
                    end
                end
            end
        end)

        local function JINFARM()
            for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
                if v.Name == "npc1" then
                    repeat wait()
                        pcall(function()
                            toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.HumanoidRootPart.Position,CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-25,0)))
                            player.Character.combat.update:FireServer("mouse1", true)
                            wait(.1)
                            v.Humanoid.HealthChanged:Connect(function()
                                v.Humanoid.Health = 0
                            end)
                        end)
                    until v.Humanoid.Health == 0 or not jinfarm
                end
            end
        end
        spawn(function()
            while wait() do
                if jinfarm then
                    JINFARM()
                end
            end
        end)
        spawn(function()
            while wait() do
                if RANKUP and player.statz.lvl:FindFirstChild("lvl").Value == 1000 then
                    repeat wait()
                        game.Players.LocalPlayer.startevent:FireServer("rankup")
                    until player.statz.lvl:FindFirstChild("lvl").Value == 1 or not RANKUP
                end
            end
        end)
        
    --Four page
    if game.PlaceId == menuplace then
    local inf = lib:addPage("Infinite Spin", 5012544693)
    local spin = inf:addSection("Infinite Spin")

        --main menu
        local kgs = {}
        for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
            if v:FindFirstChild("KG") then
                table.insert(kgs, v.Name)
            end
        end
        
        local b
        local kgslot
        local kgvalue
        spin:addDropdown("KG SLOT",{"kg1", "kg2", "kg3", "kg4"},function(kgS)
            b = kgS
            kgslot = game.Players.LocalPlayer.statz.main:FindFirstChild(b)
            kgvalue = kgslot.Value
            print(kgslot)
            print(kgvalue)
        end)
        local a1
        spin:addDropdown("KG Select",kgs,function(KG1)
            print("Selected: " .. KG1)
            a1 = KG1
        end)
        local a2
        spin:addDropdown("KG Select",kgs,function(KG2)
            print("Selected: " .. KG2)
            a2 = KG2
        end)
        local a3
        spin:addDropdown("KG Select",kgs,function(KG3)
            print("Selected: " .. KG3)
            a3 = KG3
        end)
        local a4
        spin:addDropdown("KG Select",kgs,function(KG4)
            print("Selected: " .. KG4)
            a4 = KG4
        end)
        local a5
        spin:addDropdown("KG Select",kgs,function(KG5)
            print("Selected: " .. KG5)
            a5 = KG5
        end)
        spin:addButton("Start Spin KG",function()
            kgslot.ChildAdded:Connect(function(yes)
                if yes.Name == "dontspin" then
                    wait(.1)
                    yes:Destroy()
                end
            end)
        
            local spins = game.Players.LocalPlayer.statz.spins.Value
            local des = game.Players.LocalPlayer.statz.spins
            spawn(function()
                for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
                    if v:FindFirstChild("KG") then
                        local a = Instance.new("StringValue")
                        a.Name = v.Name
                        a.Parent = game.Players.LocalPlayer.statz.genkailevel
                    end
                end
            end)
            
            spawn(function()
                while wait() do
                    if spins > 0 then
                        spins = game.Players.LocalPlayer.statz.spins.Value
                        kgvalue = kgslot.Value
                        print("Rolled: " .. kgvalue)
                        if kgvalue ~= a1 and kgvalue ~= a2 and kgvalue ~= a3 and kgvalue ~= a4 and kgvalue ~= a5 then
                            kgvalue = kgslot.Value
                            game.Players.LocalPlayer.startevent:FireServer("spin", b)
                            wait(.2)
                            kgvalue = kgslot.Value
                        else
                            print("You have got: " .. kgvalue)
                        end
                    else
                        player.statz.spins:Destroy()
                        game:GetService('TeleportService'):Teleport(game.PlaceId, player)
                    end
                end
            end)
        end)

        spin:addButton("Reset Spin",function()
            player.statz.spins:Destroy()
            game:GetService('TeleportService'):Teleport(game.PlaceId, player)	 
        end)
    end

        
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