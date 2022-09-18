local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("RIPPER HUB", "DarkTheme")

--Auto farm

local Tab = Window:NewTab("Auto farm")
local Section = Tab:NewSection("Auto farm level")

Section:NewToggle("Bandit LV.5+", "ToggleInfo", function(state)
    if state then
_G.FARM = true -- true = ON  /  false = OFF
_G.MON = "Bandit [Lv. 5]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 9 then
 
local args = {
    [1] = "StartQuest",
    [2] = "BanditQuest1",
    [3] = 1
}
 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1062.7824707031, 16.516611099243, 1539.5036621094)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    else
_G.FARM = false -- true = ON  /  false = OFF
_G.MON = "Bandit [Lv. 5]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 9 then
 
local args = {
    [1] = "StartQuest",
    [2] = "BanditQuest1",
    [3] = 1
}
 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1062.7824707031, 16.516611099243, 1539.5036621094)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    end
end)

Section:NewToggle("Monkey LV.14+", "ToggleInfo", function(state)
    if state then
_G.FARM = true -- true = ON  /  false = OFF
_G.MON = "Monkey [Lv. 14]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 20 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "JungleQuest"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)

 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1604.88293, 36.8521347, 149.756989, -0.757929862, 0, 0.652336061, 0, 1, -0, -0.652336061, 0, -0.757929862)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    else
_G.FARM = false -- true = ON  /  false = OFF
_G.MON = "Monkey [Lv. 14]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 20 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "JungleQuest"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)

 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1604.88293, 36.8521347, 149.756989, -0.757929862, 0, 0.652336061, 0, 1, -0, -0.652336061, 0, -0.757929862)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    end
end)

Section:NewToggle("Gorilla LV.20+", "ToggleInfo", function(state)
    if state then
_G.FARM = true -- true = ON  /  false = OFF
_G.MON = "Gorilla [Lv. 20]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 30 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "JungleQuest"
local A_3 = 2
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)



 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1264.77551, 18.6214275, -379.61731, 0.395783216, 4.73717243e-09, -0.918343961, 8.41514591e-08, 1, 4.14255545e-08, 0.918343961, -9.36755242e-08, 0.395783216)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    else
_G.FARM = false -- true = ON  /  false = OFF
_G.MON = "Gorilla [Lv. 20]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 30 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "JungleQuest"
local A_3 = 2
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)


 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1264.77551, 18.6214275, -379.61731, 0.395783216, 4.73717243e-09, -0.918343961, 8.41514591e-08, 1, 4.14255545e-08, 0.918343961, -9.36755242e-08, 0.395783216)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    end
end)

Section:NewToggle("Pirate LV.35+", "ToggleInfo", function(state)
    if state then
_G.FARM = true -- true = ON  /  false = OFF
_G.MON = "Pirate [Lv. 35]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 45 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "BuggyQuest1"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)



 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1204.59485, 4.75204945, 3896.08521, -0.812067151, 5.02315025e-08, 0.583563983, -1.67284124e-08, 1, -1.09355781e-07, -0.583563983, -9.85663391e-08, -0.812067151)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    else
_G.FARM = false -- true = ON  /  false = OFF
_G.MON = "Pirate [Lv. 35]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 3 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 45 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "BuggyQuest1"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)



 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1204.59485, 4.75204945, 3896.08521, -0.812067151, 5.02315025e-08, 0.583563983, -1.67284124e-08, 1, -1.09355781e-07, -0.583563983, -9.85663391e-08, -0.812067151)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    end
end)

Section:NewToggle("Brute LV.45+", "ToggleInfo", function(state)
    if state then
_G.FARM = true -- true = ON  /  false = OFF
_G.MON = "Brute [Lv. 45]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 60 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "BuggyQuest1"
local A_3 = 2
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)



 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1139.92883, 94.1499481, 4318.97363, -0.751381397, -3.62848844e-08, 0.659868121, 1.25651765e-08, 1, 6.92958508e-08, -0.659868121, 6.03589783e-08, -0.751381397)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    else
_G.FARM = false -- true = ON  /  false = OFF
_G.MON = "Brute [Lv. 45]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 60 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "BuggyQuest1"
local A_3 = 2
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)



 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1139.92883, 94.1499481, 4318.97363, -0.751381397, -3.62848844e-08, 0.659868121, 1.25651765e-08, 1, 6.92958508e-08, -0.659868121, 6.03589783e-08, -0.751381397)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    end
end)

Section:NewToggle("Desert bandit Lv.60+", "ToggleInfo", function(state)
    if state then
_G.FARM = true -- true = ON  /  false = OFF
_G.MON = "Desert Bandit [Lv. 60]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 75 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "DesertQuest"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)




 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(897.289917, 6.43846178, 4387.90381, -0.426868528, 0, 0.904313684, 0, 1, -0, -0.904313684, 0, -0.426868528)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    else
_G.FARM = false -- true = ON  /  false = OFF
_G.MON = "Brute [Lv. 45]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 70 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "DesertQuest"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)




 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(897.289917, 6.43846178, 4387.90381, -0.426868528, 0, 0.904313684, 0, 1, -0, -0.904313684, 0, -0.426868528)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    end
end)

Section:NewToggle("Desert Officer LV.75+", "ToggleInfo", function(state)
    if state then
_G.FARM = true -- true = ON  /  false = OFF
_G.MON = "Desert Officer [Lv. 70]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 90 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "DesertQuest"
local A_3 = 2
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)





 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1607.49475, 9.89186764, 4372.38965, 0.554595828, -9.34778512e-08, 0.832119882, 1.60280784e-08, 1, 1.01654521e-07, -0.832119882, -4.30398899e-08, 0.554595828)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    else
_G.FARM = false -- true = ON  /  false = OFF
_G.MON = "Brute [Lv. 45]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 2 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX
 
 
-- =[[ FUNCTION ]]= --
 
 
 
function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end
 
 
function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 70 then
 
-- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local A_1 = "StartQuest"
local A_2 = "DesertQuest"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)




 
    
 
end
 
end
 
 
function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
 
 
function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(100,100,100)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end
 
function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1607.49475, 9.89186764, 4372.38965, 0.554595828, -9.34778512e-08, 0.832119882, 1.60280784e-08, 1, 1.01654521e-07, -0.832119882, -4.30398899e-08, 0.554595828)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)
 
elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
 
 
end
 
 
 
-- =[[ Autofarm ]]= --
 
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
    end
end)

--teleport

local Tab = Window:NewTab("teleport")
local teleportSection = Tab:NewSection("Old world")


teleportSection:NewButton("first spot", "Work now!!!!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(943.186035, 16.516613, 1428.13855, 0.0969425663, -3.66737289e-08, 0.995289981, 4.1082715e-09, 1, 3.64471298e-08, -0.995289981, 5.55642976e-10, 0.0969425663)
end)

teleportSection:NewButton("middle town", "Work now!!!!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-644.306335, 7.85222054, 1564.20251, -0.373329788, -6.24788518e-05, 0.927698672, 0.000117265517, 1, 0.000114538874, -0.927698672, 0.000151547836, -0.373329788)
end)

teleportSection:NewButton("Jungle", "Work now!!!!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1448.88977, 61.851963, -26.6331177, -0.981739461, 0.000366558234, -0.190230042, 0.000321474392, 0.99999994, 0.000267855125, 0.190230101, 0.000201809875, -0.981739461)
end)

teleportSection:NewButton("ice town", "Work now!!!!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1199.67371, 87.272789, -1290.55127, 0.808756173, -9.55856638e-09, -0.588144064, -3.46632945e-08, 1, -6.39175326e-08, 0.588144064, 7.20807094e-08, 0.808756173)
end)

teleportSection:NewButton("Pirate village", "Work now!!!!", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1118.21692, 4.75204945, 3838.23315, -0.969355106, -5.83456128e-08, 0.245663702, -7.58807133e-08, 1, -6.19128571e-08, -0.245663702, -7.86566758e-08, -0.969355106)
end)

teleportSection:NewButton("desert", "Work now!!!!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1058.86938, 6.43846178, 4273.4502, -0.989196897, 2.56643844e-08, 0.146592006, 1.07988384e-07, 1, 5.53626307e-07, -0.146592006, 5.63475794e-07, -0.989196897)
end)

local Tab = Window:NewTab("Auto state")
local Section = Tab:NewSection("Auto state")
Section:NewToggle("melee", "click to use", function(state)
    if state then
_G.LOOP = true
while _G.LOOP do
local A_1 = "AddPoint"
local A_2 = "Melee"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)

    wait()
end

    else
_G.LOOP = false
while _G.LOOP do
local A_1 = "AddPoint"
local A_2 = "Melee"
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Event:InvokeServer(A_1, A_2, A_3)

    wait()
end

    end
end)



local Tab = Window:NewTab("misc")
local Section = Tab:NewSection("misc")
Section:NewToggle("noclip", "click it before use auto farm", function(state)
    if state then
     shared.NoClip = true
      game:GetService('RunService').Stepped:connect(function()
          if shared.NoClip then
              pcall(function() 
                  if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    if shared.NoClip then
                      game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                  end
              end)
          end
      end)  
    else
     shared.NoClip = false
      game:GetService('RunService').Stepped:connect(function()
          if shared.NoClip then
              pcall(function() 
                  if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    if shared.NoClip then
                      game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                  end
              end)
          end
      end)  
    end
end)
