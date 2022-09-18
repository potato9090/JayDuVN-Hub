function TP(P)
    Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 10 then
        Speed = 50
    elseif Distance < 170 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        Speed = 50
    elseif Distance < 1000 then
        Speed = 50
    elseif Distance >= 1000 then
        Speed = 50
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P}
    ):Play()
end

spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
		  	if _G.Auto_Farm_Level or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
			 	if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local Noclip = Instance.new("BodyVelocity")
					Noclip.Name = "BodyClip"
					Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					Noclip.MaxForce = Vector3.new(100000,100000,100000)
					Noclip.Velocity = Vector3.new(0,0,0)
			 	end
		  	else	
			 	if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			 	end
		  	end
		end)
	end)
end)

spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if _G.Auto_Farm_Level or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false    
					end
				end
			end
		end)
	end)
end)

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'RIPPER Hub',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'), 
    Player = Window:AddTab('Player'), 
	['UI Settings'] = Window:AddTab('UI Settings'),
}

ThemeManager:SetLibrary(Library)

ThemeManager:ApplyToTab(Tabs['UI Settings'])

local MainTab = Tabs.Main:AddLeftTabbox()

local MainSection = MainTab:AddTab('Main')

ItemList = {}
for i,v in pairs(game:GetService("Workspace").Loot:GetChildren()) do  
	table.insert(ItemList ,v.Name)
end

local Select_ItemName = MainSection:AddDropdown('Select_ItemName', {
    Values = ItemList,
    Default = 0,
    Multi = false,
    Text = 'Select Mode Farm',
})

Options.Select_ItemName:OnChanged(function()
    _G.Select_ItemName = Options.Select_ItemName.Value
end)

MainSection:AddButton('Refresh Item', function()
	table.clear(ItemList)
    for i,v in pairs(game:GetService("Workspace").Loot:GetChildren()) do  
        table.insert(ItemList ,v.Name)
    end
	Select_ItemName:SetValues(ItemList)
end)

MainSection:AddToggle('Auto_Farm_Level', {
    Text = 'Auto Farm Level',
    Default = false,
})

Toggles.Auto_Farm_Level:OnChanged(function()
    _G.Auto_Farm_Level = Toggles.Auto_Farm_Level.Value
end)

spawn(function()
    while wait() do
        if _G.Auto_Farm_Level then
            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Farm_Level then
            pcall(function()
                repeat wait()
                    TP(game:GetService("Workspace").Loot[_G.Select_ItemName].Main.CFrame)
                until (game:GetService("Workspace").Loot[_G.Select_ItemName].Main.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
            end)
        end
    end
end)
