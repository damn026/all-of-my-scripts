--loaded

print("loading in")

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

getgenv().autofill = false
getgenv().autoclean = false
local plr = game.Players.LocalPlayer
local plot = nil
wait(1)

local plotname = plr.Plot.Value.Name
local plot = workspace.PLOTS[plotname]
print(plot)


local w = library:CreateWindow("My prison") -- Creates the window

local b = w:CreateFolder("Main") -- Creates the folder(U will put here your buttons,etc)

local c = w:CreateFolder("Local")

local d = w:CreateFolder("Credits")
--FUNCTIONS

function autoFillFunc()
    spawn(function()
        if autofill == true then
            while autofill do
                wait(1)
                local human = plr.Character:FindFirstChild("HumanoidRootPart")
                for i, v in pairs(plot.Tunnels:GetChildren()) do
                    wait(1)
                    if autofill == false then break end
                    if  v.Name == "Tunnel1" or v.Name == "Tunnel2" or v.Name == "Tunnel3" then
                        if human then
                            human.CFrame = v.DustPart.CFrame
                            wait(0.1)
                            fireproximityprompt(v.ProximityPrompt)
                            print("Proximity fired")
                        end
                    end
                end
            end
        end
    end)
end



function autoTrashCleanFunc()
    spawn(function()
        if autoclean then
            local human = plr.Character:FindFirstChild("HumanoidRootPart")
            for i, v in pairs(plot.Garbage:GetChildren()) do
                wait(1)
                if human then
                    if autoclean == false then break end
                    if v.Name == "PlateTrash" or "SodaTrash" then
                        human.CFrame = v.Part.CFrame
                        wait(0.1)
                        fireproximityprompt(v.ProximityPrompt)
                    end
                end
            end
        end
    end)
end



function autoArrestFunc()
    spawn(function()
        
    end)
end




--TOGGLES
b:Toggle("Auto fill",function(bool)
    autofill = true
    autoFillFunc()
end)

b:Toggle("Auto clean",function(bool)
    autoclean = true
    autoTrashCleanFunc()
end)

b:Button("Catch NPC, (BE IN A CITY)",function()
    print("Catching..")
    wait(1)
    for i=1, 100 do
        wait(0.2)
        local args = {
            [1] = i,
            [2] = "PromptTriggered"
        }
            game:GetService("ReplicatedStorage").Remote.NPC.Interact:FireServer(unpack(args))
    end
end)

c:Button("INF JUMP",function()
    print("ACTIVATED")
    plr = game.Players.LocalPlayer
    mouse = plr:GetMouse()
    mouse.KeyDown:connect(function(key)
            if key == " " then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
            wait()
        end
    end)
end)

--setclipboard()

d:Button("copy discord",function()
    --setclipboard(gg/ZgZvPdjFHF)
end)
