local lib

local status, res = pcall(function()
	lib = require('./lib')
end)
if not status then
	lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/uasaltid/UI-library/refs/heads/main/main.lua"))()
end

local freecamEnabled = false

function freecam () -- Freecam script from https://devforum.roblox.com/t/how-to-make-an-easy-freecam-script-mobile-support/1972016
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
	local cam = workspace.CurrentCamera
	local UIS = game:GetService("UserInputService")
	local RS = game:GetService("RunService")
	local onMobile = not UIS.KeyboardEnabled
	local keysDown = {}
	local rotating = false

	if not game:IsLoaded() then game.Loaded:Wait() end

	cam.CameraType = Enum.CameraType.Scriptable

	local speed = 5
	local sens = .3

	speed /= 10
	if onMobile then sens*=2 end

	local function renderStepped()
		if not freecamEnabled then return end
		if rotating then
			local delta = UIS:GetMouseDelta()
			local cf = cam.CFrame
			local yAngle = cf:ToEulerAngles(Enum.RotationOrder.YZX)
			local newAmount = math.deg(yAngle)+delta.Y
			if newAmount > 65 or newAmount < -65 then
				if not (yAngle<0 and delta.Y<0) and not (yAngle>0 and delta.Y>0) then
					delta = Vector2.new(delta.X,0)
				end 
			end
			cf *= CFrame.Angles(-math.rad(delta.Y),0,0)
			cf = CFrame.Angles(0,-math.rad(delta.X),0) * (cf - cf.Position) + cf.Position
			cf = CFrame.lookAt(cf.Position, cf.Position + cf.LookVector)
			if delta ~= Vector2.new(0,0) then cam.CFrame = cam.CFrame:Lerp(cf,sens) end
			UIS.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
		else
			UIS.MouseBehavior = Enum.MouseBehavior.Default
		end

		if keysDown["Enum.KeyCode.W"] then
			cam.CFrame *= CFrame.new(Vector3.new(0,0,-speed))
		end
		if keysDown["Enum.KeyCode.A"] then
			cam.CFrame *= CFrame.new(Vector3.new(-speed,0,0))
		end
		if keysDown["Enum.KeyCode.S"] then
			cam.CFrame *= CFrame.new(Vector3.new(0,0,speed))
		end
		if keysDown["Enum.KeyCode.D"] then
			cam.CFrame *= CFrame.new(Vector3.new(speed,0,0))
		end
	end

	RS.RenderStepped:Connect(renderStepped)

	local validKeys = {"Enum.KeyCode.W","Enum.KeyCode.A","Enum.KeyCode.S","Enum.KeyCode.D"}

	UIS.InputBegan:Connect(function(Input)
		for i, key in pairs(validKeys) do
			if key == tostring(Input.KeyCode) then
				keysDown[key] = true
			end
		end
		if Input.UserInputType == Enum.UserInputType.MouseButton2 or (Input.UserInputType == Enum.UserInputType.Touch and UIS:GetMouseLocation().X>(cam.ViewportSize.X/2)) then
			rotating = true
		end
		if Input.UserInputType == Enum.UserInputType.Touch then
			if Input.Position.X < cam.ViewportSize.X/2 then
				touchPos = Input.Position
			end
		end
	end)

	UIS.InputEnded:Connect(function(Input)
		for key, v in pairs(keysDown) do
			if key == tostring(Input.KeyCode) then
				keysDown[key] = false
			end
		end
		if Input.UserInputType == Enum.UserInputType.MouseButton2 or (Input.UserInputType == Enum.UserInputType.Touch and UIS:GetMouseLocation().X>(cam.ViewportSize.X/2)) then
			rotating = false
		end
		if Input.UserInputType == Enum.UserInputType.Touch and touchPos then
			if Input.Position.X < cam.ViewportSize.X/2 then
				touchPos = nil
				keysDown["Enum.KeyCode.W"] = false
				keysDown["Enum.KeyCode.A"] = false
				keysDown["Enum.KeyCode.S"] = false
				keysDown["Enum.KeyCode.D"] = false
			end
		end
	end)

	UIS.TouchMoved:Connect(function(input)
		if touchPos then
			if input.Position.X < cam.ViewportSize.X/2 then
				if input.Position.Y < touchPos.Y then
					keysDown["Enum.KeyCode.W"] = true
					keysDown["Enum.KeyCode.S"] = false
				else
					keysDown["Enum.KeyCode.W"] = false
					keysDown["Enum.KeyCode.S"] = true
				end
				if input.Position.X < (touchPos.X-15) then
					keysDown["Enum.KeyCode.A"] = true
					keysDown["Enum.KeyCode.D"] = false
				elseif input.Position.X > (touchPos.X+15) then
					keysDown["Enum.KeyCode.A"] = false
					keysDown["Enum.KeyCode.D"] = true
				else
					keysDown["Enum.KeyCode.A"] = false
					keysDown["Enum.KeyCode.D"] = false
				end
			end
		end
	end)
end

function camera()
	local contents = lib.root.Main.Content
	local block1 = lib.create:block()
	local plr = game.Players.LocalPlayer
	lib.create:label(block1, "Freecam")
	lib.create:toggle(block1, false, function (state)
		if not state then
			local camera = workspace.CurrentCamera
			camera.CameraType = Enum.CameraType.Custom
			camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.StarterPlayer.CharacterWalkSpeed
			freecamEnabled = false
			return
		end
		freecamEnabled = true
		freecam()
	end)

	local block2 = lib.create:block()
	lib.create:label(block2, "Заблокировать мышку")
	lib.create:toggle(block2, plr.DevEnableMouseLock, function (state) plr.DevEnableMouseLock = state end)
	
	local block3 = lib.create:block()
	lib.create:label(block3, "Закрепить камеру на")
	lib.create:dropbox(block3, {"Голова", "Тело" }, nil, function (i)
		local camera = workspace.CurrentCamera
		if i == 1 then
			camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
		elseif i == 2 then
			camera.CameraSubject = game.Players.LocalPlayer.Character.HumanoidRootPart
		end
	end)
	
	local block4 = lib.create:block()
	lib.create:label(block4, "Расстояние зума")
	lib.create:range(block4, 0.5, 512, math.floor(plr.CameraMaxZoomDistance), function (v)
		plr.CameraMaxZoomDistance = v
	end)
end

function world()
	local block1 = lib.create:block()
	lib.create:label(block1, "Гравитация")
	lib.create:range(block1, 0, workspace.Gravity + 100, workspace.Gravity, function(v)
		workspace.Gravity = v
	end)
end

local function bodymodify() -- название функции таб потому что ты ее указал в 173 строк
	local player = game.Players.LocalPlayer
	local players = game:GetService("Players")
	local block = lib.create:block() -- блок ничего не принимает в себя
	lib.create:label(block, "Скорость") -- что бы создать текст рядом с ним
	lib.create:input(block, "", math.floor(player.Character.Humanoid.WalkSpeed), function (v)
		player.Character.Humanoid.WalkSpeed = v
	end)
	-- эт я щас свое сделаю + еще один тебе пример
	local block2 = lib.create:block()
	lib.create:input(block2, "Высота прыжка", math.floor(player.Character.Humanoid.JumpHeight), function (val)
		player.Character.Humanoid.JumpHeight = val -- ставим высоту прыжка
	end)
	local block3 = lib.create:block()
	lib.create:label(block3, "Размер головы")
	lib.create:range(block3, 1, 30, nil, function (v)
		for _, plr in ipairs(players:GetChildren()) do
			if plr.UserId == player.UserId then continue end
			plr.Character.Head.Size = Vector3.new(v, v, v)
			plr.Character.Head.Transparency = 0.3
		end
	end)
	local block4 = lib.create:block()
	lib.create:label(block4, "Подстветить игроков")
	lib.create:toggle(block4, false, function (state)
		if state then
			for _, plr in ipairs(players:GetChildren()) do
				if plr.UserId == player.UserId then continue end
				if plr.Character:FindFirstChild("Highlight") then continue end
				local highlight = Instance.new("Highlight")
				highlight.FillColor = Color3.fromRGB(0, 175, 0)
				highlight.OutlineColor = Color3.fromRGB(0, 175, 0)
				if game.PlaceId == 142823291 then
					local flag = false
					for _, item in ipairs(plr.Backpack:GetChildren()) do
						if item.ClassName == 'Tool' then
							if item.Name == "Gun" then
								highlight.FillColor = Color3.fromRGB(0, 85, 255)
								highlight.OutlineColor = Color3.fromRGB(0, 85, 255)
							elseif item.Name == 'Knife' then
								highlight.FillColor = Color3.fromRGB(170, 0, 0)
								highlight.OutlineColor = Color3.fromRGB(170, 0, 0)
							end
						end
						flag = true
					end
					if flag then
						for _, item in ipairs(plr.Character:GetChildren()) do
							if item.ClassName == 'Tool' then
								if item.Name == "Gun" then
									highlight.FillColor = Color3.fromRGB(0, 85, 255)
									highlight.OutlineColor = Color3.fromRGB(0, 85, 255)
								elseif item.Name == 'Knife' then
									highlight.FillColor = Color3.fromRGB(170, 0, 0)
									highlight.OutlineColor = Color3.fromRGB(170, 0, 0)
								end
							end
						end
					end
					plr.Backpack.ChildAdded:Connect(function (item)
						if item.ClassName ~= 'Tool' then return end
						if item.Name == "Gun" then
							highlight.FillColor = Color3.fromRGB(0, 85, 255)
							highlight.OutlineColor = Color3.fromRGB(0, 85, 255)
						elseif item.Name == 'Knife' then
							highlight.FillColor = Color3.fromRGB(170, 0, 0)
							highlight.OutlineColor = Color3.fromRGB(170, 0, 0)
						end
					end)
				end
				highlight.Parent = plr.Character
			end
		else
			for _, plr in ipairs(players:GetChildren()) do
				if not plr.Character:FindFirstChild("Highlight") then continue end
				plr.Character.Highlight:Destroy()
			end
		end
	end)
	
end

local function indus()
	local smoke = ""
	local block1 = lib.create:block()
	lib.create:label(block1, "Отключить туман")
	lib.create:toggle(block1, false, function(state)
		if state then
			if not smoke then smoke = game.Lighting.Polution:Clone() end
			if game.Lighting.Polution then
				game.Lighting.Polution:Destroy()
			end
		else
			if smoke then
				smoke:Clone().Parent = game.Lighting
			end
		end
	end)
	
	local block2 = lib.create:block()
	lib.create:label(block2, "Всегда светло")
	lib.create:toggle(block2, false, function (state)
		game.Lighting.OutdoorAmbient = Color3.fromRGB(172, 160, 156)
		game.Lighting.ClockTime = 14.5
		game.Lighting:GetPropertyChangedSignal('ClockTime'):Connect(function()
			game.Lighting.ClockTime = 14.5
		end)
		game.Lighting:GetPropertyChangedSignal('OutdoorAmbient'):Connect(function()
			game.Lighting.OutdoorAmbient = Color3.fromRGB(172, 160, 156)
		end)
	end)
	local block3 = lib.create:block()
	lib.create:label(block3, "Отключить звук высого загрязнения")
	lib.create:toggle(block3, false, function (state)
		for _, tor in ipairs(workspace.Ambiences.HighPollution:getChildren()) do
			tor.Volume = 0
		end
	end)
end

lib:init("saline v1") -- Запуск

lib.create:tab("Камера", camera)
lib.create:tab("Мир", world)
lib.create:tab("Модификатор тела", bodymodify)
if game.PlaceId == 9312740628 then
	lib.create:tab("Industrialist", indus)
end
--Discord  Sh1z0v
--Discord  uasalt
--Telegram uasalt
--Group https://discord.gg/ttQMyKvKt6  
