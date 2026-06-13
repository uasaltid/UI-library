local colorWindow = Instance.new("Frame")
colorWindow.Name = "ColorWindow"
colorWindow.AutoLocalize = true
colorWindow.Active = false
colorWindow.AnchorPoint = Vector2.new(0, 0)
colorWindow.AutomaticSize = Enum.AutomaticSize.None
colorWindow.ClipsDescendants = false
colorWindow.Position = UDim2.new(0, 350, 0, 200)
colorWindow.Size = UDim2.new(0.40000000596046448, 0, 0.40000000596046448, 0)
colorWindow.SizeConstraint = Enum.SizeConstraint.RelativeXY
colorWindow.Rotation = 0
colorWindow.LayoutOrder = 0
colorWindow.ZIndex = 1
colorWindow.Visible = true
colorWindow.Selectable = false
colorWindow.SelectionGroup = false
colorWindow.Interactable = true
colorWindow.BackgroundColor3 = Color3.new(0.10196078568696976, 0.10196078568696976, 0.14117647707462311)
colorWindow.BackgroundTransparency = 1
colorWindow.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
colorWindow.BorderMode = Enum.BorderMode.Outline
colorWindow.BorderSizePixel = 0

local uIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
uIAspectRatioConstraint.Name = "UIAspectRatioConstraint"
uIAspectRatioConstraint.AspectRatio = 1.1000000238418579
uIAspectRatioConstraint.AspectType = Enum.AspectType.FitWithinMaxSize
uIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Width
uIAspectRatioConstraint.Parent = colorWindow

local topbar = Instance.new("Frame")
topbar.Name = "Topbar"
topbar.AutoLocalize = true
topbar.Active = false
topbar.AnchorPoint = Vector2.new(0, 0)
topbar.AutomaticSize = Enum.AutomaticSize.None
topbar.ClipsDescendants = false
topbar.Position = UDim2.new(0, 0, 0, 0)
topbar.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
topbar.SizeConstraint = Enum.SizeConstraint.RelativeXY
topbar.Rotation = 0
topbar.LayoutOrder = 0
topbar.ZIndex = 1
topbar.Visible = true
topbar.Selectable = false
topbar.SelectionGroup = false
topbar.Interactable = true
topbar.BackgroundColor3 = Color3.new(0.08235294371843338, 0.08235294371843338, 0.12156862765550613)
topbar.BackgroundTransparency = 1
topbar.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
topbar.BorderMode = Enum.BorderMode.Outline
topbar.BorderSizePixel = 0
topbar.Parent = colorWindow

local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.AutoLocalize = true
frame.Active = false
frame.AnchorPoint = Vector2.new(0, 1)
frame.AutomaticSize = Enum.AutomaticSize.None
frame.ClipsDescendants = false
frame.Position = UDim2.new(0, 0, 1, 0)
frame.Size = UDim2.new(1, 0, 0.5, 0)
frame.SizeConstraint = Enum.SizeConstraint.RelativeXY
frame.Rotation = 0
frame.LayoutOrder = 0
frame.ZIndex = 0
frame.Visible = true
frame.Selectable = false
frame.SelectionGroup = false
frame.Interactable = true
frame.BackgroundColor3 = Color3.new(0.08235294371843338, 0.08235294371843338, 0.12156862765550613)
frame.BackgroundTransparency = 0
frame.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
frame.BorderMode = Enum.BorderMode.Outline
frame.BorderSizePixel = 0
frame.Parent = topbar

local text = Instance.new("TextLabel")
text.Name = "Text"
text.AutoLocalize = true
text.Active = false
text.AnchorPoint = Vector2.new(0, 0.5)
text.AutomaticSize = Enum.AutomaticSize.None
text.ClipsDescendants = false
text.Position = UDim2.new(0.019999999552965164, 0, 0.5, 0)
text.Size = UDim2.new(0.80000001192092896, 0, 0.69999998807907104, 0)
text.SizeConstraint = Enum.SizeConstraint.RelativeXY
text.Rotation = 0
text.LayoutOrder = 0
text.ZIndex = 1
text.Visible = true
text.Selectable = false
text.SelectionGroup = false
text.Interactable = true
text.BackgroundColor3 = Color3.new(1, 1, 1)
text.BackgroundTransparency = 1
text.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
text.BorderMode = Enum.BorderMode.Outline
text.BorderSizePixel = 1
text.Text = "Color"
text.Font = Enum.Font.GothamMedium
text.TextSize = 14
text.LineHeight = 1
text.MaxVisibleGraphemes = -1
text.RichText = false
text.TextColor3 = Color3.new(1, 1, 1)
text.TextTransparency = 0
text.TextStrokeColor3 = Color3.new(0, 0, 0)
text.TextStrokeTransparency = 1
text.TextScaled = true
text.TextWrapped = true
text.TextXAlignment = Enum.TextXAlignment.Left
text.TextYAlignment = Enum.TextYAlignment.Center
text.TextDirection = Enum.TextDirection.Auto
text.TextTruncate = Enum.TextTruncate.None
text.OpenTypeFeatures = ""
text.Parent = topbar

local button = Instance.new("TextButton")
button.Name = "Button"
button.AutoLocalize = true
button.Active = true
button.AnchorPoint = Vector2.new(0, 0)
button.AutomaticSize = Enum.AutomaticSize.None
button.ClipsDescendants = false
button.Position = UDim2.new(0, 0, 0, 0)
button.Size = UDim2.new(1, 0, 1, 0)
button.SizeConstraint = Enum.SizeConstraint.RelativeXY
button.Rotation = 0
button.LayoutOrder = 0
button.ZIndex = 1
button.Visible = true
button.Selectable = true
button.SelectionGroup = false
button.Interactable = true
button.BackgroundColor3 = Color3.new(1, 1, 1)
button.BackgroundTransparency = 1
button.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
button.BorderMode = Enum.BorderMode.Outline
button.BorderSizePixel = 1
button.AutoButtonColor = true
button.Modal = false
button.Selected = false
button.Style = Enum.ButtonStyle.Custom
button.Text = ""
button.Font = Enum.Font.SourceSans
button.TextSize = 14
button.LineHeight = 1
button.MaxVisibleGraphemes = -1
button.RichText = false
button.TextColor3 = Color3.new(0, 0, 0)
button.TextTransparency = 0
button.TextStrokeColor3 = Color3.new(0, 0, 0)
button.TextStrokeTransparency = 1
button.TextScaled = true
button.TextWrapped = true
button.TextXAlignment = Enum.TextXAlignment.Center
button.TextYAlignment = Enum.TextYAlignment.Center
button.TextDirection = Enum.TextDirection.Auto
button.TextTruncate = Enum.TextTruncate.None
button.OpenTypeFeatures = ""
button.Parent = topbar

local top = Instance.new("Frame")
top.Name = "Top"
top.AutoLocalize = true
top.Active = false
top.AnchorPoint = Vector2.new(0, 0)
top.AutomaticSize = Enum.AutomaticSize.None
top.ClipsDescendants = true
top.Position = UDim2.new(0, 0, 0, 0)
top.Size = UDim2.new(1, 0, 0.5, 0)
top.SizeConstraint = Enum.SizeConstraint.RelativeXY
top.Rotation = 0
top.LayoutOrder = 0
top.ZIndex = 0
top.Visible = true
top.Selectable = false
top.SelectionGroup = false
top.Interactable = true
top.BackgroundColor3 = Color3.new(0.08235294371843338, 0.08235294371843338, 0.12156862765550613)
top.BackgroundTransparency = 1
top.BorderColor3 = Color3.new(0.10588235408067703, 0.16470588743686676, 0.20784313976764679)
top.BorderMode = Enum.BorderMode.Outline
top.BorderSizePixel = 0
top.Parent = topbar

local frame2 = Instance.new("Frame")
frame2.Name = "Frame"
frame2.AutoLocalize = true
frame2.Active = false
frame2.AnchorPoint = Vector2.new(0, 0)
frame2.AutomaticSize = Enum.AutomaticSize.None
frame2.ClipsDescendants = false
frame2.Position = UDim2.new(0, 0, 0, 0)
frame2.Size = UDim2.new(1, 0, 2, 0)
frame2.SizeConstraint = Enum.SizeConstraint.RelativeXY
frame2.Rotation = 0
frame2.LayoutOrder = 0
frame2.ZIndex = 0
frame2.Visible = true
frame2.Selectable = false
frame2.SelectionGroup = false
frame2.Interactable = true
frame2.BackgroundColor3 = Color3.new(0.08235294371843338, 0.08235294371843338, 0.12156862765550613)
frame2.BackgroundTransparency = 0
frame2.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
frame2.BorderMode = Enum.BorderMode.Outline
frame2.BorderSizePixel = 0
frame2.Parent = top

local uICorner = Instance.new("UICorner")
uICorner.Name = "UICorner"
uICorner.CornerRadius = UDim.new(0.37999999523162842, 0)
uICorner.Parent = frame2

local properties = Instance.new("Frame")
properties.Name = "Properties"
properties.AutoLocalize = true
properties.Active = false
properties.AnchorPoint = Vector2.new(0, 0)
properties.AutomaticSize = Enum.AutomaticSize.None
properties.ClipsDescendants = false
properties.Position = UDim2.new(0, 0, 1.0099999904632568, 0)
properties.Size = UDim2.new(1, 0, 0.30000001192092896, 0)
properties.SizeConstraint = Enum.SizeConstraint.RelativeXY
properties.Rotation = 0
properties.LayoutOrder = 0
properties.ZIndex = 1
properties.Visible = true
properties.Selectable = false
properties.SelectionGroup = false
properties.Interactable = true
properties.BackgroundColor3 = Color3.new(0.10196078568696976, 0.10196078568696976, 0.14117647707462311)
properties.BackgroundTransparency = 0
properties.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
properties.BorderMode = Enum.BorderMode.Outline
properties.BorderSizePixel = 0
properties.Parent = colorWindow

local rGB = Instance.new("Frame")
rGB.Name = "RGB"
rGB.AutoLocalize = true
rGB.Active = false
rGB.AnchorPoint = Vector2.new(0, 0)
rGB.AutomaticSize = Enum.AutomaticSize.None
rGB.ClipsDescendants = false
rGB.Position = UDim2.new(0, 0, 0, 0)
rGB.Size = UDim2.new(1, 0, 0.5, 0)
rGB.SizeConstraint = Enum.SizeConstraint.RelativeXY
rGB.Rotation = 0
rGB.LayoutOrder = 0
rGB.ZIndex = 1
rGB.Visible = true
rGB.Selectable = false
rGB.SelectionGroup = false
rGB.Interactable = true
rGB.BackgroundColor3 = Color3.new(1, 1, 1)
rGB.BackgroundTransparency = 1
rGB.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
rGB.BorderMode = Enum.BorderMode.Outline
rGB.BorderSizePixel = 1
rGB.Parent = properties

local r = Instance.new("Frame")
r.Name = "R"
r.AutoLocalize = true
r.Active = false
r.AnchorPoint = Vector2.new(0, 0)
r.AutomaticSize = Enum.AutomaticSize.None
r.ClipsDescendants = false
r.Position = UDim2.new(0, 0, 0, 0)
r.Size = UDim2.new(0.30000001192092896, 0, 1, 0)
r.SizeConstraint = Enum.SizeConstraint.RelativeXY
r.Rotation = 0
r.LayoutOrder = 0
r.ZIndex = 1
r.Visible = true
r.Selectable = false
r.SelectionGroup = false
r.Interactable = true
r.BackgroundColor3 = Color3.new(1, 1, 1)
r.BackgroundTransparency = 1
r.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
r.BorderMode = Enum.BorderMode.Outline
r.BorderSizePixel = 1
r.Parent = rGB

local textLabel = Instance.new("TextLabel")
textLabel.Name = "TextLabel"
textLabel.AutoLocalize = true
textLabel.Active = false
textLabel.AnchorPoint = Vector2.new(0, 0.5)
textLabel.AutomaticSize = Enum.AutomaticSize.None
textLabel.ClipsDescendants = false
textLabel.Position = UDim2.new(0, 0, 0.5, 0)
textLabel.Size = UDim2.new(0.20000000298023224, 0, 0.40000000596046448, 0)
textLabel.SizeConstraint = Enum.SizeConstraint.RelativeXY
textLabel.Rotation = 0
textLabel.LayoutOrder = 0
textLabel.ZIndex = 1
textLabel.Visible = true
textLabel.Selectable = false
textLabel.SelectionGroup = false
textLabel.Interactable = true
textLabel.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel.BackgroundTransparency = 1
textLabel.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textLabel.BorderMode = Enum.BorderMode.Outline
textLabel.BorderSizePixel = 1
textLabel.Text = "R"
textLabel.Font = Enum.Font.GothamMedium
textLabel.TextSize = 14
textLabel.LineHeight = 1
textLabel.MaxVisibleGraphemes = -1
textLabel.RichText = false
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextTransparency = 0
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
textLabel.TextStrokeTransparency = 1
textLabel.TextScaled = true
textLabel.TextWrapped = true
textLabel.TextXAlignment = Enum.TextXAlignment.Center
textLabel.TextYAlignment = Enum.TextYAlignment.Center
textLabel.TextDirection = Enum.TextDirection.Auto
textLabel.TextTruncate = Enum.TextTruncate.None
textLabel.OpenTypeFeatures = ""
textLabel.Parent = r

local frame3 = Instance.new("Frame")
frame3.Name = "Frame"
frame3.AutoLocalize = true
frame3.Active = false
frame3.AnchorPoint = Vector2.new(0, 0.5)
frame3.AutomaticSize = Enum.AutomaticSize.None
frame3.ClipsDescendants = false
frame3.Position = UDim2.new(0.30000001192092896, 0, 0.5, 0)
frame3.Size = UDim2.new(0.60000002384185791, 0, 0.60000002384185791, 0)
frame3.SizeConstraint = Enum.SizeConstraint.RelativeXY
frame3.Rotation = 0
frame3.LayoutOrder = 0
frame3.ZIndex = 1
frame3.Visible = true
frame3.Selectable = false
frame3.SelectionGroup = false
frame3.Interactable = true
frame3.BackgroundColor3 = Color3.new(0.14117647707462311, 0.14117647707462311, 0.18039216101169586)
frame3.BackgroundTransparency = 0
frame3.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
frame3.BorderMode = Enum.BorderMode.Outline
frame3.BorderSizePixel = 0
frame3.Parent = r

local uICorner2 = Instance.new("UICorner")
uICorner2.Name = "UICorner"
uICorner2.CornerRadius = UDim.new(0.30000001192092896, 0)
uICorner2.Parent = frame3

local textBox = Instance.new("TextBox")
textBox.Name = "TextBox"
textBox.AutoLocalize = true
textBox.Active = true
textBox.AnchorPoint = Vector2.new(0.5, 0.5)
textBox.AutomaticSize = Enum.AutomaticSize.None
textBox.ClipsDescendants = false
textBox.Position = UDim2.new(0.5, 0, 0.5, 0)
textBox.Size = UDim2.new(1, 0, 0.60000002384185791, 0)
textBox.SizeConstraint = Enum.SizeConstraint.RelativeXY
textBox.Rotation = 0
textBox.LayoutOrder = 0
textBox.ZIndex = 1
textBox.Visible = true
textBox.Selectable = true
textBox.SelectionGroup = false
textBox.Interactable = true
textBox.BackgroundColor3 = Color3.new(1, 1, 1)
textBox.BackgroundTransparency = 1
textBox.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textBox.BorderMode = Enum.BorderMode.Outline
textBox.BorderSizePixel = 1
textBox.Text = "255"
textBox.Font = Enum.Font.GothamMedium
textBox.TextSize = 14
textBox.LineHeight = 1
textBox.MaxVisibleGraphemes = -1
textBox.RichText = false
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.TextTransparency = 0
textBox.TextStrokeColor3 = Color3.new(0, 0, 0)
textBox.TextStrokeTransparency = 1
textBox.TextScaled = true
textBox.TextWrapped = true
textBox.TextXAlignment = Enum.TextXAlignment.Center
textBox.TextYAlignment = Enum.TextYAlignment.Center
textBox.TextDirection = Enum.TextDirection.Auto
textBox.TextTruncate = Enum.TextTruncate.None
textBox.OpenTypeFeatures = ""
textBox.ClearTextOnFocus = false
textBox.MultiLine = false
textBox.PlaceholderColor3 = Color3.new(0.69999998807907104, 0.69999998807907104, 0.69999998807907104)
textBox.PlaceholderText = "R (0-255)"
textBox.ShowNativeInput = true
textBox.TextEditable = true
textBox.Parent = frame3

local g = Instance.new("Frame")
g.Name = "G"
g.AutoLocalize = true
g.Active = false
g.AnchorPoint = Vector2.new(0, 0)
g.AutomaticSize = Enum.AutomaticSize.None
g.ClipsDescendants = false
g.Position = UDim2.new(0, 0, 0, 0)
g.Size = UDim2.new(0.30000001192092896, 0, 1, 0)
g.SizeConstraint = Enum.SizeConstraint.RelativeXY
g.Rotation = 0
g.LayoutOrder = 0
g.ZIndex = 1
g.Visible = true
g.Selectable = false
g.SelectionGroup = false
g.Interactable = true
g.BackgroundColor3 = Color3.new(1, 1, 1)
g.BackgroundTransparency = 1
g.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
g.BorderMode = Enum.BorderMode.Outline
g.BorderSizePixel = 1
g.Parent = rGB

local textLabel2 = Instance.new("TextLabel")
textLabel2.Name = "TextLabel"
textLabel2.AutoLocalize = true
textLabel2.Active = false
textLabel2.AnchorPoint = Vector2.new(0, 0.5)
textLabel2.AutomaticSize = Enum.AutomaticSize.None
textLabel2.ClipsDescendants = false
textLabel2.Position = UDim2.new(0, 0, 0.5, 0)
textLabel2.Size = UDim2.new(0.20000000298023224, 0, 0.40000000596046448, 0)
textLabel2.SizeConstraint = Enum.SizeConstraint.RelativeXY
textLabel2.Rotation = 0
textLabel2.LayoutOrder = 0
textLabel2.ZIndex = 1
textLabel2.Visible = true
textLabel2.Selectable = false
textLabel2.SelectionGroup = false
textLabel2.Interactable = true
textLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel2.BackgroundTransparency = 1
textLabel2.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textLabel2.BorderMode = Enum.BorderMode.Outline
textLabel2.BorderSizePixel = 1
textLabel2.Text = "G"
textLabel2.Font = Enum.Font.GothamMedium
textLabel2.TextSize = 14
textLabel2.LineHeight = 1
textLabel2.MaxVisibleGraphemes = -1
textLabel2.RichText = false
textLabel2.TextColor3 = Color3.new(1, 1, 1)
textLabel2.TextTransparency = 0
textLabel2.TextStrokeColor3 = Color3.new(0, 0, 0)
textLabel2.TextStrokeTransparency = 1
textLabel2.TextScaled = true
textLabel2.TextWrapped = true
textLabel2.TextXAlignment = Enum.TextXAlignment.Center
textLabel2.TextYAlignment = Enum.TextYAlignment.Center
textLabel2.TextDirection = Enum.TextDirection.Auto
textLabel2.TextTruncate = Enum.TextTruncate.None
textLabel2.OpenTypeFeatures = ""
textLabel2.Parent = g

local frame4 = Instance.new("Frame")
frame4.Name = "Frame"
frame4.AutoLocalize = true
frame4.Active = false
frame4.AnchorPoint = Vector2.new(0, 0.5)
frame4.AutomaticSize = Enum.AutomaticSize.None
frame4.ClipsDescendants = false
frame4.Position = UDim2.new(0.30000001192092896, 0, 0.5, 0)
frame4.Size = UDim2.new(0.60000002384185791, 0, 0.60000002384185791, 0)
frame4.SizeConstraint = Enum.SizeConstraint.RelativeXY
frame4.Rotation = 0
frame4.LayoutOrder = 0
frame4.ZIndex = 1
frame4.Visible = true
frame4.Selectable = false
frame4.SelectionGroup = false
frame4.Interactable = true
frame4.BackgroundColor3 = Color3.new(0.14117647707462311, 0.14117647707462311, 0.18039216101169586)
frame4.BackgroundTransparency = 0
frame4.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
frame4.BorderMode = Enum.BorderMode.Outline
frame4.BorderSizePixel = 0
frame4.Parent = g

local uICorner3 = Instance.new("UICorner")
uICorner3.Name = "UICorner"
uICorner3.CornerRadius = UDim.new(0.30000001192092896, 0)
uICorner3.Parent = frame4

local textBox2 = Instance.new("TextBox")
textBox2.Name = "TextBox"
textBox2.AutoLocalize = true
textBox2.Active = true
textBox2.AnchorPoint = Vector2.new(0.5, 0.5)
textBox2.AutomaticSize = Enum.AutomaticSize.None
textBox2.ClipsDescendants = false
textBox2.Position = UDim2.new(0.5, 0, 0.5, 0)
textBox2.Size = UDim2.new(1, 0, 0.60000002384185791, 0)
textBox2.SizeConstraint = Enum.SizeConstraint.RelativeXY
textBox2.Rotation = 0
textBox2.LayoutOrder = 0
textBox2.ZIndex = 1
textBox2.Visible = true
textBox2.Selectable = true
textBox2.SelectionGroup = false
textBox2.Interactable = true
textBox2.BackgroundColor3 = Color3.new(1, 1, 1)
textBox2.BackgroundTransparency = 1
textBox2.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textBox2.BorderMode = Enum.BorderMode.Outline
textBox2.BorderSizePixel = 1
textBox2.Text = "255"
textBox2.Font = Enum.Font.GothamMedium
textBox2.TextSize = 14
textBox2.LineHeight = 1
textBox2.MaxVisibleGraphemes = -1
textBox2.RichText = false
textBox2.TextColor3 = Color3.new(1, 1, 1)
textBox2.TextTransparency = 0
textBox2.TextStrokeColor3 = Color3.new(0, 0, 0)
textBox2.TextStrokeTransparency = 1
textBox2.TextScaled = true
textBox2.TextWrapped = true
textBox2.TextXAlignment = Enum.TextXAlignment.Center
textBox2.TextYAlignment = Enum.TextYAlignment.Center
textBox2.TextDirection = Enum.TextDirection.Auto
textBox2.TextTruncate = Enum.TextTruncate.None
textBox2.OpenTypeFeatures = ""
textBox2.ClearTextOnFocus = false
textBox2.MultiLine = false
textBox2.PlaceholderColor3 = Color3.new(0.69999998807907104, 0.69999998807907104, 0.69999998807907104)
textBox2.PlaceholderText = "G (0-255)"
textBox2.ShowNativeInput = true
textBox2.TextEditable = true
textBox2.Parent = frame4

local b = Instance.new("Frame")
b.Name = "B"
b.AutoLocalize = true
b.Active = false
b.AnchorPoint = Vector2.new(0, 0)
b.AutomaticSize = Enum.AutomaticSize.None
b.ClipsDescendants = false
b.Position = UDim2.new(0, 0, 0, 0)
b.Size = UDim2.new(0.30000001192092896, 0, 1, 0)
b.SizeConstraint = Enum.SizeConstraint.RelativeXY
b.Rotation = 0
b.LayoutOrder = 0
b.ZIndex = 1
b.Visible = true
b.Selectable = false
b.SelectionGroup = false
b.Interactable = true
b.BackgroundColor3 = Color3.new(1, 1, 1)
b.BackgroundTransparency = 1
b.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
b.BorderMode = Enum.BorderMode.Outline
b.BorderSizePixel = 1
b.Parent = rGB

local textLabel3 = Instance.new("TextLabel")
textLabel3.Name = "TextLabel"
textLabel3.AutoLocalize = true
textLabel3.Active = false
textLabel3.AnchorPoint = Vector2.new(0, 0.5)
textLabel3.AutomaticSize = Enum.AutomaticSize.None
textLabel3.ClipsDescendants = false
textLabel3.Position = UDim2.new(0, 0, 0.5, 0)
textLabel3.Size = UDim2.new(0.20000000298023224, 0, 0.40000000596046448, 0)
textLabel3.SizeConstraint = Enum.SizeConstraint.RelativeXY
textLabel3.Rotation = 0
textLabel3.LayoutOrder = 0
textLabel3.ZIndex = 1
textLabel3.Visible = true
textLabel3.Selectable = false
textLabel3.SelectionGroup = false
textLabel3.Interactable = true
textLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel3.BackgroundTransparency = 1
textLabel3.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textLabel3.BorderMode = Enum.BorderMode.Outline
textLabel3.BorderSizePixel = 1
textLabel3.Text = "B"
textLabel3.Font = Enum.Font.GothamMedium
textLabel3.TextSize = 14
textLabel3.LineHeight = 1
textLabel3.MaxVisibleGraphemes = -1
textLabel3.RichText = false
textLabel3.TextColor3 = Color3.new(1, 1, 1)
textLabel3.TextTransparency = 0
textLabel3.TextStrokeColor3 = Color3.new(0, 0, 0)
textLabel3.TextStrokeTransparency = 1
textLabel3.TextScaled = true
textLabel3.TextWrapped = true
textLabel3.TextXAlignment = Enum.TextXAlignment.Center
textLabel3.TextYAlignment = Enum.TextYAlignment.Center
textLabel3.TextDirection = Enum.TextDirection.Auto
textLabel3.TextTruncate = Enum.TextTruncate.None
textLabel3.OpenTypeFeatures = ""
textLabel3.Parent = b

local frame5 = Instance.new("Frame")
frame5.Name = "Frame"
frame5.AutoLocalize = true
frame5.Active = false
frame5.AnchorPoint = Vector2.new(0, 0.5)
frame5.AutomaticSize = Enum.AutomaticSize.None
frame5.ClipsDescendants = false
frame5.Position = UDim2.new(0.30000001192092896, 0, 0.5, 0)
frame5.Size = UDim2.new(0.60000002384185791, 0, 0.60000002384185791, 0)
frame5.SizeConstraint = Enum.SizeConstraint.RelativeXY
frame5.Rotation = 0
frame5.LayoutOrder = 0
frame5.ZIndex = 1
frame5.Visible = true
frame5.Selectable = false
frame5.SelectionGroup = false
frame5.Interactable = true
frame5.BackgroundColor3 = Color3.new(0.14117647707462311, 0.14117647707462311, 0.18039216101169586)
frame5.BackgroundTransparency = 0
frame5.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
frame5.BorderMode = Enum.BorderMode.Outline
frame5.BorderSizePixel = 0
frame5.Parent = b

local uICorner4 = Instance.new("UICorner")
uICorner4.Name = "UICorner"
uICorner4.CornerRadius = UDim.new(0.30000001192092896, 0)
uICorner4.Parent = frame5

local textBox3 = Instance.new("TextBox")
textBox3.Name = "TextBox"
textBox3.AutoLocalize = true
textBox3.Active = true
textBox3.AnchorPoint = Vector2.new(0.5, 0.5)
textBox3.AutomaticSize = Enum.AutomaticSize.None
textBox3.ClipsDescendants = false
textBox3.Position = UDim2.new(0.5, 0, 0.5, 0)
textBox3.Size = UDim2.new(1, 0, 0.60000002384185791, 0)
textBox3.SizeConstraint = Enum.SizeConstraint.RelativeXY
textBox3.Rotation = 0
textBox3.LayoutOrder = 0
textBox3.ZIndex = 1
textBox3.Visible = true
textBox3.Selectable = true
textBox3.SelectionGroup = false
textBox3.Interactable = true
textBox3.BackgroundColor3 = Color3.new(1, 1, 1)
textBox3.BackgroundTransparency = 1
textBox3.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textBox3.BorderMode = Enum.BorderMode.Outline
textBox3.BorderSizePixel = 1
textBox3.Text = "255"
textBox3.Font = Enum.Font.GothamMedium
textBox3.TextSize = 14
textBox3.LineHeight = 1
textBox3.MaxVisibleGraphemes = -1
textBox3.RichText = false
textBox3.TextColor3 = Color3.new(1, 1, 1)
textBox3.TextTransparency = 0
textBox3.TextStrokeColor3 = Color3.new(0, 0, 0)
textBox3.TextStrokeTransparency = 1
textBox3.TextScaled = true
textBox3.TextWrapped = true
textBox3.TextXAlignment = Enum.TextXAlignment.Center
textBox3.TextYAlignment = Enum.TextYAlignment.Center
textBox3.TextDirection = Enum.TextDirection.Auto
textBox3.TextTruncate = Enum.TextTruncate.None
textBox3.OpenTypeFeatures = ""
textBox3.ClearTextOnFocus = false
textBox3.MultiLine = false
textBox3.PlaceholderColor3 = Color3.new(0.69999998807907104, 0.69999998807907104, 0.69999998807907104)
textBox3.PlaceholderText = "B (0-255)"
textBox3.ShowNativeInput = true
textBox3.TextEditable = true
textBox3.Parent = frame5

local uIListLayout = Instance.new("UIListLayout")
uIListLayout.Name = "UIListLayout"
uIListLayout.FillDirection = Enum.FillDirection.Horizontal
uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uIListLayout.HorizontalFlex = Enum.UIFlexAlignment.None
uIListLayout.ItemLineAlignment = Enum.ItemLineAlignment.Automatic
uIListLayout.Padding = UDim.new(0, 0)
uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
uIListLayout.VerticalFlex = Enum.UIFlexAlignment.None
uIListLayout.Wraps = false
uIListLayout.Parent = rGB

local hSV = Instance.new("Frame")
hSV.Name = "HSV"
hSV.AutoLocalize = true
hSV.Active = false
hSV.AnchorPoint = Vector2.new(0, 0)
hSV.AutomaticSize = Enum.AutomaticSize.None
hSV.ClipsDescendants = false
hSV.Position = UDim2.new(0, 0, 0.5, 0)
hSV.Size = UDim2.new(1, 0, 0.5, 0)
hSV.SizeConstraint = Enum.SizeConstraint.RelativeXY
hSV.Rotation = 0
hSV.LayoutOrder = 0
hSV.ZIndex = 1
hSV.Visible = true
hSV.Selectable = false
hSV.SelectionGroup = false
hSV.Interactable = true
hSV.BackgroundColor3 = Color3.new(1, 1, 1)
hSV.BackgroundTransparency = 1
hSV.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
hSV.BorderMode = Enum.BorderMode.Outline
hSV.BorderSizePixel = 1
hSV.Parent = properties

local uIListLayout2 = Instance.new("UIListLayout")
uIListLayout2.Name = "UIListLayout"
uIListLayout2.FillDirection = Enum.FillDirection.Horizontal
uIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
uIListLayout2.HorizontalFlex = Enum.UIFlexAlignment.None
uIListLayout2.ItemLineAlignment = Enum.ItemLineAlignment.Automatic
uIListLayout2.Padding = UDim.new(0, 0)
uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Top
uIListLayout2.VerticalFlex = Enum.UIFlexAlignment.None
uIListLayout2.Wraps = false
uIListLayout2.Parent = hSV

local h = Instance.new("Frame")
h.Name = "H"
h.AutoLocalize = true
h.Active = false
h.AnchorPoint = Vector2.new(0, 0)
h.AutomaticSize = Enum.AutomaticSize.None
h.ClipsDescendants = false
h.Position = UDim2.new(0, 0, 0, 0)
h.Size = UDim2.new(0.30000001192092896, 0, 1, 0)
h.SizeConstraint = Enum.SizeConstraint.RelativeXY
h.Rotation = 0
h.LayoutOrder = 0
h.ZIndex = 1
h.Visible = true
h.Selectable = false
h.SelectionGroup = false
h.Interactable = true
h.BackgroundColor3 = Color3.new(1, 1, 1)
h.BackgroundTransparency = 1
h.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
h.BorderMode = Enum.BorderMode.Outline
h.BorderSizePixel = 1
h.Parent = hSV

local textLabel4 = Instance.new("TextLabel")
textLabel4.Name = "TextLabel"
textLabel4.AutoLocalize = true
textLabel4.Active = false
textLabel4.AnchorPoint = Vector2.new(0, 0.5)
textLabel4.AutomaticSize = Enum.AutomaticSize.None
textLabel4.ClipsDescendants = false
textLabel4.Position = UDim2.new(0, 0, 0.5, 0)
textLabel4.Size = UDim2.new(0.20000000298023224, 0, 0.40000000596046448, 0)
textLabel4.SizeConstraint = Enum.SizeConstraint.RelativeXY
textLabel4.Rotation = 0
textLabel4.LayoutOrder = 0
textLabel4.ZIndex = 1
textLabel4.Visible = true
textLabel4.Selectable = false
textLabel4.SelectionGroup = false
textLabel4.Interactable = true
textLabel4.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel4.BackgroundTransparency = 1
textLabel4.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textLabel4.BorderMode = Enum.BorderMode.Outline
textLabel4.BorderSizePixel = 1
textLabel4.Text = "H"
textLabel4.Font = Enum.Font.GothamMedium
textLabel4.TextSize = 14
textLabel4.LineHeight = 1
textLabel4.MaxVisibleGraphemes = -1
textLabel4.RichText = false
textLabel4.TextColor3 = Color3.new(1, 1, 1)
textLabel4.TextTransparency = 0
textLabel4.TextStrokeColor3 = Color3.new(0, 0, 0)
textLabel4.TextStrokeTransparency = 1
textLabel4.TextScaled = true
textLabel4.TextWrapped = true
textLabel4.TextXAlignment = Enum.TextXAlignment.Center
textLabel4.TextYAlignment = Enum.TextYAlignment.Center
textLabel4.TextDirection = Enum.TextDirection.Auto
textLabel4.TextTruncate = Enum.TextTruncate.None
textLabel4.OpenTypeFeatures = ""
textLabel4.Parent = h

local frame6 = Instance.new("Frame")
frame6.Name = "Frame"
frame6.AutoLocalize = true
frame6.Active = false
frame6.AnchorPoint = Vector2.new(0, 0.5)
frame6.AutomaticSize = Enum.AutomaticSize.None
frame6.ClipsDescendants = false
frame6.Position = UDim2.new(0.30000001192092896, 0, 0.5, 0)
frame6.Size = UDim2.new(0.60000002384185791, 0, 0.60000002384185791, 0)
frame6.SizeConstraint = Enum.SizeConstraint.RelativeXY
frame6.Rotation = 0
frame6.LayoutOrder = 0
frame6.ZIndex = 1
frame6.Visible = true
frame6.Selectable = false
frame6.SelectionGroup = false
frame6.Interactable = true
frame6.BackgroundColor3 = Color3.new(0.14117647707462311, 0.14117647707462311, 0.18039216101169586)
frame6.BackgroundTransparency = 0
frame6.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
frame6.BorderMode = Enum.BorderMode.Outline
frame6.BorderSizePixel = 0
frame6.Parent = h

local uICorner5 = Instance.new("UICorner")
uICorner5.Name = "UICorner"
uICorner5.CornerRadius = UDim.new(0.30000001192092896, 0)
uICorner5.Parent = frame6

local textBox4 = Instance.new("TextBox")
textBox4.Name = "TextBox"
textBox4.AutoLocalize = true
textBox4.Active = true
textBox4.AnchorPoint = Vector2.new(0.5, 0.5)
textBox4.AutomaticSize = Enum.AutomaticSize.None
textBox4.ClipsDescendants = false
textBox4.Position = UDim2.new(0.5, 0, 0.5, 0)
textBox4.Size = UDim2.new(1, 0, 0.60000002384185791, 0)
textBox4.SizeConstraint = Enum.SizeConstraint.RelativeXY
textBox4.Rotation = 0
textBox4.LayoutOrder = 0
textBox4.ZIndex = 1
textBox4.Visible = true
textBox4.Selectable = true
textBox4.SelectionGroup = false
textBox4.Interactable = true
textBox4.BackgroundColor3 = Color3.new(1, 1, 1)
textBox4.BackgroundTransparency = 1
textBox4.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textBox4.BorderMode = Enum.BorderMode.Outline
textBox4.BorderSizePixel = 1
textBox4.Text = "0"
textBox4.Font = Enum.Font.GothamMedium
textBox4.TextSize = 14
textBox4.LineHeight = 1
textBox4.MaxVisibleGraphemes = -1
textBox4.RichText = false
textBox4.TextColor3 = Color3.new(1, 1, 1)
textBox4.TextTransparency = 0
textBox4.TextStrokeColor3 = Color3.new(0, 0, 0)
textBox4.TextStrokeTransparency = 1
textBox4.TextScaled = true
textBox4.TextWrapped = true
textBox4.TextXAlignment = Enum.TextXAlignment.Center
textBox4.TextYAlignment = Enum.TextYAlignment.Center
textBox4.TextDirection = Enum.TextDirection.Auto
textBox4.TextTruncate = Enum.TextTruncate.None
textBox4.OpenTypeFeatures = ""
textBox4.ClearTextOnFocus = false
textBox4.MultiLine = false
textBox4.PlaceholderColor3 = Color3.new(0.69999998807907104, 0.69999998807907104, 0.69999998807907104)
textBox4.PlaceholderText = "H (0-360)"
textBox4.ShowNativeInput = true
textBox4.TextEditable = true
textBox4.Parent = frame6

local s = Instance.new("Frame")
s.Name = "S"
s.AutoLocalize = true
s.Active = false
s.AnchorPoint = Vector2.new(0, 0)
s.AutomaticSize = Enum.AutomaticSize.None
s.ClipsDescendants = false
s.Position = UDim2.new(0, 0, 0, 0)
s.Size = UDim2.new(0.30000001192092896, 0, 1, 0)
s.SizeConstraint = Enum.SizeConstraint.RelativeXY
s.Rotation = 0
s.LayoutOrder = 0
s.ZIndex = 1
s.Visible = true
s.Selectable = false
s.SelectionGroup = false
s.Interactable = true
s.BackgroundColor3 = Color3.new(1, 1, 1)
s.BackgroundTransparency = 1
s.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
s.BorderMode = Enum.BorderMode.Outline
s.BorderSizePixel = 1
s.Parent = hSV

local textLabel5 = Instance.new("TextLabel")
textLabel5.Name = "TextLabel"
textLabel5.AutoLocalize = true
textLabel5.Active = false
textLabel5.AnchorPoint = Vector2.new(0, 0.5)
textLabel5.AutomaticSize = Enum.AutomaticSize.None
textLabel5.ClipsDescendants = false
textLabel5.Position = UDim2.new(0, 0, 0.5, 0)
textLabel5.Size = UDim2.new(0.20000000298023224, 0, 0.40000000596046448, 0)
textLabel5.SizeConstraint = Enum.SizeConstraint.RelativeXY
textLabel5.Rotation = 0
textLabel5.LayoutOrder = 0
textLabel5.ZIndex = 1
textLabel5.Visible = true
textLabel5.Selectable = false
textLabel5.SelectionGroup = false
textLabel5.Interactable = true
textLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel5.BackgroundTransparency = 1
textLabel5.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textLabel5.BorderMode = Enum.BorderMode.Outline
textLabel5.BorderSizePixel = 1
textLabel5.Text = "S"
textLabel5.Font = Enum.Font.GothamMedium
textLabel5.TextSize = 14
textLabel5.LineHeight = 1
textLabel5.MaxVisibleGraphemes = -1
textLabel5.RichText = false
textLabel5.TextColor3 = Color3.new(1, 1, 1)
textLabel5.TextTransparency = 0
textLabel5.TextStrokeColor3 = Color3.new(0, 0, 0)
textLabel5.TextStrokeTransparency = 1
textLabel5.TextScaled = true
textLabel5.TextWrapped = true
textLabel5.TextXAlignment = Enum.TextXAlignment.Center
textLabel5.TextYAlignment = Enum.TextYAlignment.Center
textLabel5.TextDirection = Enum.TextDirection.Auto
textLabel5.TextTruncate = Enum.TextTruncate.None
textLabel5.OpenTypeFeatures = ""
textLabel5.Parent = s

local frame7 = Instance.new("Frame")
frame7.Name = "Frame"
frame7.AutoLocalize = true
frame7.Active = false
frame7.AnchorPoint = Vector2.new(0, 0.5)
frame7.AutomaticSize = Enum.AutomaticSize.None
frame7.ClipsDescendants = false
frame7.Position = UDim2.new(0.30000001192092896, 0, 0.5, 0)
frame7.Size = UDim2.new(0.60000002384185791, 0, 0.60000002384185791, 0)
frame7.SizeConstraint = Enum.SizeConstraint.RelativeXY
frame7.Rotation = 0
frame7.LayoutOrder = 0
frame7.ZIndex = 1
frame7.Visible = true
frame7.Selectable = false
frame7.SelectionGroup = false
frame7.Interactable = true
frame7.BackgroundColor3 = Color3.new(0.14117647707462311, 0.14117647707462311, 0.18039216101169586)
frame7.BackgroundTransparency = 0
frame7.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
frame7.BorderMode = Enum.BorderMode.Outline
frame7.BorderSizePixel = 0
frame7.Parent = s

local uICorner6 = Instance.new("UICorner")
uICorner6.Name = "UICorner"
uICorner6.CornerRadius = UDim.new(0.30000001192092896, 0)
uICorner6.Parent = frame7

local textBox5 = Instance.new("TextBox")
textBox5.Name = "TextBox"
textBox5.AutoLocalize = true
textBox5.Active = true
textBox5.AnchorPoint = Vector2.new(0.5, 0.5)
textBox5.AutomaticSize = Enum.AutomaticSize.None
textBox5.ClipsDescendants = false
textBox5.Position = UDim2.new(0.5, 0, 0.5, 0)
textBox5.Size = UDim2.new(1, 0, 0.60000002384185791, 0)
textBox5.SizeConstraint = Enum.SizeConstraint.RelativeXY
textBox5.Rotation = 0
textBox5.LayoutOrder = 0
textBox5.ZIndex = 1
textBox5.Visible = true
textBox5.Selectable = true
textBox5.SelectionGroup = false
textBox5.Interactable = true
textBox5.BackgroundColor3 = Color3.new(1, 1, 1)
textBox5.BackgroundTransparency = 1
textBox5.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textBox5.BorderMode = Enum.BorderMode.Outline
textBox5.BorderSizePixel = 1
textBox5.Text = "1"
textBox5.Font = Enum.Font.GothamMedium
textBox5.TextSize = 14
textBox5.LineHeight = 1
textBox5.MaxVisibleGraphemes = -1
textBox5.RichText = false
textBox5.TextColor3 = Color3.new(1, 1, 1)
textBox5.TextTransparency = 0
textBox5.TextStrokeColor3 = Color3.new(0, 0, 0)
textBox5.TextStrokeTransparency = 1
textBox5.TextScaled = true
textBox5.TextWrapped = true
textBox5.TextXAlignment = Enum.TextXAlignment.Center
textBox5.TextYAlignment = Enum.TextYAlignment.Center
textBox5.TextDirection = Enum.TextDirection.Auto
textBox5.TextTruncate = Enum.TextTruncate.None
textBox5.OpenTypeFeatures = ""
textBox5.ClearTextOnFocus = false
textBox5.MultiLine = false
textBox5.PlaceholderColor3 = Color3.new(0.69999998807907104, 0.69999998807907104, 0.69999998807907104)
textBox5.PlaceholderText = "S (0-1)"
textBox5.ShowNativeInput = true
textBox5.TextEditable = true
textBox5.Parent = frame7

local v = Instance.new("Frame")
v.Name = "V"
v.AutoLocalize = true
v.Active = false
v.AnchorPoint = Vector2.new(0, 0)
v.AutomaticSize = Enum.AutomaticSize.None
v.ClipsDescendants = false
v.Position = UDim2.new(0, 0, 0, 0)
v.Size = UDim2.new(0.30000001192092896, 0, 1, 0)
v.SizeConstraint = Enum.SizeConstraint.RelativeXY
v.Rotation = 0
v.LayoutOrder = 0
v.ZIndex = 1
v.Visible = true
v.Selectable = false
v.SelectionGroup = false
v.Interactable = true
v.BackgroundColor3 = Color3.new(1, 1, 1)
v.BackgroundTransparency = 1
v.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
v.BorderMode = Enum.BorderMode.Outline
v.BorderSizePixel = 1
v.Parent = hSV

local textLabel6 = Instance.new("TextLabel")
textLabel6.Name = "TextLabel"
textLabel6.AutoLocalize = true
textLabel6.Active = false
textLabel6.AnchorPoint = Vector2.new(0, 0.5)
textLabel6.AutomaticSize = Enum.AutomaticSize.None
textLabel6.ClipsDescendants = false
textLabel6.Position = UDim2.new(0, 0, 0.5, 0)
textLabel6.Size = UDim2.new(0.20000000298023224, 0, 0.40000000596046448, 0)
textLabel6.SizeConstraint = Enum.SizeConstraint.RelativeXY
textLabel6.Rotation = 0
textLabel6.LayoutOrder = 0
textLabel6.ZIndex = 1
textLabel6.Visible = true
textLabel6.Selectable = false
textLabel6.SelectionGroup = false
textLabel6.Interactable = true
textLabel6.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel6.BackgroundTransparency = 1
textLabel6.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textLabel6.BorderMode = Enum.BorderMode.Outline
textLabel6.BorderSizePixel = 1
textLabel6.Text = "V"
textLabel6.Font = Enum.Font.GothamMedium
textLabel6.TextSize = 14
textLabel6.LineHeight = 1
textLabel6.MaxVisibleGraphemes = -1
textLabel6.RichText = false
textLabel6.TextColor3 = Color3.new(1, 1, 1)
textLabel6.TextTransparency = 0
textLabel6.TextStrokeColor3 = Color3.new(0, 0, 0)
textLabel6.TextStrokeTransparency = 1
textLabel6.TextScaled = true
textLabel6.TextWrapped = true
textLabel6.TextXAlignment = Enum.TextXAlignment.Center
textLabel6.TextYAlignment = Enum.TextYAlignment.Center
textLabel6.TextDirection = Enum.TextDirection.Auto
textLabel6.TextTruncate = Enum.TextTruncate.None
textLabel6.OpenTypeFeatures = ""
textLabel6.Parent = v

local frame8 = Instance.new("Frame")
frame8.Name = "Frame"
frame8.AutoLocalize = true
frame8.Active = false
frame8.AnchorPoint = Vector2.new(0, 0.5)
frame8.AutomaticSize = Enum.AutomaticSize.None
frame8.ClipsDescendants = false
frame8.Position = UDim2.new(0.30000001192092896, 0, 0.5, 0)
frame8.Size = UDim2.new(0.60000002384185791, 0, 0.60000002384185791, 0)
frame8.SizeConstraint = Enum.SizeConstraint.RelativeXY
frame8.Rotation = 0
frame8.LayoutOrder = 0
frame8.ZIndex = 1
frame8.Visible = true
frame8.Selectable = false
frame8.SelectionGroup = false
frame8.Interactable = true
frame8.BackgroundColor3 = Color3.new(0.14117647707462311, 0.14117647707462311, 0.18039216101169586)
frame8.BackgroundTransparency = 0
frame8.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
frame8.BorderMode = Enum.BorderMode.Outline
frame8.BorderSizePixel = 0
frame8.Parent = v

local uICorner7 = Instance.new("UICorner")
uICorner7.Name = "UICorner"
uICorner7.CornerRadius = UDim.new(0.30000001192092896, 0)
uICorner7.Parent = frame8

local textBox6 = Instance.new("TextBox")
textBox6.Name = "TextBox"
textBox6.AutoLocalize = true
textBox6.Active = true
textBox6.AnchorPoint = Vector2.new(0.5, 0.5)
textBox6.AutomaticSize = Enum.AutomaticSize.None
textBox6.ClipsDescendants = false
textBox6.Position = UDim2.new(0.5, 0, 0.5, 0)
textBox6.Size = UDim2.new(1, 0, 0.60000002384185791, 0)
textBox6.SizeConstraint = Enum.SizeConstraint.RelativeXY
textBox6.Rotation = 0
textBox6.LayoutOrder = 0
textBox6.ZIndex = 1
textBox6.Visible = true
textBox6.Selectable = true
textBox6.SelectionGroup = false
textBox6.Interactable = true
textBox6.BackgroundColor3 = Color3.new(1, 1, 1)
textBox6.BackgroundTransparency = 1
textBox6.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textBox6.BorderMode = Enum.BorderMode.Outline
textBox6.BorderSizePixel = 1
textBox6.Text = "1"
textBox6.Font = Enum.Font.GothamMedium
textBox6.TextSize = 14
textBox6.LineHeight = 1
textBox6.MaxVisibleGraphemes = -1
textBox6.RichText = false
textBox6.TextColor3 = Color3.new(1, 1, 1)
textBox6.TextTransparency = 0
textBox6.TextStrokeColor3 = Color3.new(0, 0, 0)
textBox6.TextStrokeTransparency = 1
textBox6.TextScaled = true
textBox6.TextWrapped = true
textBox6.TextXAlignment = Enum.TextXAlignment.Center
textBox6.TextYAlignment = Enum.TextYAlignment.Center
textBox6.TextDirection = Enum.TextDirection.Auto
textBox6.TextTruncate = Enum.TextTruncate.None
textBox6.OpenTypeFeatures = ""
textBox6.ClearTextOnFocus = false
textBox6.MultiLine = false
textBox6.PlaceholderColor3 = Color3.new(0.69999998807907104, 0.69999998807907104, 0.69999998807907104)
textBox6.PlaceholderText = "V (0-1)"
textBox6.ShowNativeInput = true
textBox6.TextEditable = true
textBox6.Parent = frame8

local line = Instance.new("Frame")
line.Name = "Line"
line.AutoLocalize = true
line.Active = false
line.AnchorPoint = Vector2.new(0.5, 0.5)
line.AutomaticSize = Enum.AutomaticSize.None
line.ClipsDescendants = false
line.Position = UDim2.new(0.5, 0, 0.5, 0)
line.Size = UDim2.new(0.94999998807907104, 0, 0, 2)
line.SizeConstraint = Enum.SizeConstraint.RelativeXY
line.Rotation = 0
line.LayoutOrder = 0
line.ZIndex = 1
line.Visible = true
line.Selectable = false
line.SelectionGroup = false
line.Interactable = true
line.BackgroundColor3 = Color3.new(0.14117647707462311, 0.14117647707462311, 0.18039216101169586)
line.BackgroundTransparency = 0
line.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
line.BorderMode = Enum.BorderMode.Outline
line.BorderSizePixel = 0
line.Parent = properties

local uICorner8 = Instance.new("UICorner")
uICorner8.Name = "UICorner"
uICorner8.CornerRadius = UDim.new(0.16500000655651093, 0)
uICorner8.Parent = properties

local content = Instance.new("Frame")
content.Name = "Content"
content.AutoLocalize = true
content.Active = false
content.AnchorPoint = Vector2.new(0, 1)
content.AutomaticSize = Enum.AutomaticSize.None
content.ClipsDescendants = false
content.Position = UDim2.new(0, 0, 1, 0)
content.Size = UDim2.new(1, 0, 0.89999997615814209, 0)
content.SizeConstraint = Enum.SizeConstraint.RelativeXY
content.Rotation = 0
content.LayoutOrder = 0
content.ZIndex = 1
content.Visible = true
content.Selectable = false
content.SelectionGroup = false
content.Interactable = true
content.BackgroundColor3 = Color3.new(0.10196078568696976, 0.10196078568696976, 0.14117647707462311)
content.BackgroundTransparency = 1
content.BorderColor3 = Color3.new(0, 0, 0)
content.BorderMode = Enum.BorderMode.Outline
content.BorderSizePixel = 0
content.Parent = colorWindow

local bottom = Instance.new("Frame")
bottom.Name = "Bottom"
bottom.AutoLocalize = true
bottom.Active = false
bottom.AnchorPoint = Vector2.new(0, 1)
bottom.AutomaticSize = Enum.AutomaticSize.None
bottom.ClipsDescendants = false
bottom.Position = UDim2.new(0, 0, 1, 0)
bottom.Size = UDim2.new(1, 0, 0.15000000596046448, 0)
bottom.SizeConstraint = Enum.SizeConstraint.RelativeXY
bottom.Rotation = 0
bottom.LayoutOrder = 0
bottom.ZIndex = 1
bottom.Visible = true
bottom.Selectable = false
bottom.SelectionGroup = false
bottom.Interactable = true
bottom.BackgroundColor3 = Color3.new(1, 1, 1)
bottom.BackgroundTransparency = 1
bottom.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
bottom.BorderMode = Enum.BorderMode.Outline
bottom.BorderSizePixel = 1
bottom.Parent = content

local color = Instance.new("Frame")
color.Name = "Color"
color.AutoLocalize = true
color.Active = false
color.AnchorPoint = Vector2.new(0, 0)
color.AutomaticSize = Enum.AutomaticSize.None
color.ClipsDescendants = false
color.Position = UDim2.new(0, 0, 0, 0)
color.Size = UDim2.new(1, 0, 1, 0)
color.SizeConstraint = Enum.SizeConstraint.RelativeXY
color.Rotation = 0
color.LayoutOrder = 0
color.ZIndex = 1
color.Visible = true
color.Selectable = false
color.SelectionGroup = false
color.Interactable = true
color.BackgroundColor3 = Color3.new(1, 1, 1)
color.BackgroundTransparency = 1
color.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
color.BorderMode = Enum.BorderMode.Outline
color.BorderSizePixel = 1
color.Parent = bottom

local uIAspectRatioConstraint2 = Instance.new("UIAspectRatioConstraint")
uIAspectRatioConstraint2.Name = "UIAspectRatioConstraint"
uIAspectRatioConstraint2.AspectRatio = 1
uIAspectRatioConstraint2.AspectType = Enum.AspectType.FitWithinMaxSize
uIAspectRatioConstraint2.DominantAxis = Enum.DominantAxis.Width
uIAspectRatioConstraint2.Parent = color

local frame9 = Instance.new("Frame")
frame9.Name = "Frame"
frame9.AutoLocalize = true
frame9.Active = false
frame9.AnchorPoint = Vector2.new(0.5, 0.5)
frame9.AutomaticSize = Enum.AutomaticSize.None
frame9.ClipsDescendants = false
frame9.Position = UDim2.new(0.5, 0, 0.5, 0)
frame9.Size = UDim2.new(0.80000001192092896, 0, 0.80000001192092896, 0)
frame9.SizeConstraint = Enum.SizeConstraint.RelativeXY
frame9.Rotation = 0
frame9.LayoutOrder = 0
frame9.ZIndex = 1
frame9.Visible = true
frame9.Selectable = false
frame9.SelectionGroup = false
frame9.Interactable = true
frame9.BackgroundColor3 = Color3.new(1, 1, 1)
frame9.BackgroundTransparency = 0
frame9.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
frame9.BorderMode = Enum.BorderMode.Outline
frame9.BorderSizePixel = 0
frame9.Parent = color

local uICorner9 = Instance.new("UICorner")
uICorner9.Name = "UICorner"
uICorner9.CornerRadius = UDim.new(0.34999999403953552, 0)
uICorner9.Parent = frame9

local buttons = Instance.new("Frame")
buttons.Name = "Buttons"
buttons.AutoLocalize = true
buttons.Active = false
buttons.AnchorPoint = Vector2.new(0, 0.5)
buttons.AutomaticSize = Enum.AutomaticSize.None
buttons.ClipsDescendants = false
buttons.Position = UDim2.new(0.20000000298023224, 0, 0.5, 0)
buttons.Size = UDim2.new(0.30000001192092896, 0, 0.80000001192092896, 0)
buttons.SizeConstraint = Enum.SizeConstraint.RelativeXY
buttons.Rotation = 0
buttons.LayoutOrder = 0
buttons.ZIndex = 1
buttons.Visible = true
buttons.Selectable = false
buttons.SelectionGroup = false
buttons.Interactable = true
buttons.BackgroundColor3 = Color3.new(1, 1, 1)
buttons.BackgroundTransparency = 1
buttons.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
buttons.BorderMode = Enum.BorderMode.Outline
buttons.BorderSizePixel = 1
buttons.Parent = bottom

local cancel = Instance.new("ImageButton")
cancel.Name = "Cancel"
cancel.AutoLocalize = true
cancel.Active = true
cancel.AnchorPoint = Vector2.new(1, 0)
cancel.AutomaticSize = Enum.AutomaticSize.None
cancel.ClipsDescendants = false
cancel.Position = UDim2.new(1, 0, 0, 0)
cancel.Size = UDim2.new(1, 0, 1, 0)
cancel.SizeConstraint = Enum.SizeConstraint.RelativeXY
cancel.Rotation = 0
cancel.LayoutOrder = 0
cancel.ZIndex = 1
cancel.Visible = true
cancel.Selectable = true
cancel.SelectionGroup = false
cancel.Interactable = true
cancel.BackgroundColor3 = Color3.new(1, 1, 1)
cancel.BackgroundTransparency = 1
cancel.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
cancel.BorderMode = Enum.BorderMode.Outline
cancel.BorderSizePixel = 1
cancel.AutoButtonColor = true
cancel.Modal = false
cancel.Selected = false
cancel.Style = Enum.ButtonStyle.Custom
cancel.Image = "rbxassetid://3192543734"
cancel.ImageColor3 = Color3.new(1, 1, 1)
cancel.ImageTransparency = 0
cancel.ScaleType = Enum.ScaleType.Stretch
cancel.SliceCenter = Rect.new(0, 0, 0, 0)
cancel.SliceScale = 1
cancel.TileSize = UDim2.new(1, 0, 1, 0)
cancel.ImageRectOffset = Vector2.new(0, 0)
cancel.ImageRectSize = Vector2.new(0, 0)
cancel.ResampleMode = Enum.ResamplerMode.Default
cancel.HoverImage = ""
cancel.PressedImage = ""
cancel.Parent = buttons

local uIAspectRatioConstraint3 = Instance.new("UIAspectRatioConstraint")
uIAspectRatioConstraint3.Name = "UIAspectRatioConstraint"
uIAspectRatioConstraint3.AspectRatio = 1
uIAspectRatioConstraint3.AspectType = Enum.AspectType.FitWithinMaxSize
uIAspectRatioConstraint3.DominantAxis = Enum.DominantAxis.Width
uIAspectRatioConstraint3.Parent = cancel

local confirm = Instance.new("ImageButton")
confirm.Name = "Confirm"
confirm.AutoLocalize = true
confirm.Active = true
confirm.AnchorPoint = Vector2.new(0, 0)
confirm.AutomaticSize = Enum.AutomaticSize.None
confirm.ClipsDescendants = false
confirm.Position = UDim2.new(0, 0, 0, 0)
confirm.Size = UDim2.new(1, 0, 1, 0)
confirm.SizeConstraint = Enum.SizeConstraint.RelativeXY
confirm.Rotation = 0
confirm.LayoutOrder = 0
confirm.ZIndex = 1
confirm.Visible = true
confirm.Selectable = true
confirm.SelectionGroup = false
confirm.Interactable = true
confirm.BackgroundColor3 = Color3.new(1, 1, 1)
confirm.BackgroundTransparency = 1
confirm.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
confirm.BorderMode = Enum.BorderMode.Outline
confirm.BorderSizePixel = 1
confirm.AutoButtonColor = true
confirm.Modal = false
confirm.Selected = false
confirm.Style = Enum.ButtonStyle.Custom
confirm.Image = "rbxassetid://4510424237"
confirm.ImageColor3 = Color3.new(1, 1, 1)
confirm.ImageTransparency = 0
confirm.ScaleType = Enum.ScaleType.Stretch
confirm.SliceCenter = Rect.new(0, 0, 0, 0)
confirm.SliceScale = 1
confirm.TileSize = UDim2.new(1, 0, 1, 0)
confirm.ImageRectOffset = Vector2.new(0, 0)
confirm.ImageRectSize = Vector2.new(0, 0)
confirm.ResampleMode = Enum.ResamplerMode.Default
confirm.HoverImage = ""
confirm.PressedImage = ""
confirm.Parent = buttons

local uIAspectRatioConstraint4 = Instance.new("UIAspectRatioConstraint")
uIAspectRatioConstraint4.Name = "UIAspectRatioConstraint"
uIAspectRatioConstraint4.AspectRatio = 1
uIAspectRatioConstraint4.AspectType = Enum.AspectType.FitWithinMaxSize
uIAspectRatioConstraint4.DominantAxis = Enum.DominantAxis.Width
uIAspectRatioConstraint4.Parent = confirm

local hex = Instance.new("Frame")
hex.Name = "Hex"
hex.AutoLocalize = true
hex.Active = false
hex.AnchorPoint = Vector2.new(0, 0)
hex.AutomaticSize = Enum.AutomaticSize.None
hex.ClipsDescendants = false
hex.Position = UDim2.new(0.55000001192092896, 0, 0, 0)
hex.Size = UDim2.new(0.40000000596046448, 0, 1, 0)
hex.SizeConstraint = Enum.SizeConstraint.RelativeXY
hex.Rotation = 0
hex.LayoutOrder = 0
hex.ZIndex = 1
hex.Visible = true
hex.Selectable = false
hex.SelectionGroup = false
hex.Interactable = true
hex.BackgroundColor3 = Color3.new(1, 1, 1)
hex.BackgroundTransparency = 1
hex.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
hex.BorderMode = Enum.BorderMode.Outline
hex.BorderSizePixel = 1
hex.Parent = bottom

local frame10 = Instance.new("Frame")
frame10.Name = "Frame"
frame10.AutoLocalize = true
frame10.Active = false
frame10.AnchorPoint = Vector2.new(0.5, 0.5)
frame10.AutomaticSize = Enum.AutomaticSize.None
frame10.ClipsDescendants = false
frame10.Position = UDim2.new(0.5, 0, 0.5, 0)
frame10.Size = UDim2.new(0.80000001192092896, 0, 0.60000002384185791, 0)
frame10.SizeConstraint = Enum.SizeConstraint.RelativeXY
frame10.Rotation = 0
frame10.LayoutOrder = 0
frame10.ZIndex = 1
frame10.Visible = true
frame10.Selectable = false
frame10.SelectionGroup = false
frame10.Interactable = true
frame10.BackgroundColor3 = Color3.new(0.14117647707462311, 0.14117647707462311, 0.18039216101169586)
frame10.BackgroundTransparency = 0
frame10.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
frame10.BorderMode = Enum.BorderMode.Outline
frame10.BorderSizePixel = 0
frame10.Parent = hex

local uICorner10 = Instance.new("UICorner")
uICorner10.Name = "UICorner"
uICorner10.CornerRadius = UDim.new(0.30000001192092896, 0)
uICorner10.Parent = frame10

local textBox7 = Instance.new("TextBox")
textBox7.Name = "TextBox"
textBox7.AutoLocalize = true
textBox7.Active = true
textBox7.AnchorPoint = Vector2.new(0.5, 0.5)
textBox7.AutomaticSize = Enum.AutomaticSize.None
textBox7.ClipsDescendants = false
textBox7.Position = UDim2.new(0.5, 0, 0.5, 0)
textBox7.Size = UDim2.new(1, 0, 0.60000002384185791, 0)
textBox7.SizeConstraint = Enum.SizeConstraint.RelativeXY
textBox7.Rotation = 0
textBox7.LayoutOrder = 0
textBox7.ZIndex = 1
textBox7.Visible = true
textBox7.Selectable = true
textBox7.SelectionGroup = false
textBox7.Interactable = true
textBox7.BackgroundColor3 = Color3.new(1, 1, 1)
textBox7.BackgroundTransparency = 1
textBox7.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
textBox7.BorderMode = Enum.BorderMode.Outline
textBox7.BorderSizePixel = 1
textBox7.Text = "#ffffff"
textBox7.Font = Enum.Font.GothamMedium
textBox7.TextSize = 14
textBox7.LineHeight = 1
textBox7.MaxVisibleGraphemes = -1
textBox7.RichText = false
textBox7.TextColor3 = Color3.new(1, 1, 1)
textBox7.TextTransparency = 0
textBox7.TextStrokeColor3 = Color3.new(0, 0, 0)
textBox7.TextStrokeTransparency = 1
textBox7.TextScaled = true
textBox7.TextWrapped = true
textBox7.TextXAlignment = Enum.TextXAlignment.Center
textBox7.TextYAlignment = Enum.TextYAlignment.Center
textBox7.TextDirection = Enum.TextDirection.Auto
textBox7.TextTruncate = Enum.TextTruncate.None
textBox7.OpenTypeFeatures = ""
textBox7.ClearTextOnFocus = false
textBox7.MultiLine = false
textBox7.PlaceholderColor3 = Color3.new(0.69999998807907104, 0.69999998807907104, 0.69999998807907104)
textBox7.PlaceholderText = "Hex Code"
textBox7.ShowNativeInput = true
textBox7.TextEditable = true
textBox7.Parent = frame10

local invalidStroke = Instance.new("UIStroke")
invalidStroke.Name = "InvalidStroke"
invalidStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
invalidStroke.Color = Color3.new(1, 0.29411765933036804, 0.29411765933036804)
invalidStroke.Enabled = false
invalidStroke.LineJoinMode = Enum.LineJoinMode.Round
invalidStroke.Thickness = 2
invalidStroke.Transparency = 0
invalidStroke.Parent = frame10

local right = Instance.new("Frame")
right.Name = "Right"
right.AutoLocalize = true
right.Active = false
right.AnchorPoint = Vector2.new(1, 0)
right.AutomaticSize = Enum.AutomaticSize.None
right.ClipsDescendants = false
right.Position = UDim2.new(1, 0, 0, 0)
right.Size = UDim2.new(0.30000001192092896, 0, 0.85000002384185791, 0)
right.SizeConstraint = Enum.SizeConstraint.RelativeXY
right.Rotation = 0
right.LayoutOrder = 0
right.ZIndex = 1
right.Visible = true
right.Selectable = false
right.SelectionGroup = false
right.Interactable = true
right.BackgroundColor3 = Color3.new(1, 1, 1)
right.BackgroundTransparency = 1
right.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
right.BorderMode = Enum.BorderMode.Outline
right.BorderSizePixel = 1
right.Parent = content

local value = Instance.new("Frame")
value.Name = "Value"
value.AutoLocalize = true
value.Active = false
value.AnchorPoint = Vector2.new(0.5, 0.5)
value.AutomaticSize = Enum.AutomaticSize.None
value.ClipsDescendants = false
value.Position = UDim2.new(0.25, 0, 0.5, 0)
value.Size = UDim2.new(0.80000001192092896, 0, 0.80000001192092896, 0)
value.SizeConstraint = Enum.SizeConstraint.RelativeXY
value.Rotation = 0
value.LayoutOrder = 0
value.ZIndex = 1
value.Visible = true
value.Selectable = false
value.SelectionGroup = false
value.Interactable = true
value.BackgroundColor3 = Color3.new(1, 1, 1)
value.BackgroundTransparency = 0
value.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
value.BorderMode = Enum.BorderMode.Outline
value.BorderSizePixel = 0
value.Parent = right

local uIGradient = Instance.new("UIGradient")
uIGradient.Name = "UIGradient"
uIGradient.Enabled = true
uIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))})
uIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)})
uIGradient.Offset = Vector2.new(0, 0)
uIGradient.Rotation = 90
uIGradient.Parent = value

local select = Instance.new("Frame")
select.Name = "Select"
select.AutoLocalize = true
select.Active = false
select.AnchorPoint = Vector2.new(0, 0.5)
select.AutomaticSize = Enum.AutomaticSize.None
select.ClipsDescendants = false
select.Position = UDim2.new(0, 0, 0, 0)
select.Size = UDim2.new(1, 0, 1, 0)
select.SizeConstraint = Enum.SizeConstraint.RelativeXY
select.Rotation = 0
select.LayoutOrder = 0
select.ZIndex = 1
select.Visible = true
select.Selectable = false
select.SelectionGroup = false
select.Interactable = true
select.BackgroundColor3 = Color3.new(1, 1, 1)
select.BackgroundTransparency = 1
select.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
select.BorderMode = Enum.BorderMode.Outline
select.BorderSizePixel = 1
select.Parent = value

local uIAspectRatioConstraint5 = Instance.new("UIAspectRatioConstraint")
uIAspectRatioConstraint5.Name = "UIAspectRatioConstraint"
uIAspectRatioConstraint5.AspectRatio = 4
uIAspectRatioConstraint5.AspectType = Enum.AspectType.FitWithinMaxSize
uIAspectRatioConstraint5.DominantAxis = Enum.DominantAxis.Width
uIAspectRatioConstraint5.Parent = select

local select2 = Instance.new("Frame")
select2.Name = "Select"
select2.AutoLocalize = true
select2.Active = false
select2.AnchorPoint = Vector2.new(0.5, 0.5)
select2.AutomaticSize = Enum.AutomaticSize.None
select2.ClipsDescendants = false
select2.Position = UDim2.new(0.5, 0, 0.5, 0)
select2.Size = UDim2.new(1.5, 0, 1.5, 0)
select2.SizeConstraint = Enum.SizeConstraint.RelativeXY
select2.Rotation = 0
select2.LayoutOrder = 0
select2.ZIndex = 1
select2.Visible = true
select2.Selectable = false
select2.SelectionGroup = false
select2.Interactable = true
select2.BackgroundColor3 = Color3.new(1, 1, 1)
select2.BackgroundTransparency = 1
select2.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
select2.BorderMode = Enum.BorderMode.Outline
select2.BorderSizePixel = 1
select2.Parent = select

local uICorner11 = Instance.new("UICorner")
uICorner11.Name = "UICorner"
uICorner11.CornerRadius = UDim.new(0.5, 0)
uICorner11.Parent = select2

local uIStroke = Instance.new("UIStroke")
uIStroke.Name = "UIStroke"
uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
uIStroke.Color = Color3.new(1, 1, 1)
uIStroke.Enabled = true
uIStroke.LineJoinMode = Enum.LineJoinMode.Round
uIStroke.Thickness = 2
uIStroke.Transparency = 0
uIStroke.Parent = select2

local button2 = Instance.new("TextButton")
button2.Name = "Button"
button2.AutoLocalize = true
button2.Active = true
button2.AnchorPoint = Vector2.new(0, 0)
button2.AutomaticSize = Enum.AutomaticSize.None
button2.ClipsDescendants = false
button2.Position = UDim2.new(0, 0, 0, 0)
button2.Size = UDim2.new(1, 0, 1, 0)
button2.SizeConstraint = Enum.SizeConstraint.RelativeXY
button2.Rotation = 0
button2.LayoutOrder = 0
button2.ZIndex = 99
button2.Visible = true
button2.Selectable = true
button2.SelectionGroup = false
button2.Interactable = true
button2.BackgroundColor3 = Color3.new(1, 1, 1)
button2.BackgroundTransparency = 1
button2.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
button2.BorderMode = Enum.BorderMode.Outline
button2.BorderSizePixel = 1
button2.AutoButtonColor = true
button2.Modal = false
button2.Selected = false
button2.Style = Enum.ButtonStyle.Custom
button2.Text = ""
button2.Font = Enum.Font.SourceSans
button2.TextSize = 14
button2.LineHeight = 1
button2.MaxVisibleGraphemes = -1
button2.RichText = false
button2.TextColor3 = Color3.new(0, 0, 0)
button2.TextTransparency = 0
button2.TextStrokeColor3 = Color3.new(0, 0, 0)
button2.TextStrokeTransparency = 1
button2.TextScaled = false
button2.TextWrapped = false
button2.TextXAlignment = Enum.TextXAlignment.Center
button2.TextYAlignment = Enum.TextYAlignment.Center
button2.TextDirection = Enum.TextDirection.Auto
button2.TextTruncate = Enum.TextTruncate.None
button2.OpenTypeFeatures = ""
button2.Parent = value

local uIAspectRatioConstraint6 = Instance.new("UIAspectRatioConstraint")
uIAspectRatioConstraint6.Name = "UIAspectRatioConstraint"
uIAspectRatioConstraint6.AspectRatio = 0.10000000149011612
uIAspectRatioConstraint6.AspectType = Enum.AspectType.FitWithinMaxSize
uIAspectRatioConstraint6.DominantAxis = Enum.DominantAxis.Width
uIAspectRatioConstraint6.Parent = value

local wheel = Instance.new("Frame")
wheel.Name = "Wheel"
wheel.AutoLocalize = true
wheel.Active = false
wheel.AnchorPoint = Vector2.new(0, 0)
wheel.AutomaticSize = Enum.AutomaticSize.None
wheel.ClipsDescendants = false
wheel.Position = UDim2.new(0, 0, 0, 0)
wheel.Size = UDim2.new(0.85000002384185791, 0, 0.85000002384185791, 0)
wheel.SizeConstraint = Enum.SizeConstraint.RelativeXY
wheel.Rotation = 0
wheel.LayoutOrder = 0
wheel.ZIndex = 1
wheel.Visible = true
wheel.Selectable = false
wheel.SelectionGroup = false
wheel.Interactable = true
wheel.BackgroundColor3 = Color3.new(1, 1, 1)
wheel.BackgroundTransparency = 1
wheel.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
wheel.BorderMode = Enum.BorderMode.Outline
wheel.BorderSizePixel = 1
wheel.Parent = content

local uIAspectRatioConstraint7 = Instance.new("UIAspectRatioConstraint")
uIAspectRatioConstraint7.Name = "UIAspectRatioConstraint"
uIAspectRatioConstraint7.AspectRatio = 1
uIAspectRatioConstraint7.AspectType = Enum.AspectType.FitWithinMaxSize
uIAspectRatioConstraint7.DominantAxis = Enum.DominantAxis.Width
uIAspectRatioConstraint7.Parent = wheel

local image = Instance.new("ImageLabel")
image.Name = "Image"
image.AutoLocalize = true
image.Active = false
image.AnchorPoint = Vector2.new(0.5, 0.5)
image.AutomaticSize = Enum.AutomaticSize.None
image.ClipsDescendants = false
image.Position = UDim2.new(0.5, 0, 0.5, 0)
image.Size = UDim2.new(0.80000001192092896, 0, 0.80000001192092896, 0)
image.SizeConstraint = Enum.SizeConstraint.RelativeXY
image.Rotation = 0
image.LayoutOrder = 0
image.ZIndex = 1
image.Visible = true
image.Selectable = false
image.SelectionGroup = false
image.Interactable = true
image.BackgroundColor3 = Color3.new(1, 1, 1)
image.BackgroundTransparency = 1
image.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
image.BorderMode = Enum.BorderMode.Outline
image.BorderSizePixel = 1
image.Image = "rbxassetid://117857197662540"
image.ImageColor3 = Color3.new(1, 1, 1)
image.ImageTransparency = 0
image.ScaleType = Enum.ScaleType.Stretch
image.SliceCenter = Rect.new(0, 0, 0, 0)
image.SliceScale = 1
image.TileSize = UDim2.new(1, 0, 1, 0)
image.ImageRectOffset = Vector2.new(0, 0)
image.ImageRectSize = Vector2.new(0, 0)
image.ResampleMode = Enum.ResamplerMode.Default
image.Parent = wheel

local select3 = Instance.new("Frame")
select3.Name = "Select"
select3.AutoLocalize = true
select3.Active = false
select3.AnchorPoint = Vector2.new(0.5, 0.5)
select3.AutomaticSize = Enum.AutomaticSize.None
select3.ClipsDescendants = false
select3.Position = UDim2.new(0.5, 0, 0.5, 0)
select3.Size = UDim2.new(0.059999998658895493, 0, 0.059999998658895493, 0)
select3.SizeConstraint = Enum.SizeConstraint.RelativeXY
select3.Rotation = 0
select3.LayoutOrder = 0
select3.ZIndex = 1
select3.Visible = true
select3.Selectable = false
select3.SelectionGroup = false
select3.Interactable = true
select3.BackgroundColor3 = Color3.new(1, 1, 1)
select3.BackgroundTransparency = 1
select3.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
select3.BorderMode = Enum.BorderMode.Outline
select3.BorderSizePixel = 1
select3.Parent = image

local uICorner12 = Instance.new("UICorner")
uICorner12.Name = "UICorner"
uICorner12.CornerRadius = UDim.new(0.5, 0)
uICorner12.Parent = select3

local uIStroke2 = Instance.new("UIStroke")
uIStroke2.Name = "UIStroke"
uIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
uIStroke2.Color = Color3.new(0, 0, 0)
uIStroke2.Enabled = true
uIStroke2.LineJoinMode = Enum.LineJoinMode.Round
uIStroke2.Thickness = 2
uIStroke2.Transparency = 0
uIStroke2.Parent = select3

local button3 = Instance.new("TextButton")
button3.Name = "Button"
button3.AutoLocalize = true
button3.Active = true
button3.AnchorPoint = Vector2.new(0, 0)
button3.AutomaticSize = Enum.AutomaticSize.None
button3.ClipsDescendants = false
button3.Position = UDim2.new(0, 0, 0, 0)
button3.Size = UDim2.new(1, 0, 1, 0)
button3.SizeConstraint = Enum.SizeConstraint.RelativeXY
button3.Rotation = 0
button3.LayoutOrder = 0
button3.ZIndex = 99
button3.Visible = true
button3.Selectable = true
button3.SelectionGroup = false
button3.Interactable = true
button3.BackgroundColor3 = Color3.new(1, 1, 1)
button3.BackgroundTransparency = 1
button3.BorderColor3 = Color3.new(0.10588236153125763, 0.16470588743686676, 0.20784315466880798)
button3.BorderMode = Enum.BorderMode.Outline
button3.BorderSizePixel = 1
button3.AutoButtonColor = true
button3.Modal = false
button3.Selected = false
button3.Style = Enum.ButtonStyle.Custom
button3.Text = ""
button3.Font = Enum.Font.SourceSans
button3.TextSize = 14
button3.LineHeight = 1
button3.MaxVisibleGraphemes = -1
button3.RichText = false
button3.TextColor3 = Color3.new(0, 0, 0)
button3.TextTransparency = 0
button3.TextStrokeColor3 = Color3.new(0, 0, 0)
button3.TextStrokeTransparency = 1
button3.TextScaled = false
button3.TextWrapped = false
button3.TextXAlignment = Enum.TextXAlignment.Center
button3.TextYAlignment = Enum.TextYAlignment.Center
button3.TextDirection = Enum.TextDirection.Auto
button3.TextTruncate = Enum.TextTruncate.None
button3.OpenTypeFeatures = ""
button3.Parent = wheel

local background = Instance.new("Folder")
background.Name = "Background"
background.Parent = content

local top2 = Instance.new("Frame")
top2.Name = "Top"
top2.AutoLocalize = true
top2.Active = false
top2.AnchorPoint = Vector2.new(0, 0)
top2.AutomaticSize = Enum.AutomaticSize.None
top2.ClipsDescendants = false
top2.Position = UDim2.new(0, 0, 0, 0)
top2.Size = UDim2.new(1, 0, 0.5, 0)
top2.SizeConstraint = Enum.SizeConstraint.RelativeXY
top2.Rotation = 0
top2.LayoutOrder = 0
top2.ZIndex = 0
top2.Visible = true
top2.Selectable = false
top2.SelectionGroup = false
top2.Interactable = true
top2.BackgroundColor3 = Color3.new(0.10196078568696976, 0.10196078568696976, 0.14117647707462311)
top2.BackgroundTransparency = 0
top2.BorderColor3 = Color3.new(0, 0, 0)
top2.BorderMode = Enum.BorderMode.Outline
top2.BorderSizePixel = 0
top2.Parent = background

local bottom2 = Instance.new("Frame")
bottom2.Name = "Bottom"
bottom2.AutoLocalize = true
bottom2.Active = false
bottom2.AnchorPoint = Vector2.new(0, 0)
bottom2.AutomaticSize = Enum.AutomaticSize.None
bottom2.ClipsDescendants = true
bottom2.Position = UDim2.new(0, 0, 0.5, 0)
bottom2.Size = UDim2.new(1, 0, 0.5, 0)
bottom2.SizeConstraint = Enum.SizeConstraint.RelativeXY
bottom2.Rotation = 0
bottom2.LayoutOrder = 0
bottom2.ZIndex = 0
bottom2.Visible = true
bottom2.Selectable = false
bottom2.SelectionGroup = false
bottom2.Interactable = true
bottom2.BackgroundColor3 = Color3.new(0.10196078568696976, 0.10196078568696976, 0.14117647707462311)
bottom2.BackgroundTransparency = 1
bottom2.BorderColor3 = Color3.new(0, 0, 0)
bottom2.BorderMode = Enum.BorderMode.Outline
bottom2.BorderSizePixel = 0
bottom2.Parent = background

local frame11 = Instance.new("Frame")
frame11.Name = "Frame"
frame11.AutoLocalize = true
frame11.Active = false
frame11.AnchorPoint = Vector2.new(0, 1)
frame11.AutomaticSize = Enum.AutomaticSize.None
frame11.ClipsDescendants = false
frame11.Position = UDim2.new(0, 0, 1, 0)
frame11.Size = UDim2.new(1, 0, 2, 0)
frame11.SizeConstraint = Enum.SizeConstraint.RelativeXY
frame11.Rotation = 0
frame11.LayoutOrder = 0
frame11.ZIndex = 1
frame11.Visible = true
frame11.Selectable = false
frame11.SelectionGroup = false
frame11.Interactable = true
frame11.BackgroundColor3 = Color3.new(0.10196078568696976, 0.10196078568696976, 0.14117647707462311)
frame11.BackgroundTransparency = 0
frame11.BorderColor3 = Color3.new(0, 0, 0)
frame11.BorderMode = Enum.BorderMode.Outline
frame11.BorderSizePixel = 0
frame11.Parent = bottom2

local uICorner13 = Instance.new("UICorner")
uICorner13.Name = "UICorner"
uICorner13.CornerRadius = UDim.new(0.05000000074505806, 0)
uICorner13.Parent = frame11

local button4 = Instance.new("TextButton")
button4.Name = "Button"
button4.AutoLocalize = true
button4.Active = true
button4.AnchorPoint = Vector2.new(0, 0)
button4.AutomaticSize = Enum.AutomaticSize.None
button4.ClipsDescendants = false
button4.Position = UDim2.new(0, 0, 0, 0)
button4.Size = UDim2.new(1, 0, 1, 0)
button4.SizeConstraint = Enum.SizeConstraint.RelativeXY
button4.Rotation = 0
button4.LayoutOrder = 0
button4.ZIndex = 9
button4.Visible = false
button4.Selectable = true
button4.SelectionGroup = false
button4.Interactable = true
button4.BackgroundColor3 = Color3.new(1, 1, 1)
button4.BackgroundTransparency = 1
button4.BorderColor3 = Color3.new(0, 0, 0)
button4.BorderMode = Enum.BorderMode.Outline
button4.BorderSizePixel = 0
button4.AutoButtonColor = true
button4.Modal = false
button4.Selected = false
button4.Style = Enum.ButtonStyle.Custom
button4.Text = ""
button4.Font = Enum.Font.SourceSans
button4.TextSize = 14
button4.LineHeight = 1
button4.MaxVisibleGraphemes = -1
button4.RichText = false
button4.TextColor3 = Color3.new(0, 0, 0)
button4.TextTransparency = 0
button4.TextStrokeColor3 = Color3.new(0, 0, 0)
button4.TextStrokeTransparency = 1
button4.TextScaled = false
button4.TextWrapped = false
button4.TextXAlignment = Enum.TextXAlignment.Center
button4.TextYAlignment = Enum.TextYAlignment.Center
button4.TextDirection = Enum.TextDirection.Auto
button4.TextTruncate = Enum.TextTruncate.None
button4.OpenTypeFeatures = ""
button4.Parent = colorWindow

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local GuiService = game:GetService("GuiService")

local Color = {}
Color.__index = Color

export type ParameterStyle = {
	Color: Color3?,
	Transparency: number?,
}

export type Parameters = {
	Position: UDim2?,
	RoundedCorners: number?,
	Draggable: boolean?,
	ZIndex: number?,
	Size: number?,

	Primary: ParameterStyle?,
	Secondary: ParameterStyle?,
	Topbar: ParameterStyle?,
	Text: ParameterStyle?,
}

function toPolar(v)
	return math.atan2(v.Y,v.X),v.Magnitude
end

function radToDeg(x)
	return ((x + math.pi) / (2 * math.pi)) * 360
end

function getScreenGuiWorldDetails(gui)
	local part = gui.Parent
	if gui.Face == Enum.NormalId.Front then
		return part.Position + part.CFrame.LookVector * part.Size.Z / 2,part.CFrame.LookVector
	elseif gui.Face == Enum.NormalId.Back then
		return part.Position + part.CFrame.LookVector * -part.Size.Z / 2,-part.CFrame.LookVector
	elseif gui.Face == Enum.NormalId.Right then
		return part.Position + part.CFrame.RightVector * part.Size.X / 2,part.CFrame.RightVector
	elseif gui.Face == Enum.NormalId.Left then
		return part.Position + part.CFrame.RightVector * -part.Size.X / 2,-part.CFrame.RightVector
	elseif gui.Face == Enum.NormalId.Top then
		return part.Position + part.CFrame.UpVector * part.Size.Y / 2,part.CFrame.UpVector
	elseif gui.Face == Enum.NormalId.Bottom then
		return part.Position + part.CFrame.UpVector * -part.Size.Y / 2,-part.CFrame.UpVector
	end
end

function template(tab,t)
	tab = (tab and (typeof(tab) == "table")) and tab or {}
	for i,v in pairs(t) do
		if tab[i] == nil or (typeof(v) == "table") then
			tab[i] = (typeof(v) == "table") and template(tab[i] or {},v) or v
		end
	end

	return tab
end

function roundToHundredths(num)
	return math.round(num * 100) / 100
end

-- Create a new color picker
function Color.New(gui : LayerCollector,params : Parameters?)
	if gui:IsA("SurfaceGui") then
		assert(gui.Face == Enum.NormalId.Front,"Color Picker - SurfaceGui must have it's Face property set to 'Front' to work properly")
	end
	
	local defaultPos = gui:IsA("ScreenGui") and (UserInputService:GetMouseLocation() + Vector2.new(16,-20)) or Vector2.zero
	params = template(params,{
		Position = UDim2.fromOffset(defaultPos.X,defaultPos.Y),
		RoundedCorners = true,
		Draggable = true,
		ZIndex = 1,
		Size = 0.4,
		
		Primary = {Color = Color3.fromRGB(26,26,36),Transparency = 0},
		Secondary = {Color = Color3.fromRGB(36,36,46),Transparency = 0},
		Topbar = {Color = Color3.fromRGB(21,21,31),Transparency = 0},
		Text = {Color = Color3.fromRGB(255,255,255),Transparency = 0}
	})
	
	local self = setmetatable({},Color)
	self.Params = params
	self.Gui = gui
	
	self.Connections = {}
	
	self:Create()
	self:SetColor(Color3.fromRGB(255,255,255))
	
	return self
end

function Color:Create()
	-- Create sample
	local sample = colorWindow:Clone()
	sample.Position = self.Params.Position
	sample.Size = UDim2.fromScale(self.Params.Size,self.Params.Size)
	sample.ZIndex = self.Params.ZIndex
	sample.Parent = self.Gui
	sample.Visible = true
	
	-- Drag
	if self.Params.Draggable then
		sample.Topbar.Button.MouseButton1Down:Connect(function()
			local startMousePos = self:GetMousePos() or Vector2.zero
			local startWindowPos = self.Instance.Position
			self._dragFunc = RunService.Heartbeat:Connect(function()
				local pos = ((self:GetMousePos() or Vector2.zero) - startMousePos)
				self.Instance.Position = startWindowPos + UDim2.fromOffset(pos.X,pos.Y)
			end)
		end)
	end
	
	-- Update visual color and transparency
	local function _updateVisual(tab,params)
		for i,v in pairs(tab) do
			for q,e in pairs(params) do
				v[q] = e
			end
		end
	end

	_updateVisual(
		{sample.Content.Background.Top,sample.Content.Background.Bottom.Frame,sample.Properties},
		{BackgroundColor3 = self.Params.Primary.Color,BackgroundTransparency = self.Params.Primary.Transparency}
	)

	_updateVisual(
		{sample.Properties.Line,sample.Content.Bottom.Hex.Frame},
		{BackgroundColor3 = self.Params.Secondary.Color,BackgroundTransparency = self.Params.Secondary.Transparency}
	)
	
	_updateVisual(
		{sample.Topbar.Frame,sample.Topbar.Top.Frame},
		{BackgroundColor3 = self.Params.Topbar.Color,BackgroundTransparency = self.Params.Topbar.Transparency}
	)

	for i,v in pairs({sample.Properties.HSV,sample.Properties.RGB}) do
		for q,e in pairs(v:GetChildren()) do
			if e:IsA("Frame") then
				e.Frame.BackgroundColor3 = self.Params.Secondary.Color
				e.Frame.BackgroundTransparency = self.Params.Secondary.Transparency
			end
		end
	end
	
	for i,v in pairs(sample:GetDescendants()) do
		if not self.Params.RoundedCorners and v:IsA("UICorner") and v.Parent.Name ~= "Select" then
			v:Destroy()
		end

		if v:IsA("TextLabel") or v:IsA("TextBox") or v:IsA("ImageButton") then
			v[(v:IsA("TextLabel") or v:IsA("TextBox")) and "TextColor3" or "ImageColor3"] = self.Params.Text.Color
			v[(v:IsA("TextLabel") or v:IsA("TextBox")) and "TextTransparency" or "ImageTransparency"] = self.Params.Text.Transparency
		end
	end
	
	-- Wheel
	local wheel = sample.Content.Wheel
	self.Connections.wheelMainUpdate = wheel.Button.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			if self.Gui:IsA("PluginGui") then sample.Button.Visible = true end
			self.Connections.wheelReposition = RunService.Heartbeat:Connect(function(dt)
				local mousePos = self:GetMousePos()
				if mousePos and wheel and wheel:FindFirstChild("Image") and wheel.Image:FindFirstChild("Select") then
					local wheelMid = wheel.Image.AbsolutePosition + wheel.Image.AbsoluteSize / 2
					local toWheelMid = (mousePos - wheelMid) / wheel.Image.AbsoluteSize
					if toWheelMid.Magnitude > 0.5 then
						toWheelMid = toWheelMid.Unit / 2
					end

					wheel.Image.Select.Position = UDim2.fromScale(0.5 + toWheelMid.X,0.5 + toWheelMid.Y)

					local phi,len = toPolar(toWheelMid * Vector2.new(1,-1))
					local hue,saturation = math.clamp(radToDeg(phi) / 360,0,1),math.clamp(len * 2,0,1)

					self.Saturation = saturation
					self.Hue = hue

					self:UpdateColorVisual()
				end
			end)
		end
	end)
	
	-- Value
	local valueSlider = sample.Content.Right.Value
	self.Connections.valueMainUpdate = valueSlider.Button.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			if self.Gui:IsA("PluginGui") then sample.Button.Visible = true end
			self.Connections.valueReposition = RunService.Heartbeat:Connect(function(dt)
				local mousePos = self:GetMousePos()
				if mousePos and valueSlider and valueSlider:FindFirstChild("Select") then
					local valueTop = valueSlider.AbsolutePosition
					
					local v = 1 - math.clamp((mousePos.Y - valueTop.Y) / valueSlider.AbsoluteSize.Y,0,1)
					self.Value = v
					
					valueSlider.Select.Position = UDim2.fromScale(0,1 - v)
					self:UpdateColorVisual()
				end
			end)
		end
	end)
	
	-- Connections
	local function _mouseUpEvent()
		sample.Button.Visible = false
		if self.Connections.wheelReposition then
			self.Connections.wheelReposition:Disconnect()
			self.Connections.wheelReposition = nil
		end

		if self.Connections.valueReposition then
			self.Connections.valueReposition:Disconnect()
			self.Connections.valueReposition = nil
		end

		if self._dragFunc then
			self._dragFunc:Disconnect()
			self._dragFunc = nil
		end
	end
	
	if not self.Gui:IsA("PluginGui") then
		self.Connections.inputEnded = UserInputService.InputEnded:Connect(function(input,typing)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				_mouseUpEvent()
			end
		end)
	else
		self.Connections.inputEnded = sample.Button.MouseButton1Up:Connect(_mouseUpEvent)
		self.Connections.inputEnded2 = self.Gui.WindowFocusReleased:Connect(_mouseUpEvent)
	end
	
	sample.Content.Bottom.Hex.Frame.TextBox.FocusLost:Connect(function()
		local hexText = sample.Content.Bottom.Hex.Frame.TextBox.Text
		local success,color = pcall(function() return Color3.fromHex(hexText) end)
		sample.Content.Bottom.Hex.Frame.InvalidStroke.Enabled = not success
		
		if not success then
			warn(string.format("%s is not a valid hex color.",hexText))
			return
		end
		
		self:SetColor(color)
	end)
	
	-- Properties
	for i,v in pairs(sample.Properties.RGB:GetChildren()) do
		if v:IsA("Frame") then
			v.Frame.TextBox.FocusLost:Connect(function()
				self:SetColor(Color3.fromRGB(
					math.clamp(tonumber(sample.Properties.RGB.R.Frame.TextBox.Text) or 255,0,255),
					math.clamp(tonumber(sample.Properties.RGB.G.Frame.TextBox.Text) or 255,0,255),
					math.clamp(tonumber(sample.Properties.RGB.B.Frame.TextBox.Text) or 255,0,255)
				))
			end)
		end
	end
	
	for i,v in pairs(sample.Properties.HSV:GetChildren()) do
		if v:IsA("Frame") then
			v.Frame.TextBox.FocusLost:Connect(function()
				self:SetColor(Color3.fromHSV(
					math.clamp(tonumber(sample.Properties.HSV.H.Frame.TextBox.Text) or 0,0,360) / 360,
					math.clamp(tonumber(sample.Properties.HSV.S.Frame.TextBox.Text) or 1,0,1),
					math.clamp(tonumber(sample.Properties.HSV.V.Frame.TextBox.Text) or 1,0,1)
				))
			end)
		end
	end
	
	sample.Content.Bottom.Buttons.Confirm.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			sample.FinishedEvent:Fire(Color3.fromHSV(self.Hue,self.Saturation,self.Value))
			self:Destroy()
		end
	end)
	
	sample.Content.Bottom.Buttons.Cancel.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			sample.CanceledEvent:Fire()
			self:Destroy()
		end
	end)
	
	self.Instance = sample
	return sample
end

-- Return the mouse position of the player relative to the parent GUI
function Color:GetMousePos()
	local mousePos = UserInputService:GetMouseLocation()
	if self.Gui:IsA("ScreenGui") then
		local topbarSize = GuiService.TopbarInset.Height
		return mousePos - Vector2.new(0,topbarSize)
	elseif self.Gui:IsA("PluginGui") then
		return self.Gui:GetRelativeMousePosition()
	else
		-- Find the intersection point of the mouse ray and SurfaceGui plane
		local ray = game.Workspace.CurrentCamera:ViewportPointToRay(mousePos.X,mousePos.Y)
		local planePoint,planeNormal = getScreenGuiWorldDetails(self.Gui)
		
		local p = -((ray.Origin - planePoint):Dot(planeNormal)) / (ray.Direction:Dot(planeNormal))
		local mouseHit = ray.Origin + ray.Direction * p
		
		local relative = (-self.Gui.Parent.CFrame:PointToObjectSpace(mouseHit) + self.Gui.Parent.Size / 2) * self.Gui.PixelsPerStud
		return Vector2.new(relative.X,relative.Y)
	end
end

-- Updates the properties and color preview
function Color:UpdateColorVisual()
	if self.Instance then
		local color = Color3.fromHSV(self.Hue,self.Saturation,self.Value)
		self.Instance.UpdateEvent:Fire(color)
		
		self.Instance.Content.Right.Value.UIGradient.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0,Color3.fromHSV(self.Hue,self.Saturation,1)),
			ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))
		})
		
		self.Instance.Content.Bottom.Color.Frame.BackgroundColor3 = color
		self.Instance.Content.Bottom.Hex.Frame.TextBox.Text = string.format("#%s",color:ToHex())
		
		self.Instance.Properties.RGB.R.Frame.TextBox.Text = math.floor(color.R * 255)
		self.Instance.Properties.RGB.G.Frame.TextBox.Text = math.floor(color.G * 255)
		self.Instance.Properties.RGB.B.Frame.TextBox.Text = math.floor(color.B * 255)
		
		self.Instance.Properties.HSV.H.Frame.TextBox.Text = math.floor(self.Hue * 360)
		self.Instance.Properties.HSV.S.Frame.TextBox.Text = roundToHundredths(self.Saturation)
		self.Instance.Properties.HSV.V.Frame.TextBox.Text = roundToHundredths(self.Value)
		
		self.Instance.Content.Bottom.Hex.Frame.InvalidStroke.Enabled = false
	end
end

-- Sets the color and repositions the wheel and value sliders
function Color:SetColor(c : Color3)
	if self.Instance then
		local h,s,v = c:ToHSV()
		self.Saturation = s
		self.Value = v
		self.Hue = h
		
		local h2 = h * math.pi * 2
		local wv = Vector2.new(-math.cos(h2) / 2 * s,math.sin(h2) / 2 * s)
		self.Instance.Content.Wheel.Image.Select.Position = UDim2.fromScale(0.5 + wv.X,0.5 + wv.Y)
		self.Instance.Content.Right.Value.Select.Position = UDim2.fromScale(0,1 - v)
		
		self:UpdateColorVisual()
	end
end

-- Disconnects all current connections and destroys the window
function Color:Destroy()
	for i,v in pairs(self.Connections) do
		if typeof(v) == "RBXScriptConnection" then
			v:Disconnect()
		end
	end
	
	if self._dragFunc then
		self._dragFunc:Disconnect()
		self._dragFunc = nil
	end
	
	if self.Instance then
		self.Instance:Destroy()
		self.Instance = nil
	end
end

return Color
