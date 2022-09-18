local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("RIPPER HUB | Ninja legend")

local serv = win:Server("Main", "")

local tgls = serv:Channel("Auto Farm")

tgls:Toggle("Auto-Farm",false, function(valua)
_G.L = valua
while _G.L do wait()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(76.6953735, 87068.8281, 115.545387, -0.973717213, 1.59737709e-07, 0.227760419, 1.58295663e-07, 1, -2.45982203e-08, -0.227760419, 1.21017765e-08, -0.973717213)

local args = {
    [1] = "swingKatana"
}

game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))

    end

end)

tgls:Seperator()

tgls:Toggle("Auto-Farm Chi",false, function(value)
_G.Farm = value
while _G.Farm do wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(241.64975, 89.7980499, -272.28241, -0.914100468, 1.01757216e-07, 0.405487806, 9.44379934e-08, 1, -3.80563954e-08, -0.405487806, 3.50608742e-09, -0.914100468)
    end
end)

tgls:Button("Buy sword", function()
local args = {
    [1] = "buyAllSwords",
    [2] = "Inner Peace Island"
}

game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))

    
end)

tgls:Seperator()

tgls:Button("Buy Belts", function()
local args = {
    [1] = "buyAllBelts",
    [2] = "Inner Peace Island"
}

game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))

    
end)

local btns = serv:Channel("Teleport")

btns:Button("island 1", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(26.9946918, 766.237366, -114.43486, 1.4201349e-13, 1.09442642e-08, -1, -4.47675959e-08, 1, 1.09442642e-08, 1, 4.47675959e-08, 1.42503441e-13)
end)

btns:Button("island 2", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(208.402084, 2013.80713, 259.759705, -0.0523980781, 6.97946803e-08, -0.998626292, -3.54985268e-08, 1, 7.17533055e-08, 0.998626292, 3.92094996e-08, -0.0523980781)
end)

btns:Button("island 3", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(160.416855, 4047.34668, 16.9444561, -0.841070771, -4.19579003e-08, 0.540925086, 6.54041754e-09, 1, 8.7736467e-08, -0.540925086, 7.73304478e-08, -0.841070771)
end)

btns:Button("island 4", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.732849, 5656.9585, 75.5065765, 0.965529203, -1.8295264e-08, 0.260294795, 6.98211267e-09, 1, 4.43874804e-08, -0.260294795, -4.10400034e-08, 0.965529203)
end)

btns:Button("island 5", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.001358, 9284.95703, 77.8342514, 0.920216799, 7.95516044e-08, 0.391409099, -4.33403038e-08, 1, -1.01349549e-07, -0.391409099, 7.6299763e-08, 0.920216799)
end)

btns:Button("island 6", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.842865, 13679.8105, 75.7966385, 0.890908659, -2.20882033e-08, 0.454182565, -1.77650836e-08, 1, 8.34802449e-08, -0.454182565, -8.24418649e-08, 0.890908659)
end)

btns:Button("island 7", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.785065, 17686.1016, 81.1545181, 0.925652921, -1.97412309e-08, 0.378373712, 1.40201273e-09, 1, 4.87440168e-08, -0.378373712, -4.45895552e-08, 0.925652921)
end)

btns:Button("island 8", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.897308, 24069.7949, 80.8526535, 0.958858311, -1.02625171e-08, 0.283885151, 1.24473027e-08, 1, -5.89210813e-09, -0.283885151, 9.18330123e-09, 0.958858311)
end)

btns:Button("island 9", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.181259, 28256.0684, 74.8756027, 0.900897026, -1.51208912e-08, 0.434032887, -2.32932464e-08, 1, 8.31865705e-08, -0.434032887, -8.50525694e-08, 0.900897026)
end)

btns:Button("island 10", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140.944672, 33206.7617, 69.8853302, 0.932483971, -3.12105684e-08, 0.361211389, -2.82759727e-09, 1, 9.37048483e-08, -0.361211389, -8.83996307e-08, 0.932483971)
end)

btns:Button("island 11", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.752197, 39317.3398, 69.9268723, 0.917261422, 4.34742127e-08, 0.398285717, 3.72115012e-11, 1, -1.09239032e-07, -0.398285717, 1.00215573e-07, 0.917261422)
end)

btns:Button("island 12", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.055847, 46010.3281, 75.8047943, 0.955559075, 7.78173082e-09, 0.294799656, -3.45417952e-08, 1, 8.55665689e-08, -0.294799656, -9.19468164e-08, 0.955559075)
end)

btns:Button("island 13", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(142.321579, 52607.5352, 72.4584122, 0.919112206, -5.67106042e-08, 0.393995881, 1.11545209e-08, 1, 1.17915818e-07, -0.393995881, -1.03983034e-07, 0.919112206)
end)

btns:Button("island 14", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.737076, 59594.4492, 76.652977, 0.915408671, 6.14137434e-08, 0.402525723, -3.15136504e-08, 1, -8.09038383e-08, -0.402525723, 6.13750188e-08, 0.915408671)
end)

btns:Button("island 15", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.463287, 66668.9609, 76.4970169, 0.925702035, -1.63930416e-08, 0.37825349, 3.12353837e-10, 1, 4.25743423e-08, -0.37825349, -3.92930097e-08, 0.925702035)
end)

btns:Button("island 16", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.385056, 70270.9297, 78.9967575, 0.890855968, -2.49020307e-08, 0.45428589, 6.21963423e-08, 1, -6.715144e-08, -0.45428589, 8.80771864e-08, 0.890855968)
end)

btns:Button("island 17", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(142.137421, 74442.625, 70.4633789, 0.918999612, 5.02086834e-08, 0.39425841, -2.20045902e-08, 1, -7.60579155e-08, -0.39425841, 6.12216979e-08, 0.918999612)
end)

btns:Button("island 18", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.380707, 79746.7734, 78.1442184, 0.919043243, -1.92224423e-08, 0.394156665, 3.99607236e-09, 1, 3.94510096e-08, -0.394156665, -3.46821061e-08, 0.919043243)
end)

btns:Button("island 19", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(142.170563, 83198.7578, 71.1258163, 0.908403158, 2.38254056e-08, 0.418095291, 1.98403463e-08, 1, -1.00093061e-07, -0.418095291, 9.922001e-08, 0.908403158)
end)

btns:Button("island 20", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.29892, 87050.8594, 80.1451645, 0.870605767, -3.4884458e-08, 0.491981328, 1.3367315e-09, 1, 6.85405936e-08, -0.491981328, -5.90141873e-08, 0.870605767)
end)

local sldrs = serv:Channel("Misc")

local sldrwalk = sldrs:Slider("WalkSpeed", 0, 250, 16, function(value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)


sldrs:Button("Change to Normal", function()
sldrwalk:Change(16)
end)

local sldrjump = sldrs:Slider("Jumppower", 0, 1000, 50, function(value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

sldrs:Button("Change to Normal", function()
sldrjump:Change(50)
end)

sldrs:Toggle("Noclip",false, function(value)
     shared.NoClip = value
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
end)
