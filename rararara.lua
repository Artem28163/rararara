local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Troll", "RJTheme7")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Character")

Section:NewTextBox("Speed", "Super Speed", function(txt)

	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt

end)

Section:NewTextBox("Jump", "Super Jump", function(txt)

	game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt

end)

Section:NewButton("BTools", "Gives You BTools", function()

    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-BTOOLS-8904", true))()

end)

local Section = Tab:NewSection("Guis")

Section:NewButton("Inf Jump", "ButtonInfo", function()

    

end)

Section:NewButton("Fly", "Fly Gui", function()

    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()

end)

Section:NewButton("VFly", "You can fly cars", function()

    loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()

end)

local Tab = Window:NewTab("Scripts")

local Section = Tab:NewSection("Fling Things And People")

Section:NewButton("Super Power", "You Throw Things Far Away", function()

    local userinputs = game:GetService("UserInputService")

local action = game:GetService("ContextActionService")

local w = game:GetService("Workspace")

local r = game:GetService("RunService")

local d = game:GetService("Debris")

local strength = 850

 

w.ChildAdded:Connect(function(model)

    if model.Name == "GrabParts" then

        local part_to_impulse = model["GrabPart"]["WeldConstraint"].Part1

 

        if part_to_impulse then

            print("Part found!")

 

            local inputObj

            local velocityObj = Instance.new("BodyVelocity", part_to_impulse)

            local c1, c2, c3

 

            velocityObj.MaxForce = Vector3.new(0,0,0)

 

            while inputObj == nil and model.Parent do

                for _, button in pairs(game.Players.LocalPlayer.PlayerGui["ContextActionGui"]:GetDescendants()) do

                    if button:IsA("ImageLabel") then

                        if button.Image == "http://www.roblox.com/asset/?id=9603678090" then

                            inputObj = button.Parent

                            print(inputObj)

                        end

                    end

                end

				r.Heartbeat:Wait()

            end

            

			if inputObj then

				c1 = inputObj.MouseButton1Up:Connect(function()

					print("Launched!")

					velocityObj.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

					velocityObj.Velocity = workspace.CurrentCamera.CFrame.lookVector * strength

            	end)

 

            	c2 = inputObj.MouseButton1Down:Connect(function()

              	  print("Launched!")

              	  velocityObj.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

              	  velocityObj.Velocity = workspace.CurrentCamera.CFrame.lookVector * strength

            	end)

			end

            

            

            c3 = model:GetPropertyChangedSignal("Parent"):Connect(function()

                if not model.Parent then

					c3:Disconnect()

                    d:AddItem(velocityObj, 1)

                    if c1 then

                        c1:Disconnect()

                        if c2 then

                            c2:Disconnect()

                        end

                    end

                end

            end)

        end

    end

end)

end)

Section:NewButton("Super Speed", "You Are Faster", function()

    --[[ Variables ]]

local PS = game:GetService("Players")

local LocalPlayer = PS.LocalPlayer

local GameMt = getrawmetatable(game)

setreadonly(GameMt, false)

local OldIndex = GameMt.__index

GameMt.__index = function(Self, Key)

if not checkcaller() and Self then

       if Key == "WalkSpeed" then

   return 16

       elseif Key == "JumpPower" then

           return 24

       end

end

return OldIndex(Self, Key)

end

LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = 28

function Int()

   for i,v in pairs(debug.getregistry()) do

       if type(v) == "function" and not is_synapse_function(v) then

           local Values = debug.getupvalues(v)

           for a,b in pairs(Values) do

               if type(b) == "number" and b == 20 then

                   debug.setupvalue(v, a, 30)

               end

           end

           local Constants = debug.getconstants(v)

           for Number,Value in pairs(Constants) do

               if type(Value) == "number" then

                   if Value == 100 then

                       debug.setconstant(v, Number, 1000)

                       print("Set new Magnitude limit!")

                   end

                   if Value == 750 then

                       debug.setconstant(v, Number, 1350)

                       print("Set new throw limit!")

                   end

               end

           end

       end

   end

   spawn(function()

       while wait() do

           if LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then

               LocalPlayer.Character:FindFirstChildWhichIsA("Гуманоид").JumpPower = 24

           LocalPlayer.Character:FindFirstChildWhichIsA("Гуманоид").WalkSpeed = 28

           elseif not LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then

               перерыв

           конец

       конец

   конец)

конец

Целое()

LocalPlayer.CharacterAdded: Connect (функция ()

   повторять ожидание() до тех пор, пока LocalPlayer.Character

   повторять ожидание() до тех пор, пока LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")

   повторять ожидание() до тех пор, пока LocalPlayer.Character:FindFirstChild("GrabbingScript")

   Целое()

конец)

print("Более широкий охват и более высокая скорость загрузки!")

конец)

local Section = Tab:NewSection("Rumble Quest")

Раздел: NewButton("Rumble Quest Aura", "Kill Aura On Gui", function()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/anisnouacer1/My-Roblox-Scripts/main/Rumble%20Quest.lua"))()()

конец)

Раздел: NewButton("Графический интерфейс Auto Farm", "Графический интерфейс", функция()

    локальная библиотека = loadstring(game:HttpGet("https://pastebin.com/raw/5KtmRcCe",true))()

конец)

local Section = Tab:NewSection("Заразительная улыбка")

Раздел: NewButton("Nicuse", "Gui", функция()

    loadstring(game:HttpGet("https://scriptblox.com/raw/SPRING-Infectious-Smile-GUI-5231", true))()

конец)

локальная вкладка = Окно: Новая вкладка («Разное»)

локальный раздел = вкладка: Новый раздел («Разное»)

Раздел: NewButton("Бесконечная доходность", "IY", функция()

    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

конец)

Раздел: NewButton("Dark Dex", "Интерфейс Dark Dex", функция()

    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Dark-Dex-V3-Secured-(Bypass-Dex-Detections)-4163", true))()

конец)

Раздел: NewButton("Простой V3", "Простой V3 UI", function()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Simple-Scripts/main/Simple%20V3"))()

end)
