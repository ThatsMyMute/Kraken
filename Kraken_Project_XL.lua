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
local Auto_Attack = false
local AutoFarm = false
_G.URNCOLLECT = false


do
    local env = getfenv();
    env.http_request = (http_request or request or syn.request);
    env.httpService = game:GetService("HttpService");
    env.starterGui = game:GetService("StarterGui");
    env.players = game:GetService("Players");
    env.client = players.LocalPlayer;
    env.is_synapse_function = (is_synapse_function or issentinelclosure);
end;


local httpPost;
local clientId = tostring(players:GetUserIdFromNameAsync(client.Name));
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

main:addSlider("Walk Speed Adjuster", 16, 16, 200, function(value)
        game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

main:addSlider("Jump Power Adjuster", 50, 50, 300, function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = value
end)


--//Tools\\--
--[[
main:addToggle("GodMode", nil, function (bool)
    if bool then
        bool_niggaA = true
        while bool_niggaA == true do
            wait()
            if game.Players.LocalPlayer.Character:FindFirstChild("CharacterValues") then
                game.Players.LocalPlayer.Character:FindFirstChild("CharacterValues"):Destroy()
            end
        end
    else
        bool_niggaA = false
    end
end)
]]

main:addToggle("Kill Aura", nil, function(AutoAttack)
    if AutoAttack then
        Auto_Attack = true
            while Auto_Attack == true do
                wait()
                if Auto_Attack == true then
                    local A_1 = false
                    local A_2 = Vector3.new(1779.72302, 1381.90161, 10072.6719)
                    local A_3 = CFrame.new(1779.72302, 1381.90161, 10072.6719, -0.979300082, -0.0265247859, -0.20066826, 1.86264515e-09, 0.991376758, -0.131042436, 0.202413723, -0.128329873, -0.970855355)
                    local Event = game:GetService("ReplicatedStorage").RemoteEvents.BladeCombatRemote
                    Event:FireServer(A_1, A_2, A_3)
                end
            end
    else
        Auto_Attack = false
    end
end)

main:addButton("Redeem All Codes", function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Codes:GetChildren()) do
        local A_1 = v.Name
        local Event = game:GetService("ReplicatedStorage").RemoteEvents.CodeRemote
        Event:FireServer(A_1)
    end
end)

local Misc = lib:addPage("Misc", 5012544693)
local MiscSection = Misc:addSection("Misc")

MiscSection:addSlider("FOV", 70, 1, 120, function(FOV)
    game.Workspace.Camera.FieldOfView = FOV
end)

MiscSection:addButton("FullBright", function()
    if game.Lighting:FindFirstChild("DepthOfField") then
        game.Lighting:FindFirstChild("DepthOfField"):Destroy()
    end
    if game.Lighting:FindFirstChild("Bloom") then
        game.Lighting:FindFirstChild("Bloom"):Destroy()
    end
    if game.Lighting:FindFirstChild("Blur") then
        game.Lighting:FindFirstChild("Blur"):Destroy()
    end
    if game:FindFirstChild("Lighting") then
        game:FindFirstChild("Lighting").FogEnd = 9999999999999
        game:FindFirstChild("Lighting").FogStart = 9999999999999
    end
    if game.Lighting:FindFirstChild("Atmosphere") then
        game.Lighting:FindFirstChild("Atmosphere"):Destroy()
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
    end
end)



MiscSection:addKeybind("Hard Reset", Enum.KeyCode.Delete, function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0;
end)

local Skkrt = lib:addPage("Snatchers", 5012544693)
local Snatch = Skkrt:addSection("Snatchers")
local Rare = Skkrt:addSection("Rare Snatcher")
local Collect = Skkrt:addSection("Auto Collect")

Snatch:addToggle("Devil Fruit Snatcher", nil, function(bool)  
    if bool == true then
        _G.DFSnatch = true
        repeat wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName == "Tool" then
                    if v.ToolTip == "Devil Fruit" then    
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
                    end
                end
            end
        until _G.DFSnatch == false
    else
        _G.DFSnatch = false
    end    
end)

Snatch:addToggle("Urn Snatcher", nil, function(bool)  
    if bool == true then
        _G.URNSnatch = true
        repeat wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName == "Tool" then
                    if v.Name == "Urn" then    
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
                    end
                end
            end
        until _G.URNSnatch == false
    else
        _G.URNSnatch = false
    end    
end)

Snatch:addToggle("Bag Snatcher", nil, function(bool)  
    if bool == true then
        _G.BAGSnatch = true
        repeat wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName == "Tool" then
                    if v.ToolTip == "Bag" then    
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
                    end
                end
            end
        until _G.BAGSnatch == false
    else
        _G.BAGSnatch = false
    end
end)

Snatch:addToggle("Newspaper Snatcher", nil, function(bool)  
    if bool == true then
        _G.NEWSnatch = true
        repeat wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName == "Tool" then
                    if v.Name == "Newspaper" then    
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
                    end
                end
            end
        until _G.NEWSnatch == false
    else
        _G.NEWSnatch = false
    end    
end)


Snatch:addToggle("Eyeball Snatcher", nil, function(bool)  
    if bool == true then
        _G.EyeSnatch = true
        repeat wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName == "Tool" then
                    if v.Name == "Eyeball" then    
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
                    end
                end
            end
        until _G.EyeSnatch == false
    else
        _G.EyeSnatch = false
    end    
end)

Snatch:addToggle("Brain Snatcher", nil, function(bool)  
    if bool == true then
        _G.Brain = true
        repeat wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName == "Tool" then
                    if v.Name == "Brain" then    
                        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
            end
        until _G.Brain == false
    else
        _G.Brain = false
    end    
end)



Snatch:addToggle("Gem Snatcher", nil, function(bool)  
    if bool == true then
        _G.Gem = true
        repeat wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName == "Tool" then
                    if v.ToolTip == "Gem" then    
                        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
            end
        until _G.Gem == false
    else
        _G.Gem = false
    end    
end)

Snatch:addToggle("Heart Snatcher", nil, function(bool)  
    if bool == true then
        _G.Heart = true
        repeat wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName == "Tool" then
                    if v.Name == "Heart" then    
                        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
            end
        until _G.Heart == false
    else
        _G.Heart = false
    end    
end)


function httpPost(url, data)
    return http_request({
        Url = _G.Notif;
        Method = "POST";
        Headers = {
            ["Content-Type"] = "application/json";
        };
        Body = httpService:JSONEncode(data);
    }).Body;
end;

function Log()
    local info = {
        embeds = {{
            title = ("Rare Fruit Found");
            color = (0x28B463);
            fields = {
                {value = _G.fruitstuff, name = "Fruit:", inline = true},
                
            }},
        };
    };

    httpPost(logUrl, info);
end;




Rare:addToggle("Rare Specialization Snatcher", nil, function(bool)  
    if bool == true then
        _G.spec = true
        repeat wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName == "Tool" then
                    if v.Name == "Flashstep" or
                        v.Name == "Sonido" or
                        v.Name == "Danger Sense v1" or
                        v.Name == "Nagi Nagi no mi v1" or
                        v.Name == "Nagi Nagi no mi v2" or
                        v.Name == "Suke Suke no mi v1" or
                        v.Name == "Doa Doa no mi v1" or
                        v.Name == "Kage Kage no mi" or
                        v.Name == "Danger Sense v2" or
                        v.Name == "Hirenkyaku" then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
                        _G.fruitstuff = v.Name
                        if _G.Notif == nil then
                        else
                        Log()
                        end
                    end
                end
            end
        until _G.spec == false
    else
        _G.spec = false
    end    
end)


Rare:addToggle("Rare Devil Fruit Snatcher", nil, function(bool)  
    if bool == true then
        _G.NEWSnatch = true
        repeat wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName == "Tool" then
                    if v.Name == "Goro Goro no mi" or
                        v.Name == "Gura Gura no mi" or
                        v.Name == "Electrification" or 
                        v.Name == "Pika Pika no mi" or
                        v.Name == "Moku Moku no mi" or 
                        v.Name == "Cremation" then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
                        _G.fruitstuff = v.Name
                        if _G.Notif == nil then
                        else
                        Log()
                        end
                    end
                end
            end
        until _G.NEWSnatch == false
    else
        _G.NEWSnatch = false
    end    
end)


Rare:addToggle("Mentor Snatcher", nil, function(bool)  
    if bool == true then
        _G.MENTORSnatch = true
        repeat wait()
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.ClassName == "Tool" then
                    if v.ToolTip == "Mentor Egg" then    
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
                    end
                end
end
        until _G.MENTORSnatch == false
    else
        _G.MENTORSnatch = false
    end    
end)

Rare:addTextbox("Notifier (discord webhook)", nil , function(value)
    _G.Notif = value
end)

Rare:addButton("Check webhook (discord webhook)", function()
msg = {
["embeds"] = {{
["color"] = 0x28B463,
["description"] = "This is a webhook test from Kraken, "..game.Players.LocalPlayer.Name,
["author"] = {
["name"] = "Kraken Webhook Bot"
}}
}
}
local response = syn.request(
{
Url = _G.Notif,
Method = "POST",
Headers = {
["Content-Type"] = "application/json"
},
Body = game:GetService("HttpService"):JSONEncode(msg)
}
)


end)



Collect:addToggle("Auto Urn Collector", nil, function(bool)  
    if bool == true then
        _G.URNCOLLECT = true
        repeat wait()
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Urn" then
                    v.Parent = game.Players.LocalPlayer.Character
                    wait()
                    local Event = game:GetService("ReplicatedStorage").RemoteEvents.ItemRemote
                    Event:FireServer()
                end
            end
        until _G.URNCOLLECT == false
    else
        _G.URNCOLLECT = false
    end    
end)

Collect:addToggle("Delete Trash Bags", nil, function(bool)  
    if bool == true then
        _G.bag = true
        repeat wait()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Bag" then
                    if v.BagPart.Overhead.Rarity.Text ~= "Rare" then
                    v:Destroy()
                    end
                end
            end
        until _G.bag == false
    else
        _G.bag = false
    end    
end)
local Plr = game:GetService("Players").LocalPlayer
local Char = Plr.Character 
local Live = game:GetService("Workspace").Live

local pg = lib:addPage("AutoFarm", 5012544693)
local AutoFarm = pg:addSection("AutoFarm")

AutoFarm:addTextbox("NPC1", "NPC1", function(value)
end)

AutoFarm:addTextbox("NPC2", "NPC2", function(value)
end)    

game.CoreGui.Kraken.Main.AutoFarm.AutoFarm.Container.Textbox.Name = "NPC1";
game.CoreGui.Kraken.Main.AutoFarm.AutoFarm.Container.Textbox.Name = "NPC2";

local QUEST = {"Defeat 10 Wood Dummies","Defeat 9 Ice Dummies","Defeat 8 Rock Dummies","Defeat 7 Iron Dummies","Defeat 6 Metal Dummies","Defeat 5 Steel Dummies"};




AutoFarm:addDropdown("Quest",QUEST, function(value)
    QuestName = value
end);


AutoFarm:addToggle("Auto Quest", nil, function(value)
    _G.AutoQuest = value

    while _G.AutoQuest and wait() do
    if _G.AutoQuest and game:GetService("Players").LocalPlayer.PlayerGui.Menu.QuestFrame.Visible == false then 
        game:GetService("ReplicatedStorage").RemoteEvents.ChangeQuestRemote:FireServer(game:GetService("ReplicatedStorage").Quests[QuestName]) end;
    end;
end);

AutoFarm:addToggle("Auto Equip", nil, function(value)
    _G.AutoEquip = value
    while _G.AutoEquip and wait() do
        local Players = game:GetService("Players");
        local player = Players:FindFirstChildOfClass("Player");

        if Players:FindFirstChildOfClass("Player") and player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid");
            if humanoid then
                for i,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if b:IsA("Tool") then
                        if b.RequiresHandle == false then
                            humanoid:EquipTool(b);
                        end;
                    end;
                end;
            end;
        end;
    end;
end);

AutoFarm:addToggle("Start Auto Farm", nil, function(NPCFARM)
    if NPCFARM then
        AutoFarm = true
        local NPCS = {game:GetService("CoreGui").Kraken.Main.AutoFarm.AutoFarm.Container.NPC1.Button.Textbox.Text,
                        game:GetService("CoreGui").Kraken.Main.AutoFarm.AutoFarm.Container.NPC2.Button.Textbox.Text,
                    }
        local NPCNUMBER = 1
        while AutoFarm == true and wait() do 
            for i,v in pairs(Live:GetChildren()) do
                for i,v in pairs (v:GetChildren()) do
                    if v.Name:find(NPCS[NPCNUMBER]) and string.len(NPCS[NPCNUMBER]) > 2 and v.Humanoid.Health > 1 then
                        Target = v
                        repeat game:GetService("RunService").RenderStepped:Wait()
                            if AutoFarm == true then
                                local Players = game:GetService("Players")
                                local player = Players:FindFirstChildOfClass("Player")

                                if Players:FindFirstChildOfClass("Player") and player.Character then
                                    local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                                    if humanoid then
                                        for i,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if b:IsA("Tool") then
                                                if b.RequiresHandle == false then
                                                    humanoid:EquipTool(b)
                                                end
                                                if b.ToolTip == "Urn" and _G.URNCOLLECT == true then
                                                    humanoid:EquipTool(b)
                                                end
                                            end
                                        end
                                    end
                                end
                                local A_1 = false
                                local A_2 = Vector3.new(1779.72302, 1381.90161, 10072.6719)
                                local A_3 = CFrame.new(1779.72302, 1381.90161, 10072.6719, -0.979300082, -0.0265247859, -0.20066826, 1.86264515e-09, 0.991376758, -0.131042436, 0.202413723, -0.128329873, -0.970855355)
                                local Event = game:GetService("ReplicatedStorage").RemoteEvents.BladeCombatRemote
                                Event:FireServer(A_1, A_2, A_3)
                                local nigga = game.Players.LocalPlayer.Name
                                pcall(function()
                                    if game.Workspace:FindFirstChild(nigga) then
                                        if game.Players.LocalPlayer.Character.Humanoid.Health < 1 then
                                            repeat wait() until game.Players.LocalPlayer.Character.Humanoid.Health > 1 end
                                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                                        local Time
                                        game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,Vector3.new(v.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,v.HumanoidRootPart.Position.Z)) * CFrame.new(0,2,10)
                                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude > 1000 then Time = .5 elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude < 500  then Time = .02 else  Time = .27 end
                                        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Time,Enum.EasingStyle.Linear,Enum.EasingDirection.In),{CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2)}):Play()
                                    end
                                end)
                            end
                        until v.Humanoid.Health < 0.01 or AutoFarm == false 
                    end
                end
            end
            if NPCNUMBER ~= 2 then 
            NPCNUMBER = NPCNUMBER + 1
            elseif NPCNUMBER == 2 then
            NPCNUMBER = 1
            end
        end
    else
        Target = nil
        AutoFarm = false
    end
end)

local tpstuff = lib:addPage("Teleports", 5012544693)
local tpmyass = tpstuff:addSection("Teleports")

tpmyass:addDropdown("NPCS", {"Kaji", "Laji", "flamingo kaji", "MlgSteakStyle", "Naa_boom", "pilgrism", "Aito", "Reaiah_1234", "Comedy", "Kelvingts", "Thesalehm121", "Sinovex", "Revonai", "blackstar6991", "Reaiah", "PyrusPlayer", "HerbalGibbon13", "Box", "Snow"}, function(text)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.NPCS[text].HumanoidRootPart.CFrame
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
