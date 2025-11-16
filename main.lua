local HttpService = game:GetService("HttpService")
local http = game:GetService('HttpService')
local tweenService = game:GetService('TweenService')
local UIS = game:GetService("UserInputService")

--local login = http:JSONDecode(game:HttpGet("https://dev.uasalt.org/scripts/saline/v0.0.1/login?nickname=" .. game.Players.LocalPlayer.Name .. "&placeId=" .. game.PlaceId .. "&userid=" .. game.Players.LocalPlayer.UserId))
local lib = {}
lib.root = ""

lib.create = {}
lib.styles = {
	global = {
		text = Color3.fromRGB(210, 210, 210)
	},
	root = {
		background = Color3.fromRGB(15, 15, 15),
		border = Color3.fromRGB(30, 30, 30)
	},
	toggle = {
		disabled = Color3.fromRGB(100, 100, 100),
		enabled = Color3.fromRGB(17, 106, 222),
		circle = Color3.fromRGB(255, 255, 255)
	},
	range = {
		lineColor = Color3.fromRGB(100, 100, 100),
		circle = Color3.fromRGB(255, 255, 255)
	},
	textBox = {
		roundRadius = 12,
		background = {15, 15, 15, 0.5} -- Цвет в формате RGBA (красный зеленый синий прозрачность)
	},
	label = {
		font = Enum.Font.Roboto,
		background = Color3.fromRGB(15, 15, 15)
	},
	dropbox = {
		background = Color3.fromRGB(35, 35, 35),
		border = Color3.fromRGB(60, 60, 60),
		option = {
			background = Color3.fromRGB(40, 40, 40)
		}
	},
	input = {
		background = Color3.fromRGB(15, 15, 15)
	},
	block = {
		background = Color3.fromRGB(15, 15, 15)
	},
	tab = {
		hoverBackground = Color3.fromRGB(20, 20, 20)
	}
}

local state = {}
local stateCount = {}
local CurrentTab = ""
local configName = "com.uasalt.uilib"

local function readcfg()
	return HttpService:JSONDecode(readfile(configName .. ".json"))
end
local function writecfg(data)
	readfile(configName .. ".json", HttpService:JSONEncode(data))
end

function lib:init(name)
	if not name then name = "Untitled" end
	local size = UDim2.new(0, 500, 0, 300)
	lib.root = Instance.new("ScreenGui") -- Создание окна
	lib.root.Name = name
	lib.root.ResetOnSpawn = false
	lib.root.Parent = game.Players.LocalPlayer.PlayerGui
	lib.root.IgnoreGuiInset = true
	local main = Instance.new("Frame")
	main.Name = "Main"
	main.Position = size
	main.BackgroundTransparency = 0
	main.BackgroundColor3 = lib.styles.root.background
	main.Size = size
	Instance.new('UICorner').Parent = main
	main.Parent = lib.root
	local titleBar = Instance.new('ImageButton') -- Создание верхнего блока
	titleBar.Name = 'TitleBar'
	titleBar.Size = UDim2.new(0, size.X.Offset, 0, 25)
	titleBar.BackgroundTransparency = 1
	Instance.new('UICorner').Parent = titleBar
	titleBar.Parent = main

	local title = Instance.new('TextLabel')
	title.Text = name
	title.Size = UDim2.new(0, titleBar.Size.X.Offset / 2.5, 0, titleBar.Size.Y.Offset)
	title.BackgroundTransparency = 1
	title.TextColor3 = Color3.new(210, 210, 210)
	title.TextSize = 21
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Font = Enum.Font.Roboto
	local padding = Instance.new('UIPadding')
	padding.PaddingTop = UDim.new(0, 5)
	padding.PaddingLeft = UDim.new(0, 10)
	padding.Parent = title
	title.Parent = titleBar
	local border = Instance.new('Frame')
	border.Size = UDim2.new(1, 0, 0, 1)
	border.Position = UDim2.new(0, 0, 1, 0)
	border.BackgroundColor3 = lib.styles.root.border
	border.BorderSizePixel = 0
	border.Name = "Separator"
	border.Parent = titleBar
	--Действия с окном
	local GUIMOVING = false -- Перетаскивание
	titleBar.MouseButton1Down:Connect(function () GUIMOVING = true; main.BackgroundTransparency = 0.4 end)
	titleBar.MouseButton1Up:Connect(function () GUIMOVING = false; main.BackgroundTransparency = 0 end)
	game:GetService("RunService").RenderStepped:Connect(function()
		if GUIMOVING then
			local mouse = game.Players.LocalPlayer:GetMouse()
			main.Position = UDim2.new(0, mouse.X - size.X.Offset / 2, 0, mouse.Y - -titleBar.Size.Y.Offset * 2)
		end
	end)
	local close = Instance.new("ImageButton") -- Закрытие
	close.Image = "http://www.roblox.com/asset/?id=132261474823036"
	close.Name = "Close"
	close.BorderSizePixel = 0
	close.Size = UDim2.new(0, titleBar.Size.Y.Offset, 0, titleBar.Size.Y.Offset)
	close.Position = UDim2.new(0, titleBar.Size.X.Offset - titleBar.Size.Y.Offset, 0)
	close.MouseButton1Click:Connect(function () lib.root:Destroy() end) 
	close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	close.BackgroundTransparency = 1
	close.MouseEnter:Connect(function () close.BackgroundTransparency = 0 end)
	close.MouseLeave:Connect(function () close.BackgroundTransparency = 1 end)
	close.Parent = titleBar
	local minimaze = Instance.new("TextButton") -- Сворачивание
	minimaze.Parent = titleBar
	minimaze.TextSize = 21
	minimaze.Text = "-"
	minimaze.Name = "Close"
	minimaze.BorderSizePixel = 0
	minimaze.Size = UDim2.new(0, titleBar.Size.Y.Offset, 0, titleBar.Size.Y.Offset)
	minimaze.Position = UDim2.new(0, titleBar.Size.X.Offset - titleBar.Size.Y.Offset - close.Size.X.Offset, 0)
	minimaze.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	minimaze.BackgroundTransparency = 1
	minimaze.TextColor3 = Color3.new(180, 180, 180)
	minimaze.MouseEnter:Connect(function () minimaze.BackgroundTransparency = 0 end)
	minimaze.MouseLeave:Connect(function () minimaze.BackgroundTransparency = 1 end)

	-- Вкладки
	local tabs = Instance.new("ScrollingFrame") 
	tabs.Parent = main -- добавление в меин фрейм
	tabs.Position = UDim2.new(0, 0, 0, titleBar.Size.Y.Offset) -- Позиция под тайтл баром
	tabs.Size = UDim2.new(0, size.X.Offset / 3, 0, size.Y.Offset - titleBar.Size.Y.Offset) 
	tabs.BackgroundTransparency = 1 -- Прозрачность фона
	tabs.Name = "Tabs" -- Назваяёние в мейне
	tabs.BorderSizePixel = 0 -- Ставлю границу на 0 что бы отключить и не было обводки
	tabs.ScrollBarThickness = 5 -- размер хуйни для скролла
	local separator = Instance.new("Frame") -- Создаю разделитель что бы не было слитно
	separator.Parent = main
	separator.BackgroundColor3 = lib.styles.root.border
	separator.BorderSizePixel = 0
	separator.Name = "Separator"
	separator.Position = UDim2.new(0, tabs.Size.X.Offset, 0, titleBar.Size.Y.Offset) -- Настраиваю позици на границе с вкладками и с контентом
	separator.Size = UDim2.new(0, 1, 0, size.Y.Offset - titleBar.Size.Y.Offset) -- Настраиваю размеры что бы он был тонким и на весь меин по высоте
	separator.Name = "Separator"
	separator.BorderSizePixel = 0
	Instance.new("UIListLayout").Parent = tabs

	-- Контент                                             
	local content = Instance.new("ScrollingFrame") -- Создаю фрейм что бы можно было листать и дохуя параметров добавлять
	content.Parent = main
	content.Name = "Content"
	content.Size = UDim2.new(0, size.X.Offset - (size.X.Offset / 3), 0, size.Y.Offset - titleBar.Size.Y.Offset) -- Ставим размер на оставшееся место в окне
	content.Position = UDim2.new(0, size.X.Offset / 3, 0, titleBar.Size.Y.Offset)
	content.BackgroundTransparency = 1
	content.BorderSizePixel = 0
	content.ScrollBarThickness = 5
	Instance.new("UIListLayout").Parent = content
	local padding = Instance.new("UIPadding")
	padding.Parent = content
	padding.PaddingTop = UDim.new(0, 15)
	padding.PaddingLeft = UDim.new(0, 5)
end

function lib.create:tab(name, onclick)
	local tabs = lib.root.Main.Tabs -- Получение фрейма с вкладками
	local content = lib.root.Main.Content
	local tab = Instance.new("TextButton") -- Создание кнопки для вкладки
	tab.Parent = tabs
	tab.BackgroundColor3 = lib.styles.tab.hoverBackground
	tab.BackgroundTransparency = 0
	tab.Transparency = 0.3
	tab.BorderSizePixel = 0
	tab.Name = name
	tab.Size = UDim2.new(1, 0, 0, 25)
	tab.TextColor3 = Color3.fromRGB(210, 210, 210)
	tab.Text = name
	tab.TextXAlignment = Enum.TextXAlignment.Left
	tab.TextSize = 12
	local padding = Instance.new('UIPadding')
	padding.Parent = tab
	padding.PaddingLeft = UDim.new(0, 10)
	if state[name] == nil then
		state[name] = {}
	end
	
	tabs.CanvasSize = UDim2.fromOffset(0, 25 * (#tabs:GetChildren() - 1))
	
	tab.MouseEnter:Connect(function () -- При наведении на кнопку 
		local Tween = tweenService:Create(tab, TweenInfo.new(0.3), {BackgroundTransparency=0}):Play()
	end)
	tab.MouseLeave:Connect(function () -- При наведении на кнопку
		local Tween = tweenService:Create(tab, TweenInfo.new(0.3), {BackgroundTransparency=1}):Play()
	end)
	tab.MouseButton1Click:Connect(function()
		for _, elem in ipairs(content:GetChildren()) do
			if not (elem.ClassName == "UIPadding" or elem.ClassName == "UIListLayout") then
				elem:Destroy()
			end
		end
		CurrentTab = name
		stateCount = 0
		onclick()
		content.CanvasSize = UDim2.fromOffset(0, 27 * (#content:GetChildren() - 2))
	end)
	if #tabs:GetChildren() == 2 then
		for _, elem in ipairs(content:GetChildren()) do
			if not (elem.ClassName == "UIPadding" or elem.ClassName == "UIListLayout") then
				elem:Destroy()
			end
		end
		stateCount = 0
		CurrentTab = name
		onclick()
		content.CanvasSize = UDim2.fromOffset(0, 27 * (#content:GetChildren() - 2))
	end
end

function lib.create:toggle(parent, enabled, callback)
	if enabled == nil then enabled = false end
	local content = lib.root.Main.Content
	local toggleBack = Instance.new("ImageButton", content)
	local name = stateCount .. "Toggle"
	stateCount += 1
	if state[CurrentTab][name] == nil then
		state[CurrentTab][name] = enabled
	else
		enabled = state[CurrentTab][name]
	end
	if enabled then
		toggleBack.BackgroundColor3 = lib.styles.toggle.enabled
	else
		toggleBack.BackgroundColor3 = lib.styles.toggle.disabled
	end
	local cornerb = Instance.new('UICorner')
	cornerb.CornerRadius = UDim.new(1, 0)
	cornerb.Parent = toggleBack
	toggleBack.Size = UDim2.new(0, 45, 0, 21)
	toggleBack.BorderSizePixel = 0
	toggleBack.ZIndex = 3

	local circle = Instance.new("Frame")
	circle.Parent = toggleBack
	circle.BackgroundColor3 = lib.styles.toggle.circle
	circle.Size = UDim2.new(0, 13, 0, 13)
	circle.ZIndex = 4
	if enabled then
		circle.Position = UDim2.fromOffset(28, 4)
	else
		circle.Position = UDim2.fromOffset(4, 4)
	end
	local cornerc = Instance.new('UICorner')
	cornerc.CornerRadius = UDim.new(1, 0)
	cornerc.Parent = circle
	toggleBack:SetAttribute("enabled", enabled)	
	toggleBack.Parent = parent or content
	toggleBack.MouseButton1Click:Connect(function ()
		enabled = not enabled
		toggleBack:SetAttribute("enabled", enabled)
		state[CurrentTab][name] = enabled
		if enabled then
			toggleBack.BackgroundColor3 = lib.styles.toggle.enabled
		else
			toggleBack.BackgroundColor3 = lib.styles.toggle.disabled
		end
		circle:TweenPosition(
			enabled and UDim2.fromOffset(28, 4) or UDim2.fromOffset(4, 4),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Quad,
			0.2,
			true
		)
		callback(enabled)
	end)
end

function lib.create:range(parent, min, max, value, callback)
	if value == nil then value = min end
	local name = stateCount
	stateCount += 1
	if state[CurrentTab][name] == nil then
		state[CurrentTab][name] = value
	else
		value = state[CurrentTab][name]
	end
	local content = lib.root.Main.Content
	local line = Instance.new("Frame")
	line.Size = UDim2.fromOffset(100, 3)
	line.BackgroundColor3 = lib.styles.range.lineColor

	local circle = Instance.new("ImageButton")
	circle.Parent = line
	circle.BackgroundColor3 = lib.styles.range.circle
	circle.Size = UDim2.fromOffset(13, 13)
	circle.ZIndex = 4
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(1, 0)
	corner.Parent = circle
	local percent = (value - min) / (max - min)
	local relX = percent * line.AbsoluteSize.X
	circle.Position = UDim2.fromOffset(relX - 6.5, -6.5)

	local MOVING = false
	circle.MouseButton1Down:Connect(function () MOVING = true end)
	circle.MouseButton1Up:Connect(function () MOVING = false end)
	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			MOVING = false
		end
	end)
	game:GetService("RunService").RenderStepped:Connect(function()
		if MOVING then
			local mouse = game.Players.LocalPlayer:GetMouse()
			local absPos = line.AbsolutePosition
			local absSize = line.AbsoluteSize
			local x = math.clamp(mouse.X - absPos.X, 0, absSize.X)
			circle.Position = UDim2.fromOffset(x - 6.5, -6.5)
			local percent = math.clamp(x / line.AbsoluteSize.X, 0, 1)
			local value = min + (max - min) * percent
			state[CurrentTab][name] = value
			callback(value)
		end
	end)

	line.Parent = parent or content
end

function lib.create:input(parent, placeholder, default, callback )
	if default == nil then default = "" end
	default = tostring(default)
	local content = lib.root.Main.Content
	local name = stateCount
	stateCount += 1
	local text = default or ""
	if state[CurrentTab][name] == nil then
		state[CurrentTab][name] = tostring(default or "")
	end
	local input = Instance.new('TextBox')
	input.PlaceholderText = placeholder
	input.Size = UDim2.fromOffset(100, 21)
	input.Text = state[CurrentTab][name]
	input.TextXAlignment = Enum.TextXAlignment.Left
	input.BackgroundColor3 = lib.styles.input.background
	input.TextColor3 = lib.styles.global.text
	input.Parent = parent or content
	input.FocusLost:Connect(function()
		state[CurrentTab][name] = input.Text
		if callback then
			callback(input.Text)
		end
	end)
	input.Focused:Connect(function () if input.Text == "" then input.Text = text end end)
end

function lib.create:label(parent, text, size:number, font, XAlignment)
	local content = lib.root.Main.Content
	local label = Instance.new("TextLabel")
	label.TextXAlignment = XAlignment or Enum.TextXAlignment.Left
	label.Text = text
	label.Font = font or lib.styles.label.font
	label.BackgroundTransparency = 1
	label.BackgroundColor3 = lib.styles.background or Color3.new(0, 0, 0)
	label.TextSize = size or 18
	label.TextColor3 = lib.styles.global.text
	label.Size = UDim2.fromOffset(200, 50)
	label.Parent = parent or content
	--label.Position = relPos
	return label
end

function lib.create:block()
	local block = Instance.new("Frame")
	local layout = Instance.new("UIListLayout")
	layout.FillDirection = Enum.FillDirection.Horizontal
	layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	layout.VerticalAlignment = Enum.VerticalAlignment.Center
	layout.Padding = UDim.new(0, 6)
	layout.Parent = block
	block.Size = UDim2.new(0, 0, 0, 27)
	block.BackgroundTransparency = 1
	block.Parent = lib.root.Main.Content
	return block
end

function lib.create:dropbox(parent, items, selected:number, onchange)
	if not selected then selected = 1 end
	local name = stateCount
	if state[CurrentTab][name] == nil then
		state[CurrentTab][name] = selected
	else
		selected = state[CurrentTab][name]
	end
	stateCount += 1
	local block = Instance.new("TextButton")
	block.Text = tostring(items[selected])
	block.BorderColor3 = lib.styles.dropbox.border
	block.BackgroundColor3 = lib.styles.dropbox.background
	block.TextColor3 = lib.styles.global.text
	block.Size = UDim2.fromOffset(100, 21)
	block.Font = Enum.Font.Roboto
	block.TextSize = 18
	block.TextXAlignment = Enum.TextXAlignment.Left
	local padding = Instance.new("UIPadding")
	padding.PaddingLeft = UDim.new(0, 3)
	padding.Parent = block
	block.Parent = parent
	block.MouseButton1Click:Connect(function()
		local select = Instance.new("ScrollingFrame")
		select.ScrollBarThickness = 5
		select.CanvasSize = UDim2.fromOffset(0, 21*#items)
		select.Size = UDim2.fromOffset(100, 126)
		select.Position = UDim2.fromOffset(block.AbsolutePosition.X, block.AbsolutePosition.Y + block.Size.Y.Offset)
		select.Name = "DropboxSelector"
		select.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		select.ZIndex = 4
		select.BorderColor3 = lib.styles.dropbox.border
		Instance.new("UIListLayout").Parent = select
		for index, title in ipairs(items) do
			local option = Instance.new("TextButton")
			option.Text = title
			option.TextXAlignment = Enum.TextXAlignment.Left
			option.TextColor3 = lib.styles.global.text
			option.Name = index .. "Option"
			option.Size = UDim2.new(1, 0, 0, 21)
			option.ZIndex = 5
			option.BackgroundColor3 = lib.styles.dropbox.option.background
			option.Parent = select
			option.MouseButton1Click:Connect(function()
				select:Destroy()
				block.Text = title
				if state[CurrentTab][name] == nil then
					state[CurrentTab][name] = selected
				end
				onchange(index, title)
			end)
			game.Players.LocalPlayer:GetMouse().Button1Up:Connect(function() select:Destroy() end)
		end
		select.Parent = lib.root
	end)
end

function lib.create:image(parent, url)
	local image = Instance.new("ImageLabel")
	image.Image = url
	image.Size = UDim2.fromOffset(21, 21)
	image.BackgroundTransparency = 1
	image.Parent = parent
end

return lib
