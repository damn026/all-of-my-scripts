
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Made by aditya#8199") -- Creates the window

local b = w:CreateFolder("Farming") -- Creates the folder(U will put here your buttons,etc)

local c = w:CreateFolder("Teleporters")

local d = w:CreateFolder("Social links")

local worldsfolder = game:GetService("Workspace").WORLDS

d:Label("aditya#8199",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

setclipboard("https://discord.gg/ZgZvPdjFH")

d:Label("https://discord.gg/ZgZvPdjFHF --COPIED TO CLIPBOARD",{
    TextSize = 15; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

getgenv().nukebuyer = false
getgenv().clickingenabled = false
getgenv().autorebirth = false

    b:Toggle("Clicks",function(bool)
           getgenv().clickingenabled = bool
            print(clickingenabled)
            clickerez()
    end)

    b:Toggle("Auto Nuke Buyer",function(bool)
        getgenv().nukebuyer = bool
         print(nukebuyer)
         nukebuyer()
 end)


    c:Dropdown("Worlds",{"First world","Second world","Third world","Fourth world"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
        print(mob)
        if mob == "First world" then
            game.Players.LocalPlayer.Character:PivotTo(workspace.TeleportPart.CFrame)
    elseif mob == "Second world" then
            game.Players.LocalPlayer.Character:PivotTo(workspace.WORLDS[2].Destination.CFrame)
        elseif mob == "Third world" then
            game.Players.LocalPlayer.Character:PivotTo(workspace.WORLDS[3].Destination.CFrame)
        elseif mob == "Fourth world" then
            game.Players.LocalPlayer.Character:PivotTo(workspace.WORLDS[4].Destination.CFrame)
        end
    end)

    b:Button("Spawn",function()
        game.Players.LocalPlayer.Character:PivotTo(workspace.TeleportPart.CFrame)
    end)



b:DestroyGui()




function clickerez()
spawn(function()

            while getgenv().clickingenabled == true do
                wait(0.5)

        local args = {
            [1] = "ExtraDmgButton"
        }

        game:GetService("ReplicatedStorage").Communication.RE:FireServer(unpack(args))
        print("done")
        end
    end)
end

function nukebuyer()
    spawn(function()
    
                while getgenv().autorebirth == true do
                    wait(1)


local args = {
    [1] = "CamShop",
    [2] = "BuyItem",
    [3] = "Nukes",
    [4] = 2
}


game:GetService("ReplicatedStorage").Communication.RE:FireServer(unpack(args))

print("bought nuke if money")
         
            print("done")
            end
        end)
    end
    





--[[
How to refresh a dropdown:
1)Create the dropdown and save it in a variable
local yourvariable = b:Dropdown("Hi",yourtable,function(a)
    print(a)
end)
2)Refresh it using the function
yourvariable:Refresh(yourtable)
How to refresh a label:
1)Create your label and save it in a variable
local yourvariable = b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})
2)Refresh it using the function
yourvariable:Refresh("Hello") It will only change the text ofc
]]

wait(1)
clickerez()
