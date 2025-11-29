local lib = loadstring(game:HttpGet("https://gitea.uasalt.org/uasaltid/UI-library/raw/branch/main/main.lua"))()

local freecamEnabled = false
local RunService = game:GetService("RunService")
local state = {}
local antifling = false
local radioallowed = true
local noclip = false
local spinSpeed = {15}
local bricks = {}
local infJump = false
local placeId = {
	MurderMystery = 142823291 
}
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Player = Players.LocalPlayer
local points = {}
local nowe = false
local speeds = 1
local showbombs = false

game:GetService("UserInputService").JumpRequest:Connect(function()
	if infJump then
		game.Players.LocalPlayer.Character.humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)

RunService.Stepped:Connect(function()
	if not antifling then return end
    for _, CoPlayer in pairs(Players:GetChildren()) do
        if CoPlayer ~= Player and CoPlayer.Character then
            for _, Part in pairs(CoPlayer.Character:GetChildren()) do
                if Part.Name == "HumanoidRootPart" then
                    Part.CanCollide = false
                end
            end
        end
    end
 
    for _, Accessory in pairs(workspace:GetChildren()) do
        if Accessory:IsA("Accessory") and Accessory:FindFirstChildWhichIsA("Part") then
            Accessory:FindFirstChildWhichIsA("Part"):Destroy()
        end
    end
end)

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

	local block5 = lib.create:block()
	lib.create:label(block5, "Поле зрения")
	lib.create:range(block5, 60, 90, workspace.CurrentCamera.FieldOfView, function(v)
		workspace.CurrentCamera.FieldOfView = v
	end)
end

function world()
	local block1 = lib.create:block()
	lib.create:label(block1, "Гравитация")
	lib.create:range(block1, 0, workspace.Gravity + 100, workspace.Gravity, function(v)
		workspace.Gravity = v
	end)
end

local gravity = workspace.Gravity
local flingEnabled = false

local function bodymodify() -- название функции таб потому что ты ее указал в 173 строк
	local player = game.Players.LocalPlayer
	local character = player.Character
	local players = game:GetService("Players")
	local block = lib.create:block() -- блок ничего не принимает в себя
	lib.create:label(block, "Скорость") -- что бы создать текст рядом с ним
	local speed = lib.create:input(block, "", math.floor(player.Character.Humanoid.WalkSpeed), function (v)
		player.Character.Humanoid.WalkSpeed = v
	end)
	player.Character.Humanoid:GetPropertyChangedSignal('WalkSpeed'):Connect(function()
		speed.change.text(character.Humanoid.WalkSpeed)
	end)
	-- эт я щас свое сделаю + еще один тебе пример
	local block2 = lib.create:block()
	lib.create:label(block2, "Высота прыжка")
	local jumpHeight = lib.create:input(block2, "", math.floor(player.Character.Humanoid.JumpHeight), function (val)
		player.Character.Humanoid.JumpHeight = val -- ставим высоту прыжка
	end)
	player.Character.Humanoid:GetPropertyChangedSignal('JumpHeight'):Connect(function()
		jumpHeight.change.text(character.Humanoid.JumpHeight)
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
	local zerogravity
	local block5 = lib.create:block()
	lib.create:label(block5, "Нулевая гравитация")
	local zerogravitytoggle = lib.create:toggle(block5, false, function (state)
		if state then
			workspace.Gravity = 0

			local humanoid = player.Character:FindFirstChildWhichIsA("Humanoid")
			humanoid.Sit = true
			task.wait(0.1)
			humanoid.RootPart.CFrame = humanoid.RootPart.CFrame * CFrame.Angles(math.pi * 0.5, 0, 0)
			for _, v in ipairs(humanoid:GetPlayingAnimationTracks()) do
				v:Stop()
			end
		else
			workspace.Gravity = gravity
			zerogravity:Disconnect()
		end
	end)
	zerogravity = game:GetService("UserInputService").JumpRequest:Connect(function()
		workspace.Gravity = gravity
		zerogravitytoggle.change.enabled(false)
	end)
	local block6 = lib.create:block()
	lib.create:label(block6, "Fling")
	lib.create:toggle(block6, false, function (state)
		if state then
			flingEnabled = true
			local function fling()
				local lp = players.LocalPlayer
				local c, hrp, vel, movel = nil, nil, nil, 0.1

				while flingEnabled do
					RunService.Heartbeat:Wait()
					c = lp.Character
					hrp = c and c:FindFirstChild("HumanoidRootPart")

					if hrp then
						vel = hrp.Velocity
						hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
						RunService.RenderStepped:Wait()
						hrp.Velocity = vel
						RunService.Stepped:Wait()
						hrp.Velocity = vel + Vector3.new(0, movel, 0)
						movel = -movel
					end
				end
			end
			local flingThread = coroutine.create(fling)
			coroutine.resume(flingThread)
		else
			flingEnabled = false
		end
	end)
	local block7 = lib.create:block()
	lib.create:label(block7, "Anti-fling")
	lib.create:toggle(block7, antifling, function (state)
		antifling = state
	end)
	local block8 = lib.create:block()
	lib.create:label(block8, "No-clip")
	lib.create:toggle(block8, noclip, function (state)
		local Player = game.Players.LocalPlayer
		local Character = Player.Character or Player.CharacterAdded:Wait()
		noclip = state
		if noclip then
	        RunService.Stepped:Connect(function()
	            if noclip and Character then
	                for _, part in pairs(Character:GetDescendants()) do
	                    if part:IsA("BasePart") then
	                        part.CanCollide = false
	                    end
	                end
	            end
	        end)
	    else
	        for _, part in pairs(Character:GetDescendants()) do
	            if part:IsA("BasePart") then
	                part.CanCollide = true
	            end
	        end
	    end
	end)

	local block9 = lib.create:block()
	lib.create:label(block9, "Вращение")
	lib.create:toggle(block9, false, function (state)
		if state then
			local spin = Instance.new("BodyAngularVelocity")
			spin.Name = "spin"
			spin.MaxTorque = Vector3.new(0, math.huge, 0)
			spin.AngularVelocity = Vector3.new(0, spinSpeed[1], 0)
			spin.Parent = character.HumanoidRootPart
			setmetatable(spinSpeed, {
				__newindex = function(_, key)
					spin.AngularVelocity = Vector3.new(0, key, 0)
				end
			})
		else
			character.HumanoidRootPart.spin:Destroy()
		end
	end)
	lib.create:range(block9, 0, 100, spinSpeed[1], function (v)
		spinSpeed[1] = v
	end)
	local block10 = lib.create:block()
	lib.create:label(block10, "Прозрачные стены")
	lib.create:toggle(block10, false, function (state)
		if state then
			for _, obj in pairs(workspace:GetDescendants()) do
				if obj:IsA("BasePart") and not players:GetPlayerFromCharacter(obj.Parent) then
					table.insert(bricks, {part = obj, old = obj.Transparency})
					obj.Transparency = 0.7
				end
			end
		else
			for _, data in ipairs(bricks) do
				if data.part and data.part.Parent then
					data.part.Transparency = data.old
				end
			end
			table.clear(bricks)
		end
	end)
	local block11 = lib.create:block()
	lib.create:label(block11, "Бесконечный прыжок")
	lib.create:toggle(block11, false, function (state) infJump = state end)

	local block12 = lib.create:block()
	lib.create:range(block12, 1, 50, speeds, function (v)
		speeds = v
		flytoggle.change.enabled(false)
		flytoggle.change.enabled(true)
	end)
	local flytoggle = lib.create:toggle(block12, false, function (state) -- Fly from https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt
		nowe = not state
		local speaker = game:GetService("Players").LocalPlayer

		local chr = game.Players.LocalPlayer.Character
		local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
		if nowe == true then
			nowe = false

			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
			speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
		else 
			nowe = true

			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			local Char = game.Players.LocalPlayer.Character
			local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

			for i,v in next, Hum:GetPlayingAnimationTracks() do
				v:AdjustSpeed(0)
			end
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
			speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		end




		if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
			local plr = game.Players.LocalPlayer
			local torso = plr.Character.Torso
			local flying = true
			local deb = true
			local ctrl = {f = 0, b = 0, l = 0, r = 0}
			local lastctrl = {f = 0, b = 0, l = 0, r = 0}
			local maxspeed = 50
			local speed = 0


			local bg = Instance.new("BodyGyro", torso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = torso.CFrame
			local bv = Instance.new("BodyVelocity", torso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			if nowe == true then
				plr.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				game:GetService("RunService").RenderStepped:Wait()

				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+.5+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-1
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0,0)
				end
				--	game.Players.LocalPlayer.Character.Animate.Disabled = true
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			end
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false
		else
			local plr = game.Players.LocalPlayer
			local UpperTorso = plr.Character.UpperTorso
			local flying = true
			local deb = true
			local ctrl = {f = 0, b = 0, l = 0, r = 0}
			local lastctrl = {f = 0, b = 0, l = 0, r = 0}
			local maxspeed = 50
			local speed = 0


			local bg = Instance.new("BodyGyro", UpperTorso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = UpperTorso.CFrame
			local bv = Instance.new("BodyVelocity", UpperTorso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			if nowe == true then
				plr.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				wait()

				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+.5+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-1
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0,0)
				end

				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			end
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false
		end
	end)
	lib.create:label(block12, "Fly")
end

local function indus()
	local plr = game.Players.LocalPlayer
	local smoke = ""
	local block1 = lib.create:block()
	lib.create:label(block1, "Отключить туман")
	lib.create:toggle(block1, false, function(state)
		if state then
			if not smoke then smoke = game.Lighting.PollutionAtmosphere:Clone() end
			if game.Lighting.PollutionAtmosphere then
				game.Lighting.PollutionAtmosphere:Destroy()
			end
		else
			if smoke then
				smoke.Parent = game.Lighting
				smoke = nil
			end
		end
	end)
	
	local block2 = lib.create:block()
	lib.create:label(block2, "Всегда светло")
	lib.create:toggle(block2, false, function (state)
		game.Lighting.ExposureCompensation = 1
		game.Lighting.ClockTime = 14.5
		game.Lighting:GetPropertyChangedSignal('ClockTime'):Connect(function()
			game.Lighting.ClockTime = 14.5
		end)
		game.Lighting:GetPropertyChangedSignal('ExposureCompensation'):Connect(function()
			game.Lighting.ExposureCompensation = 1
		end)
	end)
	local block3 = lib.create:block()
	lib.create:label(block3, "Отключить звук загрязнения")
	lib.create:toggle(block3, false, function (state)
		for _, tor in ipairs(workspace.Ambiences.HighPollution:getChildren()) do
			tor.Volume = 0
		end
		for _, tor in ipairs(workspace.Ambiences.LowPollution:getChildren()) do
			tor.Volume = 0
		end
	end)
end

local function other()
	local block1 = lib.create:block()
	lib.create:label(block1, "Телепорт к ")
	local box = {"[Выберите]"}
	for _, player in ipairs(Players:GetChildren()) do
		table.insert(box, player.Name)
	end
	for _, point in ipairs(points) do
		table.insert(box, math.round(point.X) .. " " .. math.round(point.Y) .. " " .. math.round(point.Z))
	end
	lib.create:dropbox(block1, box, 1, function (_, name)
		if name == box[1] then return end
		Player.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
		if not Players:FindFirstChild(name) then
			local x, y, z = name:match("(%S+)%s+(%S+)%s+(%S+)")
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(tonumber(x), tonumber(y), tonumber(z))) * CFrame.Angles(
				math.rad(Player.Character.HumanoidRootPart.Orientation.X),
				math.rad(Player.Character.HumanoidRootPart.Orientation.Y),
				math.rad(Player.Character.HumanoidRootPart.Orientation.Z)
			)
			return
		end
		Player.Character.HumanoidRootPart.CFrame = Players:FindFirstChild(name).Character.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0)
	end)

	local block2 = lib.create:block()
	lib.create:button(block2, "Создать контрольную точку", function ()
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		character.Archivable = true
		local clone = character:Clone()
		clone.Parent = workspace
		table.insert(points, clone.HumanoidRootPart.Position)
		for _, obj in ipairs(clone:GetDescendants()) do
			if obj:IsA("Script") or obj:IsA("LocalScript") then
				obj:Destroy()
				continue
			end
			if not obj:IsA("BasePart") then
				continue
			end

			obj.CanCollide = false
			obj.Anchored = true
			obj.Transparency = 0.7
		end
	end)
end

local function murder()
	local block1 = lib.create:block()
	lib.create:label(block1, "Радио")
	lib.create:toggle(block1, true, function (state)
		radioallowed = state
	end)
end

local function minesweeper()
	local block1 = lib.create:block()
end

lib:init("saline v1") -- Запуск

lib.create:tab("Камера", camera)
lib.create:tab("Мир", world)
lib.create:tab("Модификатор тела", bodymodify)
if game.PlaceId == 9312740628 then
	lib.create:tab("Industrialist", indus)
elseif game.PlaceId == 142823291 then
	lib.create:tab("MurderMystery2", murder)
elseif game.placeId == 7871169780 then
	lib.create:tab("Minesweeper", minesweeper)
end
lib.create:tab("Другое", other)
--Discord  Sh1z0v
--Discord  uasalt
--Telegram uasalt
--Group https://discord.gg/ttQMyKvKt6
