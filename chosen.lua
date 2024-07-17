if not game:IsLoaded() then
	repeat task.wait(0.05) until game:IsLoaded()
end
if getgenv().b23knv8key ~= nil --[[or (type(getgenv().b23knv8key) == "string" and string.len(getgenv().b23knv8key) ~= 15)]] then
	print("Pot script has already been loaded, cannot be ran again")
	return
end

getgenv().b23knv8key = true--tostring(randomString(15))

--[[for i, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
	if v.Name == "I6bONBw25jq2b220Lf" then
		print("Pot script has already been loaded, cannot be ran again")
		return
	end
end]]
print("Game is loaded!".." Checking supported gameList.")

local gameName = ""
local scr1 = ''
local scr2 = ''
local fullSupp = false
if game.GameId == 1087859240 then
	gameName = "Rogue Lineage"
	scr2 = "https://raw.githubusercontent.com/Darkii0161/autobard/main/auto"
	fullSupp = true
	print("Found Supported Game: "..gameName)
elseif game.PlaceId == 10787992628 or game.PlaceId == 11412701341 or game.PlaceId == 10046661315 or game.PlaceId == 10215650900 or game.PlaceId == 12159215859 or game.GameId == 3400722193 or game.GameId == 4505104344 or game.GameId == 4582120535 or game.GameId == 4602423680 or game.GameId == 4544356586 or game.GameId == 4769949081 or game.GameId == 5575409971 then
	gameName = "Rogue Lineage Copy"
	scr1 = 'https://raw.githubusercontent.com/Darkii0161/rcopy/main/unidrip'
	scr2 = "https://raw.githubusercontent.com/Darkii0161/autobard/main/auto"
	fullSupp = true
	print("Found Supported Game: "..gameName)
elseif game.PlaceId == 12404070010 or game.PlaceId == 12767171440 or game.GameId == 4364802005 then
	gameName = "Shinobi Storm Online Remastered -- Kuro Game"
	fullSupp = false
	print("Found Semi-Supported Game: "..gameName)
elseif game.PlaceId == 4111023553 --[[Main Id]] or game.PlaceId == 6032399813 --[[Etrean Id]] or game.PlaceId == 8668476218 --[[Duke Id]] or game.PlaceId == 6473861193 --[[East Id]] or game.PlaceId == 5735553160 --[[Depths Id]] then
	gameName = "Deepwoken"
	scr1 = 'https://raw.githubusercontent.com/Darkii0161/deepdrip/main/customvisuals'
	fullSupp = true
	print("Found Supported Game: "..gameName)
elseif game.GameId == 2517534599 then
	gameName = "Lore Game"
	fullSupp = true
	print("Found Supported Game: "..gameName)
elseif game.PlaceId == 185655149 then
	gameName = "BloxBurg"
	fullSupp = false
	print("Found Semi-Supported Game: "..gameName)
elseif game.GameId == 3291589472 then
	gameName = "VoxlBlade"
	fullSupp = true
	print("Found Supported Game: "..gameName)
else
	print("This game isn't supported by the Pot Script!.")
	return
end
local LocalPlayer = game:GetService("Players").LocalPlayer

-- Services:

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CollectionService = game:GetService("CollectionService")

-- Instances:

local HubGui = Instance.new("ScreenGui")
local HubFrame = Instance.new("Frame")
local Overlay = Instance.new("ImageLabel")
local Background = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local DescSheet = Instance.new("Frame")
local Pipe = Instance.new("ImageLabel")
local Index = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Main = Instance.new("TextButton")
local Underline = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Extras = Instance.new("TextButton")
local Underline_2 = Instance.new("Frame")
local UIGradient_2 = Instance.new("UIGradient")
local Credits = Instance.new("TextButton")
local Underline_3 = Instance.new("Frame")
local UIGradient_3 = Instance.new("UIGradient")
local GameShow = Instance.new("TextButton")
local Underline_4 = Instance.new("Frame")
local UIGradient_4 = Instance.new("UIGradient")
--local GameShowM = Instance.new("TextButton")--Special
--local Underline_5 = Instance.new("Frame")--Special
--local UIGradient_5 = Instance.new("UIGradient")--Special
local Desc = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local DescHide = Instance.new("TextLabel")
local UITextSizeConstraintHide = Instance.new("UITextSizeConstraint")
local Headings = Instance.new("Folder")
local Main_2 = Instance.new("Frame")
local Overlay_2 = Instance.new("ImageLabel")
local Background_2 = Instance.new("ImageLabel")
local Title_2 = Instance.new("TextLabel")
local DescSheet_2 = Instance.new("Frame")
local Pipe_2 = Instance.new("ImageLabel")
local LeftControlDesc = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local RightControlDesc = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local Return = Instance.new("TextButton")
local Underline_5 = Instance.new("Frame")
local UIGradient_5 = Instance.new("UIGradient")
local Extras_2 = Instance.new("Frame")
local Overlay_3 = Instance.new("ImageLabel")
local Background_3 = Instance.new("ImageLabel")
local Title_3 = Instance.new("TextLabel")
local DescSheet_3 = Instance.new("ScrollingFrame")
local Pipe_3 = Instance.new("ImageLabel")
local Desc_2 = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local Return_2 = Instance.new("TextButton")
local Underline_6 = Instance.new("Frame")
local UIGradient_6 = Instance.new("UIGradient")
local GameShow_2 = Instance.new("Frame")
local Overlay_4 = Instance.new("ImageLabel")
local Background_4 = Instance.new("ImageLabel")
local Title_4 = Instance.new("TextLabel")
local DescSheet_4 = Instance.new("Frame")
local Pipe_4 = Instance.new("ImageLabel")
local Desc_3 = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local Return_3 = Instance.new("TextButton")
local Underline_7 = Instance.new("Frame")
local UIGradient_7 = Instance.new("UIGradient")
local Credits_2 = Instance.new("Frame")
local Overlay_5 = Instance.new("ImageLabel")
local Background_5 = Instance.new("ImageLabel")
local Title_5 = Instance.new("TextLabel")
local DescSheet_5 = Instance.new("Frame")
local Pipe_5 = Instance.new("ImageLabel")
local Desc_4 = Instance.new("TextLabel")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local Return_4 = Instance.new("TextButton")
local Underline_8 = Instance.new("Frame")
local UIGradient_8 = Instance.new("UIGradient")
--//For CartRide Captures
local Captures = Instance.new("Folder")
local CaptureTitle = Instance.new("TextLabel")
local ForestCapture = Instance.new("TextLabel")
local SkycastleCapture = Instance.new("TextLabel")
local ShoreCapture = Instance.new("TextLabel")
local BurialCapture = Instance.new("TextLabel")
--//For JobId
local JobIdHolder = Instance.new("Folder")
local JobIdTitle = Instance.new("TextLabel")
local JobIdBox = Instance.new("TextBox")
--//For Rogue Movement
local MovementHolder = Instance.new("Folder")
local MovementTitle = Instance.new("TextLabel")
local SpeedTitle = Instance.new("TextLabel")
local ClimbTitle = Instance.new("TextLabel")
local SpeedBox = Instance.new("TextBox")
local ClimbBox = Instance.new("TextBox")
local SpeedOverlay = Instance.new("ImageLabel")
local ClimbOverlay = Instance.new("ImageLabel")
--//For Rogue Lighting
local LightingHolder = Instance.new("Folder")
local LightingTitle = Instance.new("TextLabel")
local RogueFullBrightButton = Instance.new("TextButton")
local RogueShadowsButton = Instance.new("TextButton")
local RogueNoFogButton = Instance.new("TextButton")
--//For AutoBard Functions
local AutoHolder = Instance.new("Folder")
local AutoTitle = Instance.new("TextLabel")
local AutoBardButton = Instance.new("TextButton")
--//For Rogue Esp
local RogueEspHolder = Instance.new("Folder")
local RogueEspTitle = Instance.new("TextLabel")
local RogueTrinketEspButton = Instance.new("TextButton")
local RogueGemScrollEspButton = Instance.new("TextButton")
local RogueArtifactEspButton = Instance.new("TextButton")
local RogueToolViewEspButton = Instance.new("TextButton")
local RogueLeaderboardEspButton = Instance.new("TextButton")
local RoguePlayerEspButton = Instance.new("TextButton")
local RogueNotifierHolder = Instance.new("Folder")
local RogueNotifierTitle = Instance.new("TextLabel")
local RogueNotifierButton = Instance.new("TextButton")
--//For VoxlBlade Esp
local VoxlEspHolder = Instance.new("Folder")
local VoxlEspTitle = Instance.new("TextLabel")
local VoxlEnemyEspButton = Instance.new("TextButton")
local VoxlNpcEspButton = Instance.new("TextButton")
local VoxlCraftingEspButton = Instance.new("TextButton")
local VoxlShopEspButton = Instance.new("TextButton")
local VoxlShrineEspButton = Instance.new("TextButton")
local VoxlInfuserEspButton = Instance.new("TextButton")
local VoxlSnailsmanEspButton = Instance.new("TextButton")
--//For Lore Game Esp/Lighting
local LoreEspHolder = Instance.new("Folder")
local LoreEspTitle = Instance.new("TextLabel")
local LorePlayerEspButton = Instance.new("TextButton")
local LoreMobEspButton = Instance.new("TextButton")
local LoreNPCEspButton = Instance.new("TextButton")
local LoreLightingHolder = Instance.new("Folder")
local LoreLightingTitle = Instance.new("TextLabel")
local LoreAmbienceButton = Instance.new("TextButton")
local LoreDOFButton = Instance.new("TextButton")

--Some Functions:

local function isNumber(input)
	return tonumber(input) ~= nil
end

local function isWholeNumber(number)
	return number % 1 == 0
end

function randomString(length)
	local chars = {}
	for i = 1, length do
		local randomCharType = math.random(1, 3) -- Choose a random character type (1 = lowercase letter, 2 = uppercase letter, 3 = number)
		local randomChar
		if randomCharType == 1 then
			randomChar = string.char(math.random(97, 122)) -- Generate a random lowercase letter
		elseif randomCharType == 2 then
			randomChar = string.char(math.random(65, 90)) -- Generate a random uppercase letter
		else
			randomChar = string.char(math.random(48, 57)) -- Generate a random digit
		end
		table.insert(chars, randomChar)
	end
	return table.concat(chars)
end

-- Function to type the text into the TextLabel
local function typeText(chosentext,textload, charDelay)
	task.spawn(function()
		local typedText = ""
		for i = 1, #textload do
			typedText = typedText .. textload:sub(i, i) -- Add the next character to the typed text
			chosentext.Text = typedText -- Set the TextLabel's text to the typed text
			wait(charDelay) -- Wait for the character delay
		end
	end)
end

local randomText = randomString(12) -- Generate a random string of length 12

-- Main Transparency Tween:

--[[local function TextTween(ChosenText)
	local TextTRTween = TweenService:Create(ChosenText, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 1), {
		Transparency = 1
	})
	TextTRTween:Play()
end]]

--Properties:

HubGui.Name = randomText
HubGui.Parent = game:GetService("CoreGui")
HubGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HubGui.DisplayOrder = 5
HubGui.ResetOnSpawn = false

local detFolder = Instance.new("Folder")
detFolder.Name = randomString(15)
detFolder.Parent = HubGui

HubFrame.Name = "HubFrame"
HubFrame.Parent = HubGui
HubFrame.AnchorPoint = Vector2.new(0.5, 0.5)
HubFrame.BackgroundColor3 = Color3.fromRGB(59, 62, 67)
HubFrame.BackgroundTransparency = 0.100
HubFrame.BorderSizePixel = 0
HubFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
HubFrame.Size = UDim2.new(0, 280, 0, 200)

Overlay.Name = "Overlay"
Overlay.Parent = HubFrame
Overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay.BackgroundTransparency = 1.000
Overlay.BorderSizePixel = 0
Overlay.Position = UDim2.new(0, -3, 0, -3)
Overlay.Size = UDim2.new(1, 6, 1, 6)
Overlay.ZIndex = 2
Overlay.Image = "http://www.roblox.com/asset/?id=4280422108"
Overlay.ImageColor3 = Color3.fromRGB(183, 197, 211)
Overlay.ScaleType = Enum.ScaleType.Slice
Overlay.SliceCenter = Rect.new(14, 14, 18, 18)

Background.Name = "Background"
Background.Parent = HubFrame
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 1.000
Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background.BorderSizePixel = 0
Background.Size = UDim2.new(1, 0, 1, 0)
Background.Image = "http://www.roblox.com/asset/?id=4280494932"
Background.ImageColor3 = Color3.fromRGB(4, 5, 6)
Background.ImageTransparency = 0.870
Background.ScaleType = Enum.ScaleType.Tile
Background.TileSize = UDim2.new(0, 32, 0, 32)

Title.Name = "Title"
Title.Parent = HubFrame
Title.AnchorPoint = Vector2.new(0.5, 0)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.5, 0, 0, 0)
Title.Size = UDim2.new(0.899999976, 0, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Welcome"
Title.TextColor3 = Color3.fromRGB(250, 255, 222)
Title.TextSize = 16.000
Title.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Title.TextStrokeTransparency = 0.500
Title.TextTransparency = 0.100
Title.TextWrapped = true

DescSheet.Name = "DescSheet"
DescSheet.Parent = HubFrame
DescSheet.AnchorPoint = Vector2.new(0.5, 1)
DescSheet.BackgroundColor3 = Color3.fromRGB(229, 224, 202)
DescSheet.BorderSizePixel = 0
DescSheet.Position = UDim2.new(0.5, 0, 1, 0)
DescSheet.Size = UDim2.new(1, 0, 1, -30)

Pipe.Name = "Pipe"
Pipe.Parent = DescSheet
Pipe.AnchorPoint = Vector2.new(0, 1)
Pipe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pipe.BackgroundTransparency = 1.000
Pipe.BorderSizePixel = 0
Pipe.Position = UDim2.new(0, 0, 0, 1)
Pipe.Size = UDim2.new(1, 0, 0, 5)
Pipe.Image = "http://www.roblox.com/asset/?id=5035647017"
Pipe.ImageColor3 = Color3.fromRGB(183, 197, 211)

Index.Name = "Index"
Index.Visible = false
Index.Parent = HubFrame
Index.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Index.BackgroundTransparency = 1.000
Index.Position = UDim2.new(0, 0, 0, 85)
Index.Size = UDim2.new(1, 0, 1, -95)

UIListLayout.Parent = Index
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

Desc.Name = "Desc"
Desc.Parent = HubFrame
Desc.AnchorPoint = Vector2.new(0.5, 0)
Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc.BackgroundTransparency = 1.000
Desc.Position = UDim2.new(0.5, 0, 0, 47)
Desc.Size = UDim2.new(0.899999976, 0, 0, 28)
Desc.Font = Enum.Font.SourceSans
Desc.Text = ""
Desc.TextColor3 = Color3.fromRGB(28, 36, 35)
Desc.TextScaled = true
Desc.TextSize = 14.000
Desc.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Desc.TextTransparency = 0.100
Desc.TextWrapped = true

UITextSizeConstraint.Parent = Desc
UITextSizeConstraint.MaxTextSize = 14
UITextSizeConstraint.MinTextSize = 12


local totalwaitTime = 12
local loadwaitTime = 0
while true do
	task.wait(0.5)
	if loadwaitTime >= totalwaitTime then
		print("Loading has Finished".."--Pot")
		typeText(Desc,"Loading has Finished. Inserting layers.", 0.02)
		break
	end
	if loadwaitTime == 0 then
		typeText(Desc,"Script Loading.", 0.015)
	else
		Desc.Text = "Script Loading."
	end
	loadwaitTime = loadwaitTime + 1
	task.wait(0.5)
	Desc.Text = "Script Loading.."
	loadwaitTime = loadwaitTime + 1
	task.wait(0.5)
	Desc.Text = "Script Loading..."
	loadwaitTime = loadwaitTime + 1
end

Main.Name = "Main"
Main.Parent = Index
Main.Active = false
Main.AnchorPoint = Vector2.new(0.5, 0)
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.5, 0, 0, 50)
Main.Selectable = false
Main.Size = UDim2.new(0.899999976, 0, 0, 20)
Main.Font = Enum.Font.SourceSansSemibold
Main.Text = "Load Script"
Main.TextColor3 = Color3.fromRGB(28, 36, 35)
Main.TextSize = 15.000
Main.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Main.TextTransparency = 0.100
Main.TextWrapped = true
Main.MouseButton1Down:connect(function()
	local ClickSound = Instance.new("Sound")
	ClickSound.Name = "Click"
	ClickSound.SoundId = "rbxassetid://4729721770"
	ClickSound.RollOffMode = Enum.RollOffMode.Inverse
	ClickSound.RollOffMaxDistance = 10000
	ClickSound.RollOffMinDistance = 10
	ClickSound.PlayOnRemove = false
	ClickSound.Looped = false
	ClickSound.Volume = 0.095
	ClickSound.Parent = Main
	ClickSound:Play()
	game.Debris:AddItem(ClickSound, 0.3)
	if scr1 ~= "" then
		pcall(function()
			loadstring(game:HttpGet(scr1))()
		end)
	end
	--[[for i, r in pairs(Headings:GetChildren()) do
		if r.Name ~= Main.Name then
			r.Visible = false
			Headings.Main.Visible = true
			HubFrame.Visible = false
		end
	end]]
end)

Underline.Name = "Underline"
Underline.Parent = Main
Underline.AnchorPoint = Vector2.new(0.5, 0)
Underline.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Underline.BackgroundTransparency = 0.900
Underline.Position = UDim2.new(0.5, 0, 1, 0)
Underline.Size = UDim2.new(1, 0, 0, 1)

UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient.Parent = Underline

Extras.Name = "Extras"
Extras.Parent = Index
Extras.Active = false
Extras.AnchorPoint = Vector2.new(0.5, 0)
Extras.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Extras.BackgroundTransparency = 1.000
Extras.LayoutOrder = 1
Extras.Position = UDim2.new(0.5, 0, 0, 50)
Extras.Selectable = false
Extras.Size = UDim2.new(0.899999976, 0, 0, 20)
Extras.Font = Enum.Font.SourceSansSemibold
Extras.Text = "Extra Features"
Extras.TextColor3 = Color3.fromRGB(28, 36, 35)
Extras.TextSize = 15.000
Extras.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Extras.TextTransparency = 0.100
Extras.TextWrapped = true
Extras.MouseButton1Down:connect(function()
	local ClickSound = Instance.new("Sound")
	ClickSound.Name = "Click"
	ClickSound.SoundId = "rbxassetid://4729721770"
	ClickSound.RollOffMode = Enum.RollOffMode.Inverse
	ClickSound.RollOffMaxDistance = 10000
	ClickSound.RollOffMinDistance = 10
	ClickSound.PlayOnRemove = false
	ClickSound.Looped = false
	ClickSound.Volume = 0.095
	ClickSound.Parent = Extras
	ClickSound:Play()
	game.Debris:AddItem(ClickSound, 0.3)
	for i, r in pairs(Headings:GetChildren()) do
		if r.Name ~= Extras.Name then
			r.Visible = false
			Headings.Extras.Visible = true
			HubFrame.Visible = false
		end
	end
end)

Underline_2.Name = "Underline"
Underline_2.Parent = Extras
Underline_2.AnchorPoint = Vector2.new(0.5, 0)
Underline_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Underline_2.BackgroundTransparency = 0.900
Underline_2.Position = UDim2.new(0.5, 0, 1, 0)
Underline_2.Size = UDim2.new(1, 0, 0, 1)

UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_2.Parent = Underline_2

Credits.Name = "Credits"
Credits.Parent = Index
Credits.Active = false
Credits.AnchorPoint = Vector2.new(0.5, 0)
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.LayoutOrder = 2
Credits.Position = UDim2.new(0.5, 0, 0, 50)
Credits.Selectable = false
Credits.Size = UDim2.new(0.899999976, 0, 0, 20)
Credits.Font = Enum.Font.SourceSansSemibold
Credits.Text = "Credits & Info"
Credits.TextColor3 = Color3.fromRGB(28, 36, 35)
Credits.TextSize = 15.000
Credits.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Credits.TextTransparency = 0.100
Credits.TextWrapped = true
Credits.MouseButton1Down:connect(function()
	local ClickSound = Instance.new("Sound")
	ClickSound.Name = "Click"
	ClickSound.SoundId = "rbxassetid://4729721770"
	ClickSound.RollOffMode = Enum.RollOffMode.Inverse
	ClickSound.RollOffMaxDistance = 10000
	ClickSound.RollOffMinDistance = 10
	ClickSound.PlayOnRemove = false
	ClickSound.Looped = false
	ClickSound.Volume = 0.095
	ClickSound.Parent = Credits
	ClickSound:Play()
	game.Debris:AddItem(ClickSound, 0.3)
	for i, r in pairs(Headings:GetChildren()) do
		if r.Name ~= Credits.Name then
			r.Visible = false
			Headings.Credits.Visible = true
			HubFrame.Visible = false
		end
	end
end)

Underline_3.Name = "Underline"
Underline_3.Parent = Credits
Underline_3.AnchorPoint = Vector2.new(0.5, 0)
Underline_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Underline_3.BackgroundTransparency = 0.900
Underline_3.Position = UDim2.new(0.5, 0, 1, 0)
Underline_3.Size = UDim2.new(1, 0, 0, 1)

UIGradient_3.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_3.Parent = Underline_3

GameShow.Name = "Game"
--GameShow.Visible = false
GameShow.Parent = Index
GameShow.Active = false
GameShow.AnchorPoint = Vector2.new(0.5, 0)
GameShow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameShow.BackgroundTransparency = 1.000
GameShow.LayoutOrder = 3
GameShow.Position = UDim2.new(0.5, 0, 0, 50)
GameShow.Selectable = false
GameShow.Size = UDim2.new(0.899999976, 0, 0, 20)
GameShow.Font = Enum.Font.SourceSansSemibold
GameShow.RichText = true
GameShow.Text = ""
local gameShort = ""
task.spawn(function()
	repeat task.wait(0.1) until Index.Visible == true
	wait(0.15)
	if gameName == "Rogue Lineage Copy" then
		gameShort = "RL Copy"
	elseif gameName == "Shinobi Storm Online Remastered -- Kuro Game" then
		gameShort = "Storm Online"
	else
		gameShort = gameName
	end
	if fullSupp == true then
		typeText(GameShow,'Game: <font color="rgb(0, 200, 0)">'..gameShort..'</font>', 0.025)
	elseif fullSupp == false then
		typeText(GameShow,'Game: <font color="rgb(253, 117, 39)">'..gameShort..'</font>', 0.025)
	end
end)
GameShow.TextColor3 = Color3.fromRGB(28, 36, 35)
GameShow.TextSize = 15.000
GameShow.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
GameShow.TextTransparency = 0.100
GameShow.TextWrapped = true
--[[GameShow.MouseButton1Down:connect(function()
	local ClickSound = Instance.new("Sound")
	ClickSound.Name = "Click"
	ClickSound.SoundId = "rbxassetid://4729721770"
	ClickSound.RollOffMode = Enum.RollOffMode.Inverse
	ClickSound.RollOffMaxDistance = 10000
	ClickSound.RollOffMinDistance = 10
	ClickSound.PlayOnRemove = false
	ClickSound.Looped = false
	ClickSound.Volume = 0.095
	ClickSound.Parent = GameShow
	ClickSound:Play()
	game.Debris:AddItem(ClickSound, 0.3)
	for i, r in pairs(Headings:GetChildren()) do
		if r.Name ~= GameShow.Name then
			r.Visible = false
			Headings.GameShow.Visible = true
			HubFrame.Visible = false
		end
	end
end)]]

Underline_4.Name = "Underline"
Underline_4.Parent = GameShow
Underline_4.AnchorPoint = Vector2.new(0.5, 0)
Underline_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Underline_4.BackgroundTransparency = 0.900
Underline_4.Position = UDim2.new(0.5, 0, 1, 0)
Underline_4.Size = UDim2.new(1, 0, 0, 1)

UIGradient_4.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_4.Parent = Underline_4

task.wait(2.5)
typeText(Desc,"Fully Loaded!", 0.02)
task.wait(0.6)
typeText(Title,'Pot Hub', 0.03)
typeText(Desc,'Welcome, to the Pot Hub. If you want to view all the currently supported games go to the Credits & Info tab.', 0.02)
Index.Visible = true -- Opens all the options after loaded

DescHide.Name = "DescHide"
DescHide.Parent = HubFrame
DescHide.AnchorPoint = Vector2.new(0.5, 0)
DescHide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DescHide.BackgroundTransparency = 1.000
DescHide.Position = UDim2.new(0.5, 0, 0, 67)
DescHide.Size = UDim2.new(0.899999976, 0, 0, 28)
DescHide.Font = Enum.Font.SourceSans
DescHide.Text = "RightAlt To Hide"
DescHide.TextColor3 = Color3.fromRGB(28, 36, 35)
DescHide.TextScaled = true
DescHide.TextSize = 12.000
DescHide.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
DescHide.TextTransparency = 1--0.100
DescHide.TextWrapped = true
local hashiden = false
task.spawn(function()
	local HideGUITextTween1 = TweenService:Create(DescHide, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
		TextTransparency = 0.100
	})
	local HideGUITextTween2 = TweenService:Create(DescHide, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
		TextTransparency = 0.850
	})
	local HideGUITextTween3 = TweenService:Create(DescHide, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
		TextTransparency = 1
	})
	task.wait(0.15)
	while true do
		wait()
		if hashiden == true then
			HideGUITextTween3:Play()
			break
		end
		HideGUITextTween1:Play()
		HideGUITextTween1.Completed:Wait()
		HideGUITextTween2:Play()
		HideGUITextTween2.Completed:Wait()
	end
end)

UITextSizeConstraintHide.Parent = DescHide
UITextSizeConstraintHide.MaxTextSize = 12
UITextSizeConstraintHide.MinTextSize = 8

Headings.Name = "Headings"
Headings.Parent = HubGui

Main_2.Name = "Main"
Main_2.Parent = Headings
Main_2.AnchorPoint = Vector2.new(0.5, 0.5)
Main_2.BackgroundColor3 = Color3.fromRGB(59, 62, 67)
Main_2.BackgroundTransparency = 0.100
Main_2.BorderSizePixel = 0
Main_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Main_2.Size = UDim2.new(0, 300, 0, 260)
Main_2.Visible = false

Overlay_2.Name = "Overlay"
Overlay_2.Parent = Main_2
Overlay_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_2.BackgroundTransparency = 1.000
Overlay_2.BorderSizePixel = 0
Overlay_2.Position = UDim2.new(0, -3, 0, -3)
Overlay_2.Size = UDim2.new(1, 6, 1, 6)
Overlay_2.ZIndex = 2
Overlay_2.Image = "http://www.roblox.com/asset/?id=4280422108"
Overlay_2.ImageColor3 = Color3.fromRGB(183, 197, 211)
Overlay_2.ScaleType = Enum.ScaleType.Slice
Overlay_2.SliceCenter = Rect.new(14, 14, 18, 18)

Background_2.Name = "Background"
Background_2.Parent = Main_2
Background_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background_2.BackgroundTransparency = 1.000
Background_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background_2.BorderSizePixel = 0
Background_2.Size = UDim2.new(1, 0, 1, 0)
Background_2.Image = "http://www.roblox.com/asset/?id=4280494932"
Background_2.ImageColor3 = Color3.fromRGB(4, 5, 6)
Background_2.ImageTransparency = 0.870
Background_2.ScaleType = Enum.ScaleType.Tile
Background_2.TileSize = UDim2.new(0, 32, 0, 32)

Title_2.Name = "Title"
Title_2.Parent = Main_2
Title_2.AnchorPoint = Vector2.new(0.5, 0)
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0.5, 0, 0, 0)
Title_2.Size = UDim2.new(0.899999976, 0, 0, 30)
Title_2.Font = Enum.Font.SourceSansBold
Title_2.Text = "Main Stuff"
Title_2.TextColor3 = Color3.fromRGB(250, 255, 222)
Title_2.TextSize = 16.000
Title_2.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Title_2.TextStrokeTransparency = 0.500
Title_2.TextTransparency = 0.100
Title_2.TextWrapped = true

DescSheet_2.Name = "DescSheet"
DescSheet_2.Parent = Main_2
DescSheet_2.AnchorPoint = Vector2.new(0.5, 1)
DescSheet_2.BackgroundColor3 = Color3.fromRGB(229, 224, 202)
DescSheet_2.BorderSizePixel = 0
DescSheet_2.Position = UDim2.new(0.5, 0, 1, 0)
DescSheet_2.Size = UDim2.new(1, 0, 1, -30)

Pipe_2.Name = "Pipe"
Pipe_2.Parent = DescSheet_2
Pipe_2.AnchorPoint = Vector2.new(0, 1)
Pipe_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pipe_2.BackgroundTransparency = 1.000
Pipe_2.BorderSizePixel = 0
Pipe_2.Position = UDim2.new(0, 0, 0, 1)
Pipe_2.Size = UDim2.new(1, 0, 0, 5)
Pipe_2.Image = "http://www.roblox.com/asset/?id=5035647017"
Pipe_2.ImageColor3 = Color3.fromRGB(183, 197, 211)

LeftControlDesc.Name = "LeftControlDesc"
LeftControlDesc.Parent = Main_2
LeftControlDesc.AnchorPoint = Vector2.new(0.5, 0)
LeftControlDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LeftControlDesc.BackgroundTransparency = 1.000
LeftControlDesc.Position = UDim2.new(0.25, 0, 0, 47)
LeftControlDesc.Size = UDim2.new(0.449999988, 0, 1, -60)
LeftControlDesc.Font = Enum.Font.SourceSans
LeftControlDesc.RichText = true
LeftControlDesc.Text = "<b>M1</b> - Light Attack\\n<b>M2</b> - Feint/Cancel\\n<b>M3 / R</b> - Critical Attack\\n<b>E</b> - Interact\\n<b>F</b> - Parry\\n<b>F</b> (Hold) - Block\\n\\n<b>Y</b> - Switch Stance\\n<b>T</b> - Taunt\\n\\n<b>V</b> - Carry KO'd Enemy\\n<b>B</b> - Execute KO'd Enemy"
LeftControlDesc.TextColor3 = Color3.fromRGB(28, 36, 35)
LeftControlDesc.TextScaled = true
LeftControlDesc.TextSize = 14.000
LeftControlDesc.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
LeftControlDesc.TextTransparency = 0.100
LeftControlDesc.TextWrapped = true
LeftControlDesc.TextYAlignment = Enum.TextYAlignment.Top

UITextSizeConstraint_2.Parent = LeftControlDesc
UITextSizeConstraint_2.MaxTextSize = 14
UITextSizeConstraint_2.MinTextSize = 12

RightControlDesc.Name = "RightControlDesc"
RightControlDesc.Parent = Main_2
RightControlDesc.AnchorPoint = Vector2.new(0.5, 0)
RightControlDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightControlDesc.BackgroundTransparency = 1.000
RightControlDesc.Position = UDim2.new(0.75, 0, 0, 47)
RightControlDesc.Size = UDim2.new(0.449999988, 0, 1, -60)
RightControlDesc.Font = Enum.Font.SourceSans
RightControlDesc.RichText = true
RightControlDesc.Text = "<b>W x2</b> - Sprint\\n<b>Q</b> - Roll\\n<b>Ctrl</b> - Crouch\\n<b>Ctrl</b> (Sprinting) - Slide\\n\\n<b>TAB</b> - Journal/Backpack\\n<b>X</b> - Gesture\\n<b>P</b> - Toggle Cosmetic\\n<b>N</b> - Equip Glider"
RightControlDesc.TextColor3 = Color3.fromRGB(28, 36, 35)
RightControlDesc.TextScaled = true
RightControlDesc.TextSize = 14.000
RightControlDesc.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
RightControlDesc.TextTransparency = 0.100
RightControlDesc.TextWrapped = true
RightControlDesc.TextYAlignment = Enum.TextYAlignment.Top

UITextSizeConstraint_3.Parent = RightControlDesc
UITextSizeConstraint_3.MaxTextSize = 14
UITextSizeConstraint_3.MinTextSize = 12

Return.Name = "Return"
Return.Parent = Main_2
Return.Active = false
Return.AnchorPoint = Vector2.new(0.5, 1)
Return.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Return.BackgroundTransparency = 1.000
Return.LayoutOrder = 1
Return.Position = UDim2.new(0.5, 0, 1, -10)
Return.Selectable = false
Return.Size = UDim2.new(0.5, 0, 0, 20)
Return.Font = Enum.Font.SourceSansSemibold
Return.Text = "Return"
Return.TextColor3 = Color3.fromRGB(28, 36, 35)
Return.TextSize = 15.000
Return.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Return.TextTransparency = 0.100
Return.TextWrapped = true
Return.MouseButton1Down:connect(function()
	local ClickSound = Instance.new("Sound")
	ClickSound.Name = "Click"
	ClickSound.SoundId = "rbxassetid://4729721770"
	ClickSound.RollOffMode = Enum.RollOffMode.Inverse
	ClickSound.RollOffMaxDistance = 10000
	ClickSound.RollOffMinDistance = 10
	ClickSound.PlayOnRemove = false
	ClickSound.Looped = false
	ClickSound.Volume = 0.095
	ClickSound.Parent = Return
	ClickSound:Play()
	game.Debris:AddItem(ClickSound, 0.3)
	for i, r in pairs(Headings:GetChildren()) do
		HubFrame.Visible = true
		r.Visible = false
	end
end)

Underline_5.Name = "Underline"
Underline_5.Parent = Return
Underline_5.AnchorPoint = Vector2.new(0.5, 0)
Underline_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Underline_5.BackgroundTransparency = 0.900
Underline_5.Position = UDim2.new(0.5, 0, 1, 0)
Underline_5.Size = UDim2.new(1, 0, 0, 1)

UIGradient_5.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_5.Parent = Underline_5

Extras_2.Name = "Extras"
Extras_2.Parent = Headings
Extras_2.AnchorPoint = Vector2.new(0.5, 0.5)
Extras_2.BackgroundColor3 = Color3.fromRGB(59, 62, 67)
Extras_2.BackgroundTransparency = 0.100
Extras_2.BorderSizePixel = 0
Extras_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Extras_2.Size = UDim2.new(0, 400, 0, 370)
Extras_2.Visible = false

Overlay_3.Name = "Overlay"
Overlay_3.Parent = Extras_2
Overlay_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_3.BackgroundTransparency = 1.000
Overlay_3.BorderSizePixel = 0
Overlay_3.Position = UDim2.new(0, -3, 0, -3)
Overlay_3.Size = UDim2.new(1, 6, 1, 6)
Overlay_3.ZIndex = 2
Overlay_3.Image = "http://www.roblox.com/asset/?id=4280422108"
Overlay_3.ImageColor3 = Color3.fromRGB(183, 197, 211)
Overlay_3.ScaleType = Enum.ScaleType.Slice
Overlay_3.SliceCenter = Rect.new(14, 14, 18, 18)

Background_3.Name = "Background"
Background_3.Parent = Extras_2
Background_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background_3.BackgroundTransparency = 1.000
Background_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background_3.BorderSizePixel = 0
Background_3.Size = UDim2.new(1, 0, 1, 0)
Background_3.Image = "http://www.roblox.com/asset/?id=4280494932"
Background_3.ImageColor3 = Color3.fromRGB(4, 5, 6)
Background_3.ImageTransparency = 0.870
Background_3.ScaleType = Enum.ScaleType.Tile
Background_3.TileSize = UDim2.new(0, 32, 0, 32)

Title_3.Name = "Title"
Title_3.Parent = Extras_2
Title_3.AnchorPoint = Vector2.new(0.5, 0)
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.Position = UDim2.new(0.5, 0, 0, 0)
Title_3.Size = UDim2.new(0.899999976, 0, 0, 30)
Title_3.Font = Enum.Font.SourceSansBold
Title_3.Text = "Extra Features"
Title_3.TextColor3 = Color3.fromRGB(250, 255, 222)
Title_3.TextSize = 16.000
Title_3.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Title_3.TextStrokeTransparency = 0.500
Title_3.TextTransparency = 0.100
Title_3.TextWrapped = true

Pipe_3.Name = "Pipe"
Pipe_3.Parent = Extras_2
Pipe_3.AnchorPoint = Vector2.new(0, 1)
Pipe_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pipe_3.BackgroundTransparency = 1.000
Pipe_3.BorderSizePixel = 0
Pipe_3.Position = UDim2.new(0, 0, 0, 31)
Pipe_3.Size = UDim2.new(1, 0, 0, 5)
Pipe_3.Image = "http://www.roblox.com/asset/?id=5035647017"
Pipe_3.ImageColor3 = Color3.fromRGB(183, 197, 211)

DescSheet_3.Name = "DescSheet"
DescSheet_3.Parent = Extras_2
DescSheet_3.AnchorPoint = Vector2.new(0.5, 1)
DescSheet_3.BackgroundColor3 = Color3.fromRGB(229, 224, 202)
DescSheet_3.BorderSizePixel = 0
DescSheet_3.Position = UDim2.new(0.5, 0, 1, 0)
DescSheet_3.Size = UDim2.new(1, 0, 1, -30)
DescSheet_3.ClipsDescendants = true
DescSheet_3.BottomImage = "http://www.roblox.com/asset/?id=4292732835"
DescSheet_3.CanvasPosition = Vector2.new(0, 0)
DescSheet_3.CanvasSize = UDim2.new(0, 0, 2, 0)
DescSheet_3.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
DescSheet_3.HorizontalScrollBarInset = Enum.ScrollBarInset.None
DescSheet_3.MidImage = "rbxassetid://6864023366"
DescSheet_3.ScrollBarImageColor3 = Color3.fromRGB(183, 197, 211)
DescSheet_3.ScrollBarImageTransparency = 0
DescSheet_3.ScrollBarThickness = 8
DescSheet_3.ScrollingDirection = Enum.ScrollingDirection.Y
DescSheet_3.ScrollingEnabled = true
DescSheet_3.TopImage = "http://www.roblox.com/asset/?id=4292727598"
DescSheet_3.VerticalScrollBarInset = Enum.ScrollBarInset.None
DescSheet_3.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

--// This is for Extra Features
Desc_2.Name = "Desc"
Desc_2.Visible = false
Desc_2.Parent = Extras_2
Desc_2.AnchorPoint = Vector2.new(0.5, 0)
Desc_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc_2.BackgroundTransparency = 1.000
Desc_2.Position = UDim2.new(0.5, 0, 0, 47)
Desc_2.Size = UDim2.new(0.899999976, 0, 1, -60)
Desc_2.Font = Enum.Font.SourceSans
Desc_2.RichText = true
Desc_2.Text = ""
Desc_2.TextColor3 = Color3.fromRGB(28, 36, 35)
Desc_2.TextScaled = true
Desc_2.TextSize = 14.000
Desc_2.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Desc_2.TextTransparency = 0.100
Desc_2.TextWrapped = true
Desc_2.TextYAlignment = Enum.TextYAlignment.Top

UITextSizeConstraint_4.Parent = Desc_2
UITextSizeConstraint_4.MaxTextSize = 14
UITextSizeConstraint_4.MinTextSize = 12

if (game.GameId == 4505104344 or game.GameId == 4582120535 or game.GameId == 4602423680) and game.Workspace:FindFirstChild("CapturePoints") then
	Captures.Name = "Captures"
	Captures.Parent = DescSheet_3

	--// CaptureTitle
	CaptureTitle.Name = "CaptureTitle"
	CaptureTitle.Parent = Captures
	CaptureTitle.Active = false
	CaptureTitle.AnchorPoint = Vector2.new(0.5, 1)
	CaptureTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CaptureTitle.BackgroundTransparency = 1.000
	CaptureTitle.LayoutOrder = 1
	CaptureTitle.Position = UDim2.new(0.5, -85, 1, -715)
	CaptureTitle.Selectable = false
	CaptureTitle.Size = UDim2.new(0.5, 0, 0, 20)
	CaptureTitle.Font = Enum.Font.SourceSansSemibold
	CaptureTitle.RichText = true
	CaptureTitle.Text = "<u>Capture Points</u>"
	CaptureTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
	CaptureTitle.TextSize = 18.000
	CaptureTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	CaptureTitle.TextTransparency = 0.100
	CaptureTitle.TextWrapped = true
	CaptureTitle.TextXAlignment = Enum.TextXAlignment.Left

	--// ForestPoint
	ForestCapture.Name = "ForestPoint"
	ForestCapture.Parent = Captures
	ForestCapture.Active = false
	ForestCapture.AnchorPoint = Vector2.new(0.5, 1)
	ForestCapture.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ForestCapture.BackgroundTransparency = 1.000
	ForestCapture.LayoutOrder = 1
	ForestCapture.Position = UDim2.new(0.5, -85, 1, -695)
	ForestCapture.Selectable = false
	ForestCapture.Size = UDim2.new(0.5, 0, 0, 20)
	ForestCapture.Font = Enum.Font.SourceSansSemibold
	ForestCapture.RichText = true
	if game.Workspace.CapturePoints.Oresfall.CapturedBy.Value ~= "" then
		ForestCapture.Text = "Forest: <u>"..game.Workspace.CapturePoints.Oresfall.CapturedBy.Value.."</u>"
	else
		ForestCapture.Text = "Forest: <u>No one</u>"
	end
	ForestCapture.TextColor3 = Color3.fromRGB(0, 200, 0)
	ForestCapture.TextSize = 18.000
	ForestCapture.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	ForestCapture.TextTransparency = 0.100
	ForestCapture.TextWrapped = true
	ForestCapture.TextXAlignment = Enum.TextXAlignment.Left

	--// SkycastlePoint
	SkycastleCapture.Name = "SkycastlePoint"
	SkycastleCapture.Parent = Captures
	SkycastleCapture.Active = false
	SkycastleCapture.AnchorPoint = Vector2.new(0.5, 1)
	SkycastleCapture.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SkycastleCapture.BackgroundTransparency = 1.000
	SkycastleCapture.LayoutOrder = 1
	SkycastleCapture.Position = UDim2.new(0.5, -85, 1, -675)
	SkycastleCapture.Selectable = false
	SkycastleCapture.Size = UDim2.new(0.5, 0, 0, 20)
	SkycastleCapture.Font = Enum.Font.SourceSansSemibold
	SkycastleCapture.RichText = true
	if game.Workspace.CapturePoints.Skycastle.CapturedBy.Value ~= "" then
		SkycastleCapture.Text = "Skycastle: <u>"..game.Workspace.CapturePoints.Skycastle.CapturedBy.Value.."</u>"
	else
		SkycastleCapture.Text = "Skycastle: <u>No one</u>"
	end
	SkycastleCapture.TextColor3 = Color3.fromRGB(109, 109, 109)
	SkycastleCapture.TextSize = 18.000
	SkycastleCapture.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	SkycastleCapture.TextTransparency = 0.100
	SkycastleCapture.TextWrapped = true
	SkycastleCapture.TextXAlignment = Enum.TextXAlignment.Left

	--// BurialPoint
	BurialCapture.Name = "BurialPoint"
	BurialCapture.Parent = Captures
	BurialCapture.Active = false
	BurialCapture.AnchorPoint = Vector2.new(0.5, 1)
	BurialCapture.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BurialCapture.BackgroundTransparency = 1.000
	BurialCapture.LayoutOrder = 1
	BurialCapture.Position = UDim2.new(0.5, -85, 1, -655)
	BurialCapture.Selectable = false
	BurialCapture.Size = UDim2.new(0.5, 0, 0, 20)
	BurialCapture.Font = Enum.Font.SourceSansSemibold
	BurialCapture.RichText = true
	if game.Workspace.CapturePoints.Burial.CapturedBy.Value ~= "" then
		BurialCapture.Text = "Burial: <u>"..game.Workspace.CapturePoints.Burial.CapturedBy.Value.."</u>"
	else
		BurialCapture.Text = "Burial: <u>No one</u>"
	end
	BurialCapture.TextColor3 = Color3.fromRGB(177, 170, 68)
	BurialCapture.TextSize = 18.000
	BurialCapture.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	BurialCapture.TextTransparency = 0.100
	BurialCapture.TextWrapped = true
	BurialCapture.TextXAlignment = Enum.TextXAlignment.Left

	--// ShorePoint
	ShoreCapture.Name = "ShorePoint"
	ShoreCapture.Parent = Captures
	ShoreCapture.Active = false
	ShoreCapture.AnchorPoint = Vector2.new(0.5, 1)
	ShoreCapture.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ShoreCapture.BackgroundTransparency = 1.000
	ShoreCapture.LayoutOrder = 1
	ShoreCapture.Position = UDim2.new(0.5, -85, 1, -635)
	ShoreCapture.Selectable = false
	ShoreCapture.Size = UDim2.new(0.5, 0, 0, 20)
	ShoreCapture.Font = Enum.Font.SourceSansSemibold
	ShoreCapture.RichText = true
	if game.Workspace.CapturePoints.Shore.CapturedBy.Value ~= "" then
		ShoreCapture.Text = "Shore: <u>"..game.Workspace.CapturePoints.Shore.CapturedBy.Value.."</u>"
	else
		ShoreCapture.Text = "Shore: <u>No one</u>"
	end
	ShoreCapture.TextColor3 = Color3.fromRGB(101, 190, 180)
	ShoreCapture.TextSize = 18.000
	ShoreCapture.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	ShoreCapture.TextTransparency = 0.100
	ShoreCapture.TextWrapped = true
	ShoreCapture.TextXAlignment = Enum.TextXAlignment.Left
end

JobIdHolder.Name = "JobId"
JobIdHolder.Parent = DescSheet_3

JobIdTitle.Name = "JobIdTitle"
JobIdTitle.Parent = JobIdHolder
JobIdTitle.Active = false
JobIdTitle.AnchorPoint = Vector2.new(0.5, 1)
JobIdTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JobIdTitle.BackgroundTransparency = 1.000
JobIdTitle.LayoutOrder = 1
JobIdTitle.Position = UDim2.new(0.5, 85, 1, -715)
JobIdTitle.Selectable = false
JobIdTitle.Size = UDim2.new(0.5, 0, 0, 20)
JobIdTitle.Font = Enum.Font.SourceSansSemibold
JobIdTitle.RichText = true
JobIdTitle.Text = "<u>JobId</u>"
JobIdTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
JobIdTitle.TextSize = 18.000
JobIdTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
JobIdTitle.TextTransparency = 0.100
JobIdTitle.TextWrapped = true
JobIdTitle.TextXAlignment = Enum.TextXAlignment.Right

JobIdBox.Name = "JobIdBox"
JobIdBox.Parent = JobIdHolder
JobIdBox.Active = false
JobIdBox.AnchorPoint = Vector2.new(0.5, 1)
JobIdBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JobIdBox.BackgroundTransparency = 1.000
JobIdBox.ClearTextOnFocus = false
JobIdBox.CursorPosition = -1.000
JobIdBox.LayoutOrder = 1
JobIdBox.MultiLine = false
JobIdBox.Position = UDim2.new(0.5, 85, 1, -695)
JobIdBox.SelectionStart = -1
JobIdBox.ShowNativeInput = true
JobIdBox.TextEditable = false
JobIdBox.Selectable = false
JobIdBox.Size = UDim2.new(0.5, 0, 0, 20)
JobIdBox.Font = Enum.Font.SourceSansSemibold
JobIdBox.RichText = true
JobIdBox.Text = game.JobId
JobIdBox.TextColor3 = Color3.fromRGB(28, 36, 35)
JobIdBox.TextScaled = false
JobIdBox.TextSize = 14.000
JobIdBox.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
JobIdBox.TextTransparency = 0.100
JobIdBox.TextWrapped = false
JobIdBox.TextXAlignment = Enum.TextXAlignment.Right

--//Rogue Vars
local roguetrinketEsp = false
local roguegemscrollEsp = false
local rogueartifactEsp = false
local roguetoolEsp = false
local rogueleaderboardEsp = false
local rogueplayerEsp = false
local roguefullbrightOn = false
local setFullBrightAmbienceSignal = nil
local rogueshadowsOn = true
local roguenofogOn = false
local setNoFogSignal = nil
local roguenotifierOn = false
local isGaia = game.PlaceId == 5208655184

--//Real Rogue Vars
local realroguespeedBoost
local realrogueclimbBoost
local realroguespeedValue = 0
local realrogueclimbValue = 0

--//Voxl Vars
local voxlenemyEsp = false
local voxlnpcEsp = false
local voxlcraftingEsp = false
local voxlshopEsp = false
local voxlshrineEsp = false
local voxlinfuserEsp = false
local voxlsnailsmanEsp = false

--//Lore Vars
local loreplayerEsp = false
local loremobEsp = false
local lorenpcEsp = false
local loreambienceLighting = false
local loredofLighting = false
if gameName == "Rogue Lineage" then
	--// Real Rogue Esp
	RogueEspHolder.Name = "RogueEsp"
	RogueEspHolder.Parent = DescSheet_3

	RogueEspTitle.Name = "EspTitle"
	RogueEspTitle.Parent = RogueEspHolder
	RogueEspTitle.Active = false
	RogueEspTitle.AnchorPoint = Vector2.new(0.5, 1)
	RogueEspTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueEspTitle.BackgroundTransparency = 1.000
	RogueEspTitle.LayoutOrder = 1
	RogueEspTitle.Position = UDim2.new(0.5, 85, 1, -655)
	RogueEspTitle.Selectable = false
	RogueEspTitle.Size = UDim2.new(0.5, 0, 0, 20)
	RogueEspTitle.Font = Enum.Font.SourceSansSemibold
	RogueEspTitle.RichText = true
	RogueEspTitle.Text = "<u>General Esp</u>"
	RogueEspTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueEspTitle.TextSize = 18.000
	RogueEspTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueEspTitle.TextTransparency = 0.100
	RogueEspTitle.TextWrapped = true
	RogueEspTitle.TextXAlignment = Enum.TextXAlignment.Right

	RogueToolViewEspButton.Name = "Activator"
	RogueToolViewEspButton.Parent = RogueEspHolder
	RogueToolViewEspButton.Active = false
	RogueToolViewEspButton.AnchorPoint = Vector2.new(0.5, 1)
	RogueToolViewEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueToolViewEspButton.BackgroundTransparency = 1.000
	RogueToolViewEspButton.LayoutOrder = 1
	RogueToolViewEspButton.Position = UDim2.new(0.5, 85, 1, -635)
	RogueToolViewEspButton.Selectable = false
	RogueToolViewEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	RogueToolViewEspButton.Font = Enum.Font.SourceSansSemibold
	RogueToolViewEspButton.RichText = true
	RogueToolViewEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Tool Turned Off</stroke>'
	RogueToolViewEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueToolViewEspButton.TextSize = 16.000
	RogueToolViewEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueToolViewEspButton.TextTransparency = 0.100
	RogueToolViewEspButton.TextWrapped = true
	RogueToolViewEspButton.TextXAlignment = Enum.TextXAlignment.Right
	RogueToolViewEspButton.MouseButton1Down:connect(function()
		if not RogueEspHolder:FindFirstChild("ActivateCD") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RogueToolViewEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if roguetoolEsp == false then
				if LocalPlayer then
					task.spawn(function()
						roguetoolEsp = true
						for i, v in pairs(game.Workspace.Live:GetChildren()) do
							if v.Name ~= LocalPlayer.Name then
								if v:FindFirstChild("Head") then
									if v.Head:FindFirstChild("ToolviewHolder") then
										v.Head.ToolviewHolder.Enabled = true
									end
									if not v.Head:FindFirstChild("ToolviewHolder") then
										local toolEspHolder = Instance.new("BillboardGui")
										toolEspHolder.Name = "ToolviewHolder"
										toolEspHolder.Parent = v.Head
										toolEspHolder.Active = false
										toolEspHolder.Adornee = v.Head
										toolEspHolder.AlwaysOnTop = true
										toolEspHolder.MaxDistance = 125
										toolEspHolder.ResetOnSpawn = false
										toolEspHolder.Size = UDim2.new(0, 200, 0, 50)
										toolEspHolder.StudsOffset = Vector3.new(0, 3, 0)
										toolEspHolder.ClipsDescendants = true

										local toolEspLabel = Instance.new("TextLabel")
										toolEspLabel.Name = "ToolView"
										toolEspLabel.Parent = toolEspHolder
										toolEspLabel.Active = false
										toolEspLabel.BackgroundTransparency = 1.000
										toolEspLabel.Position = UDim2.new(0, 0, 0, 0)
										toolEspLabel.Size = UDim2.new(0, 200, 0, 50)
										toolEspLabel.ZIndex = 5
										toolEspLabel.Font = Enum.Font.SpecialElite
										toolEspLabel.RichText = true
										if v:FindFirstChildWhichIsA("Tool") then
											toolEspLabel.Text = v:FindFirstChildWhichIsA("Tool").Name
										elseif not v:FindFirstChildWhichIsA("Tool") then
											toolEspLabel.Text = ""
										end
										toolEspLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
										toolEspLabel.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
										toolEspLabel.TextStrokeTransparency = 0
										toolEspLabel.TextTransparency = 0
										toolEspLabel.TextSize = 21.000
										toolEspLabel.TextWrapped = true
										v.ChildAdded:Connect(function(tool)
											if tool.ClassName == "Tool" then
												if v:FindFirstChild("Head") then
													if v.Head:FindFirstChild("ToolviewHolder") then
														v.Head.ToolviewHolder.ToolView.Text = tool.Name
													end
												end
											end
										end)
										v.ChildRemoved:Connect(function(tool)
											if tool.ClassName == "Tool" then
												if v:FindFirstChild("Head") then
													if v.Head:FindFirstChild("ToolviewHolder") then
														v.Head.ToolviewHolder.ToolView.Text = ""
													end
												end
											end
										end)
									end
								end
							end
						end
					end)
					RogueToolViewEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Tool Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -25, 1, -635)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			elseif roguetoolEsp == true then
				if LocalPlayer then
					task.spawn(function()
						roguetoolEsp = false
						for i, v in pairs(game.Workspace.Live:GetChildren()) do
							if v:FindFirstChild("Head") then
								if v.Head:FindFirstChild("ToolviewHolder") then
									v.Head.ToolviewHolder.Enabled = false
								end
							end
						end
					end)
					RogueToolViewEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Tool Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -25, 1, -635)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			end
		end
	end)
	
	RogueLeaderboardEspButton.Name = "Activator2"
	RogueLeaderboardEspButton.Parent = RogueEspHolder
	RogueLeaderboardEspButton.Active = false
	RogueLeaderboardEspButton.AnchorPoint = Vector2.new(0.5, 1)
	RogueLeaderboardEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueLeaderboardEspButton.BackgroundTransparency = 1.000
	RogueLeaderboardEspButton.LayoutOrder = 1
	RogueLeaderboardEspButton.Position = UDim2.new(0.5, 85, 1, -615)
	RogueLeaderboardEspButton.Selectable = false
	RogueLeaderboardEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	RogueLeaderboardEspButton.Font = Enum.Font.SourceSansSemibold
	RogueLeaderboardEspButton.RichText = true
	RogueLeaderboardEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Leaderboard Turned Off</stroke>'
	RogueLeaderboardEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueLeaderboardEspButton.TextSize = 16.000
	RogueLeaderboardEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueLeaderboardEspButton.TextTransparency = 0.100
	RogueLeaderboardEspButton.TextWrapped = true
	RogueLeaderboardEspButton.TextXAlignment = Enum.TextXAlignment.Right
	RogueLeaderboardEspButton.MouseButton1Down:connect(function()
		if not RogueEspHolder:FindFirstChild("ActivateCD2") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RogueLeaderboardEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if rogueleaderboardEsp == false then
				if LocalPlayer then
					task.spawn(function()
						rogueleaderboardEsp = true
					end)
					RogueLeaderboardEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Leaderboard Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -70, 1, -615)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			elseif rogueleaderboardEsp == true then
				if LocalPlayer then
					task.spawn(function()
						rogueleaderboardEsp = false
					end)
					RogueLeaderboardEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Leaderboard Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -70, 1, -615)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			end
		end
	end)
	
	RogueTrinketEspButton.Name = "Activator3"
	RogueTrinketEspButton.Parent = RogueEspHolder
	RogueTrinketEspButton.Active = false
	RogueTrinketEspButton.AnchorPoint = Vector2.new(0.5, 1)
	RogueTrinketEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueTrinketEspButton.BackgroundTransparency = 1.000
	RogueTrinketEspButton.LayoutOrder = 1
	RogueTrinketEspButton.Position = UDim2.new(0.5, 85, 1, -595)
	RogueTrinketEspButton.Selectable = false
	RogueTrinketEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	RogueTrinketEspButton.Font = Enum.Font.SourceSansSemibold
	RogueTrinketEspButton.RichText = true
	RogueTrinketEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Trinkets Turned Off</stroke>'
	RogueTrinketEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueTrinketEspButton.TextSize = 16.000
	RogueTrinketEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueTrinketEspButton.TextTransparency = 0.100
	RogueTrinketEspButton.TextWrapped = true
	RogueTrinketEspButton.TextXAlignment = Enum.TextXAlignment.Right
	RogueTrinketEspButton.MouseButton1Down:connect(function()
		if not RogueEspHolder:FindFirstChild("ActivateCD3") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RogueTrinketEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if roguetrinketEsp == false then
				if LocalPlayer then
					task.spawn(function()
						roguetrinketEsp = true
						if not HubGui:FindFirstChild("B1") then
							HubGui:WaitForChild("B1")
						end
						for _, v in pairs(HubGui.B1:GetChildren()) do
							v.Enabled = true
						end
					end)
					RogueTrinketEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Trinkets Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD3"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -45, 1, -595)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			elseif roguetrinketEsp == true then
				if LocalPlayer then
					task.spawn(function()
						roguetrinketEsp = false
						if not HubGui:FindFirstChild("B1") then
							HubGui:WaitForChild("B1")
						end
						for _, v in pairs(HubGui.B1:GetChildren()) do
							v.Enabled = false
						end
					end)
					RogueTrinketEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Trinkets Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD3"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -45, 1, -595)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			end
		end
	end)
	
	RoguePlayerEspButton.Name = "Activator4"
	RoguePlayerEspButton.Parent = RogueEspHolder
	RoguePlayerEspButton.Active = false
	RoguePlayerEspButton.AnchorPoint = Vector2.new(0.5, 1)
	RoguePlayerEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RoguePlayerEspButton.BackgroundTransparency = 1.000
	RoguePlayerEspButton.LayoutOrder = 1
	RoguePlayerEspButton.Position = UDim2.new(0.5, 85, 1, -575)
	RoguePlayerEspButton.Selectable = false
	RoguePlayerEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	RoguePlayerEspButton.Font = Enum.Font.SourceSansSemibold
	RoguePlayerEspButton.RichText = true
	RoguePlayerEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Players Turned Off</stroke>'
	RoguePlayerEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RoguePlayerEspButton.TextSize = 16.000
	RoguePlayerEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RoguePlayerEspButton.TextTransparency = 0.100
	RoguePlayerEspButton.TextWrapped = true
	RoguePlayerEspButton.TextXAlignment = Enum.TextXAlignment.Right
	RoguePlayerEspButton.MouseButton1Down:connect(function()
		if not RogueEspHolder:FindFirstChild("ActivateCD4") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RoguePlayerEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if rogueplayerEsp == false then
				if LocalPlayer then
					task.spawn(function()
						rogueplayerEsp = true
						if not HubGui:FindFirstChild("B2") then
							HubGui:WaitForChild("B2")
						end
						if not HubGui:FindFirstChild("B3") then
							HubGui:WaitForChild("B3")
						end
						for _, v in pairs(HubGui.B2:GetChildren()) do
							v.Enabled = true
						end
						for _, v in pairs(HubGui.B3:GetChildren()) do
							v.Enabled = true
						end
					end)
					RoguePlayerEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Players Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD4"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -40, 1, -575)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			elseif rogueplayerEsp == true then
				if LocalPlayer then
					task.spawn(function()
						rogueplayerEsp = false
						if not HubGui:FindFirstChild("B2") then
							HubGui:WaitForChild("B2")
						end
						if not HubGui:FindFirstChild("B3") then
							HubGui:WaitForChild("B3")
						end
						for _, v in pairs(HubGui.B2:GetChildren()) do
							v.Enabled = false
						end
						for _, v in pairs(HubGui.B3:GetChildren()) do
							v.Enabled = false
						end
					end)
					RoguePlayerEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Players Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD4"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -40, 1, -575)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			end
		end
	end)
	--// Auto
	AutoHolder.Name = "Auto"
	AutoHolder.Parent = DescSheet_3

	AutoTitle.Name = "AutoTitle"
	AutoTitle.Parent = AutoHolder
	AutoTitle.Active = false
	AutoTitle.AnchorPoint = Vector2.new(0.5, 1)
	AutoTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	AutoTitle.BackgroundTransparency = 1.000
	AutoTitle.LayoutOrder = 1
	AutoTitle.Position = UDim2.new(0.5, 85, 1, -535)
	AutoTitle.Selectable = false
	AutoTitle.Size = UDim2.new(0.5, 0, 0, 20)
	AutoTitle.Font = Enum.Font.SourceSansSemibold
	AutoTitle.RichText = true
	AutoTitle.Text = "<u>Auto</u>"
	AutoTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
	AutoTitle.TextSize = 18.000
	AutoTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	AutoTitle.TextTransparency = 0.100
	AutoTitle.TextWrapped = true
	AutoTitle.TextXAlignment = Enum.TextXAlignment.Right

	AutoBardButton.Name = "AutoBard"
	AutoBardButton.Parent = AutoHolder
	AutoBardButton.Active = false
	AutoBardButton.AnchorPoint = Vector2.new(0.5, 1)
	AutoBardButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	AutoBardButton.BackgroundTransparency = 1.000
	AutoBardButton.LayoutOrder = 1
	AutoBardButton.Position = UDim2.new(0.5, 85, 1, -515)
	AutoBardButton.Selectable = false
	AutoBardButton.Size = UDim2.new(0.5, 0, 0, 20)
	AutoBardButton.Font = Enum.Font.SourceSansSemibold
	AutoBardButton.RichText = true
	AutoBardButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Bard Player</stroke>'
	AutoBardButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	AutoBardButton.TextSize = 16.000
	AutoBardButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	AutoBardButton.TextTransparency = 0.100
	AutoBardButton.TextWrapped = true
	AutoBardButton.TextXAlignment = Enum.TextXAlignment.Right
	AutoBardButton.MouseButton1Down:connect(function()
		if not AutoBardButton:FindFirstChild("Wait") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = AutoBardButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			local deb = Instance.new("Folder")
			deb.Name = "Wait"
			deb.Parent = AutoBardButton
			AutoBardButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Bard Player</stroke>'
			task.spawn(function()
				task.wait(4)
				AutoBardButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Bard Player</stroke>'
				deb:Destroy()
			end)
			if scr2 ~= "" then
				if game.Workspace.Live:FindFirstChild(LocalPlayer.Name) then
					if game.Workspace.Live[LocalPlayer.Name]:FindFirstChild("HumanoidRootPart") then
						if not game.Workspace.Live[LocalPlayer.Name].HumanoidRootPart:FindFirstChild("ZOobjc4ccPtui9fcbmp34YW28VkB") then
							pcall(function()
								loadstring(game:HttpGet(scr2))()
								local usedautoBard = Instance.new("Folder")
								usedautoBard.Name = "ZOobjc4ccPtui9fcbmp34YW28VkB"
								usedautoBard.Parent = game.Workspace.Live[LocalPlayer.Name].HumanoidRootPart
							end)
						else
							local alreadyusedbardText = Instance.new("TextLabel")
							alreadyusedbardText.Name = "AutoBardUsed"
							alreadyusedbardText.Parent = AutoHolder
							alreadyusedbardText.Active = false
							alreadyusedbardText.AnchorPoint = Vector2.new(0.5, 1)
							alreadyusedbardText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							alreadyusedbardText.BackgroundTransparency = 1.000
							alreadyusedbardText.LayoutOrder = 1
							alreadyusedbardText.Position = UDim2.new(0.5, 0, 1, -515)
							alreadyusedbardText.Selectable = false
							alreadyusedbardText.Size = UDim2.new(0.5, 0, 0, 20)
							alreadyusedbardText.Font = Enum.Font.SourceSansSemibold
							alreadyusedbardText.RichText = true
							alreadyusedbardText.Text = "Already used"
							alreadyusedbardText.TextColor3 = Color3.fromRGB(28, 36, 35)
							alreadyusedbardText.TextSize = 16.000
							alreadyusedbardText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
							alreadyusedbardText.TextTransparency = 0.600
							alreadyusedbardText.TextWrapped = true
							alreadyusedbardText.TextXAlignment = Enum.TextXAlignment.Right
							task.spawn(function()
								task.wait(2)
								alreadyusedbardText:Destroy()
							end)
						end
					end
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound"
					notfoundcharText.Parent = AutoHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, 0, 1, -515)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(2)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
	--// Lighting
	LightingHolder.Name = "Lighting"
	LightingHolder.Parent = DescSheet_3

	LightingTitle.Name = "LightingTitle"
	LightingTitle.Parent = LightingHolder
	LightingTitle.Active = false
	LightingTitle.AnchorPoint = Vector2.new(0.5, 1)
	LightingTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LightingTitle.BackgroundTransparency = 1.000
	LightingTitle.LayoutOrder = 1
	LightingTitle.Position = UDim2.new(0.5, 85, 1, -435)
	LightingTitle.Selectable = false
	LightingTitle.Size = UDim2.new(0.5, 0, 0, 20)
	LightingTitle.Font = Enum.Font.SourceSansSemibold
	LightingTitle.RichText = true
	LightingTitle.Text = "<u>Lighting</u>"
	LightingTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
	LightingTitle.TextSize = 18.000
	LightingTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	LightingTitle.TextTransparency = 0.100
	LightingTitle.TextWrapped = true
	LightingTitle.TextXAlignment = Enum.TextXAlignment.Right
	
	RogueFullBrightButton.Name = "Activator"
	RogueFullBrightButton.Parent = LightingHolder
	RogueFullBrightButton.Active = false
	RogueFullBrightButton.AnchorPoint = Vector2.new(0.5, 1)
	RogueFullBrightButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueFullBrightButton.BackgroundTransparency = 1.000
	RogueFullBrightButton.LayoutOrder = 1
	RogueFullBrightButton.Position = UDim2.new(0.5, 85, 1, -415)
	RogueFullBrightButton.Selectable = false
	RogueFullBrightButton.Size = UDim2.new(0.5, 0, 0, 20)
	RogueFullBrightButton.Font = Enum.Font.SourceSansSemibold
	RogueFullBrightButton.RichText = true
	RogueFullBrightButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Fullbright Turned Off</stroke>'
	RogueFullBrightButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueFullBrightButton.TextSize = 16.000
	RogueFullBrightButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueFullBrightButton.TextTransparency = 0.100
	RogueFullBrightButton.TextWrapped = true
	RogueFullBrightButton.TextXAlignment = Enum.TextXAlignment.Right
	RogueFullBrightButton.MouseButton1Down:connect(function()
		if not LightingHolder:FindFirstChild("ActivateCD") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RogueFullBrightButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if roguefullbrightOn == false then
				if LocalPlayer then
					task.spawn(function()
						roguefullbrightOn = true
						setFullBrightAmbienceSignal = game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
							game.Lighting.Ambient = Color3.fromRGB(215, 215, 215)
							game.Lighting.Brightness = 0.75
						end)
						game.Lighting.Ambient = Color3.fromRGB(215, 215, 215)
					end)
					RogueFullBrightButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Fullbright Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = LightingHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -55, 1, -415)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			elseif roguefullbrightOn == true then
				if LocalPlayer then
					task.spawn(function()
						roguefullbrightOn = false
						setFullBrightAmbienceSignal:Disconnect()
						setFullBrightAmbienceSignal = nil
					end)
					RogueFullBrightButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Fullbright Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = LightingHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -55, 1, -415)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			end
		end
	end)
	
	RogueShadowsButton.Name = "Activator2"
	RogueShadowsButton.Parent = LightingHolder
	RogueShadowsButton.Active = false
	RogueShadowsButton.AnchorPoint = Vector2.new(0.5, 1)
	RogueShadowsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueShadowsButton.BackgroundTransparency = 1.000
	RogueShadowsButton.LayoutOrder = 1
	RogueShadowsButton.Position = UDim2.new(0.5, 85, 1, -395)
	RogueShadowsButton.Selectable = false
	RogueShadowsButton.Size = UDim2.new(0.5, 0, 0, 20)
	RogueShadowsButton.Font = Enum.Font.SourceSansSemibold
	RogueShadowsButton.RichText = true
	RogueShadowsButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Shadows Turned On</stroke>'
	RogueShadowsButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueShadowsButton.TextSize = 16.000
	RogueShadowsButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueShadowsButton.TextTransparency = 0.100
	RogueShadowsButton.TextWrapped = true
	RogueShadowsButton.TextXAlignment = Enum.TextXAlignment.Right
	RogueShadowsButton.MouseButton1Down:connect(function()
		if not LightingHolder:FindFirstChild("ActivateCD2") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RogueShadowsButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if rogueshadowsOn == false then
				if LocalPlayer then
					task.spawn(function()
						rogueshadowsOn = true
						game:GetService("Lighting").GlobalShadows = true
					end)
					RogueShadowsButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Shadows Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = LightingHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -50, 1, -395)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			elseif rogueshadowsOn == true then
				if LocalPlayer then
					task.spawn(function()
						rogueshadowsOn = false
						game:GetService("Lighting").GlobalShadows = false
					end)
					RogueShadowsButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Shadows Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = LightingHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -50, 1, -395)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			end
		end
	end)
	
	RogueNoFogButton.Name = "Activator3"
	RogueNoFogButton.Parent = LightingHolder
	RogueNoFogButton.Active = false
	RogueNoFogButton.AnchorPoint = Vector2.new(0.5, 1)
	RogueNoFogButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueNoFogButton.BackgroundTransparency = 1.000
	RogueNoFogButton.LayoutOrder = 1
	RogueNoFogButton.Position = UDim2.new(0.5, 85, 1, -375)
	RogueNoFogButton.Selectable = false
	RogueNoFogButton.Size = UDim2.new(0.5, 0, 0, 20)
	RogueNoFogButton.Font = Enum.Font.SourceSansSemibold
	RogueNoFogButton.RichText = true
	RogueNoFogButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">NoFog Turned Off</stroke>'
	RogueNoFogButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueNoFogButton.TextSize = 16.000
	RogueNoFogButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueNoFogButton.TextTransparency = 0.100
	RogueNoFogButton.TextWrapped = true
	RogueNoFogButton.TextXAlignment = Enum.TextXAlignment.Right
	RogueNoFogButton.MouseButton1Down:connect(function()
		if not LightingHolder:FindFirstChild("ActivateCD3") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RogueNoFogButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if roguenofogOn == false then
				if LocalPlayer then
					task.spawn(function()
						roguenofogOn = true
						setNoFogSignal = game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
							game.Lighting.FogEnd = 100000
						end)
						game.Lighting.FogEnd = 100000
					end)
					RogueNoFogButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">NoFog Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD3"
					deb.Parent = LightingHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -35, 1, -375)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			elseif roguenofogOn == true then
				if LocalPlayer then
					task.spawn(function()
						roguenofogOn = false
						setNoFogSignal:Disconnect()
						setNoFogSignal = nil
					end)
					RogueNoFogButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">NoFog Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD3"
					deb.Parent = LightingHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -35, 1, -375)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			end
		end
	end)
	--// Movement
	MovementHolder.Name = "Movement"
	MovementHolder.Parent = DescSheet_3

	--// MovementTitle
	MovementTitle.Name = "MovementTitle"
	MovementTitle.Parent = MovementHolder
	MovementTitle.Active = false
	MovementTitle.AnchorPoint = Vector2.new(0.5, 1)
	MovementTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MovementTitle.BackgroundTransparency = 1.000
	MovementTitle.LayoutOrder = 1
	MovementTitle.Position = UDim2.new(0.5, -85, 1, -715)
	MovementTitle.Selectable = false
	MovementTitle.Size = UDim2.new(0.5, 0, 0, 20)
	MovementTitle.Font = Enum.Font.SourceSansSemibold
	MovementTitle.RichText = true
	MovementTitle.Text = "<u>Movement</u>"
	MovementTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
	MovementTitle.TextSize = 18.000
	MovementTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	MovementTitle.TextTransparency = 0.100
	MovementTitle.TextWrapped = true
	MovementTitle.TextXAlignment = Enum.TextXAlignment.Left

	--// SpeedTitle
	SpeedTitle.Name = "SpeedTitle"
	SpeedTitle.Parent = MovementHolder
	SpeedTitle.Active = false
	SpeedTitle.AnchorPoint = Vector2.new(0.5, 1)
	SpeedTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SpeedTitle.BackgroundTransparency = 1.000
	SpeedTitle.LayoutOrder = 1
	SpeedTitle.Position = UDim2.new(0.5, -85, 1, -695)
	SpeedTitle.Selectable = false
	SpeedTitle.Size = UDim2.new(0.5, 0, 0, 20)
	SpeedTitle.Font = Enum.Font.SourceSansSemibold
	SpeedTitle.RichText = true
	SpeedTitle.Text = "Speed Value"
	SpeedTitle.TextColor3 = Color3.fromRGB(55, 71, 69)
	SpeedTitle.TextSize = 18.000
	SpeedTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	SpeedTitle.TextTransparency = 0.100
	SpeedTitle.TextWrapped = true
	SpeedTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	--// SpeedBox
	SpeedBox.Name = "SpeedBox"
	SpeedBox.Parent = MovementHolder
	SpeedBox.Active = true
	SpeedBox.AnchorPoint = Vector2.new(0, 1)
	SpeedBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SpeedBox.BackgroundTransparency = 1.000
	SpeedBox.LayoutOrder = 1
	SpeedBox.Position = UDim2.new(0.25, -85, 1, -675)
	SpeedBox.ClearTextOnFocus = false
	SpeedBox.Selectable = false
	SpeedBox.Size = UDim2.new(0.25, 0, 0, 20)
	SpeedBox.Font = Enum.Font.SourceSansSemibold
	SpeedBox.RichText = true
	SpeedBox.Text = ""
	SpeedBox.PlaceholderColor3 = Color3.fromRGB(111, 111, 165)
	SpeedBox.PlaceholderText = "0"
	SpeedBox.TextColor3 = Color3.fromRGB(85, 85, 127)
	SpeedBox.TextSize = 18.000
	SpeedBox.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	SpeedBox.TextTransparency = 0.100
	SpeedBox.TextWrapped = true
	SpeedBox.TextXAlignment = Enum.TextXAlignment.Center
	SpeedBox:GetPropertyChangedSignal("Text"):Connect(function()
		if SpeedBox.Text == "" then
			realroguespeedValue = 0
		end
		if not isNumber(SpeedBox.Text) then
			realroguespeedValue = 0
		end
		if isNumber(SpeedBox.Text) then
			realroguespeedValue = tonumber(SpeedBox.Text)
		end
		applySpeedBoost(realroguespeedValue)
	end)
	
	--// SpeedOverlay
	SpeedOverlay.Name = "SpeedOverlay"
	SpeedOverlay.Parent = SpeedBox
	SpeedOverlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SpeedOverlay.BackgroundTransparency = 1.000
	SpeedOverlay.BorderSizePixel = 0
	SpeedOverlay.Position = UDim2.new(0, -3, 0, -3)
	SpeedOverlay.Size = UDim2.new(1, 6, 1, 6)
	SpeedOverlay.ZIndex = 2
	SpeedOverlay.Image = "http://www.roblox.com/asset/?id=4280422108"
	SpeedOverlay.ImageColor3 = Color3.fromRGB(183, 197, 211)
	SpeedOverlay.ScaleType = Enum.ScaleType.Slice
	SpeedOverlay.SliceCenter = Rect.new(14, 14, 18, 18)
	
	--// ClimbTitle
	ClimbTitle.Name = "SpeedTitle"
	ClimbTitle.Parent = MovementHolder
	ClimbTitle.Active = false
	ClimbTitle.AnchorPoint = Vector2.new(0.5, 1)
	ClimbTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ClimbTitle.BackgroundTransparency = 1.000
	ClimbTitle.LayoutOrder = 1
	ClimbTitle.Position = UDim2.new(0.5, -85, 1, -635)
	ClimbTitle.Selectable = false
	ClimbTitle.Size = UDim2.new(0.5, 0, 0, 20)
	ClimbTitle.Font = Enum.Font.SourceSansSemibold
	ClimbTitle.RichText = true
	ClimbTitle.Text = "Climb Value"
	ClimbTitle.TextColor3 = Color3.fromRGB(55, 71, 69)
	ClimbTitle.TextSize = 18.000
	ClimbTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	ClimbTitle.TextTransparency = 0.100
	ClimbTitle.TextWrapped = true
	ClimbTitle.TextXAlignment = Enum.TextXAlignment.Left

	--// ClimbBox
	ClimbBox.Name = "ClimbBox"
	ClimbBox.Parent = MovementHolder
	ClimbBox.Active = true
	ClimbBox.AnchorPoint = Vector2.new(0, 1)
	ClimbBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ClimbBox.BackgroundTransparency = 1.000
	ClimbBox.LayoutOrder = 1
	ClimbBox.Position = UDim2.new(0.25, -85, 1, -615)
	ClimbBox.ClearTextOnFocus = false
	ClimbBox.Selectable = false
	ClimbBox.Size = UDim2.new(0.25, 0, 0, 20)
	ClimbBox.Font = Enum.Font.SourceSansSemibold
	ClimbBox.RichText = true
	ClimbBox.Text = ""
	ClimbBox.PlaceholderColor3 = Color3.fromRGB(111, 111, 165)
	ClimbBox.PlaceholderText = "0"
	ClimbBox.TextColor3 = Color3.fromRGB(85, 85, 127)
	ClimbBox.TextSize = 18.000
	ClimbBox.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	ClimbBox.TextTransparency = 0.100
	ClimbBox.TextWrapped = true
	ClimbBox.TextXAlignment = Enum.TextXAlignment.Center
	ClimbBox:GetPropertyChangedSignal("Text"):Connect(function()
		if ClimbBox.Text == "" then
			realrogueclimbValue = 0
		end
		if not isNumber(ClimbBox.Text) then
			realrogueclimbValue = 0
		end
		if isNumber(ClimbBox.Text) then
			realrogueclimbValue = tonumber(ClimbBox.Text)
		end
		applyClimbBoost(realrogueclimbValue)
	end)

	--// ClimbOverlay
	ClimbOverlay.Name = "SpeedOverlay"
	ClimbOverlay.Parent = ClimbBox
	ClimbOverlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ClimbOverlay.BackgroundTransparency = 1.000
	ClimbOverlay.BorderSizePixel = 0
	ClimbOverlay.Position = UDim2.new(0, -3, 0, -3)
	ClimbOverlay.Size = UDim2.new(1, 6, 1, 6)
	ClimbOverlay.ZIndex = 2
	ClimbOverlay.Image = "http://www.roblox.com/asset/?id=4280422108"
	ClimbOverlay.ImageColor3 = Color3.fromRGB(183, 197, 211)
	ClimbOverlay.ScaleType = Enum.ScaleType.Slice
	ClimbOverlay.SliceCenter = Rect.new(14, 14, 18, 18)
	
	--//Check Triggers
	if isGaia then
		local triggers = workspace.MonsterSpawns.Triggers
		local triggeredLocations = {
			["Crypt"] = triggers.CryptTrigger.LastSpawned,
			["Castle Rock"] = triggers.CastleRockSnake.LastSpawned,
			["Snake Pit"] = triggers.MazeSnakes.LastSpawned,
			["Sunken Passage"] = triggers.evileye1.LastSpawned,
		}

		local function formatTime(seconds)
			local minutes = math.floor(seconds / 60)
			local hours = math.floor(minutes / 60)
			local days = math.floor(hours / 24)
			local formattedTime = ''

			if days > 0 then
				formattedTime = formattedTime .. days .. 'd '
				hours = hours % 24
			end

			if hours > 0 then
				formattedTime = formattedTime .. hours .. 'h '
				minutes = minutes % 60
			end

			if minutes > 0 then
				formattedTime = formattedTime .. minutes .. 'm'
				seconds = seconds % 60
			end

			return formattedTime
		end

		local function convertTime(dateTime)
			return os.time({year=dateTime.Year,month=dateTime.Month,day=dateTime.Day,hour=dateTime.Hour,min=dateTime.Minute,sec=dateTime.Second})
		end
		
		local TriggersHolder = Instance.new("Folder")
		TriggersHolder.Name = "Triggers"
		TriggersHolder.Parent = DescSheet_3
		
		--// TriggersTitle
		local TriggerTitle = Instance.new("TextLabel")
		TriggerTitle.Name = "TriggersTitle"
		TriggerTitle.Parent = TriggersHolder
		TriggerTitle.Active = false
		TriggerTitle.AnchorPoint = Vector2.new(0.5, 1)
		TriggerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TriggerTitle.BackgroundTransparency = 1.000
		TriggerTitle.LayoutOrder = 1
		TriggerTitle.Position = UDim2.new(0.5, -85, 1, -555)
		TriggerTitle.Selectable = false
		TriggerTitle.Size = UDim2.new(0.5, 0, 0, 20)
		TriggerTitle.Font = Enum.Font.SourceSansSemibold
		TriggerTitle.RichText = true
		TriggerTitle.Text = "<u>LastTriggered</u>"
		TriggerTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
		TriggerTitle.TextSize = 18.000
		TriggerTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
		TriggerTitle.TextTransparency = 0.100
		TriggerTitle.TextWrapped = true
		TriggerTitle.TextXAlignment = Enum.TextXAlignment.Left
		
		local numLabels = 0
		for name, lastSpawned in next, triggeredLocations do
			numLabels = numLabels + 20
			local label = Instance.new("TextLabel")
			label.Name = name
			label.Parent = TriggersHolder
			label.Active = false
			label.AnchorPoint = Vector2.new(0.5, 1)
			label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			label.BackgroundTransparency = 1.000
			label.LayoutOrder = 1
			label.Position = UDim2.new(0.5, -85, 1, (-555 + numLabels))
			label.Selectable = false
			label.Size = UDim2.new(0.5, 0, 0, 20)
			label.Font = Enum.Font.SourceSansItalic
			label.RichText = true
			label.TextColor3 = Color3.fromRGB(28, 36, 35)
			label.TextSize = 18.000
			label.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
			label.TextTransparency = 0.100
			label.TextWrapped = true
			label.TextXAlignment = Enum.TextXAlignment.Left

			local function onLastSpawnedChanged()
				if (lastSpawned.Value == 0) then
					label.Text = string.format('%s - Never taken', name)
					return
				end

				local lastSpawnedLocal = DateTime.fromUnixTimestamp(lastSpawned.Value):ToLocalTime()
				local currentTime = DateTime.now():ToLocalTime()

				local diff = os.difftime(convertTime(currentTime),convertTime(lastSpawnedLocal))
				label.Text = string.format('%s - %s ago', name, formatTime(diff));
			end
			onLastSpawnedChanged()
			lastSpawned:GetPropertyChangedSignal("Value"):Connect(onLastSpawnedChanged)

			task.spawn(function()
				while true do
					onLastSpawnedChanged()
					task.wait(60)
				end
			end)
		end
	end
elseif gameName == "Rogue Lineage Copy" then
	--// Rogue Esp
	RogueEspHolder.Name = "RogueEsp"
	RogueEspHolder.Parent = DescSheet_3

	RogueEspTitle.Name = "EspTitle"
	RogueEspTitle.Parent = RogueEspHolder
	RogueEspTitle.Active = false
	RogueEspTitle.AnchorPoint = Vector2.new(0.5, 1)
	RogueEspTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueEspTitle.BackgroundTransparency = 1.000
	RogueEspTitle.LayoutOrder = 1
	RogueEspTitle.Position = UDim2.new(0.5, 85, 1, -655)
	RogueEspTitle.Selectable = false
	RogueEspTitle.Size = UDim2.new(0.5, 0, 0, 20)
	RogueEspTitle.Font = Enum.Font.SourceSansSemibold
	RogueEspTitle.RichText = true
	RogueEspTitle.Text = "<u>General Esp</u>"
	RogueEspTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueEspTitle.TextSize = 18.000
	RogueEspTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueEspTitle.TextTransparency = 0.100
	RogueEspTitle.TextWrapped = true
	RogueEspTitle.TextXAlignment = Enum.TextXAlignment.Right

	RogueTrinketEspButton.Name = "Activator"
	RogueTrinketEspButton.Parent = RogueEspHolder
	RogueTrinketEspButton.Active = false
	RogueTrinketEspButton.AnchorPoint = Vector2.new(0.5, 1)
	RogueTrinketEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueTrinketEspButton.BackgroundTransparency = 1.000
	RogueTrinketEspButton.LayoutOrder = 1
	RogueTrinketEspButton.Position = UDim2.new(0.5, 85, 1, -635)
	RogueTrinketEspButton.Selectable = false
	RogueTrinketEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	RogueTrinketEspButton.Font = Enum.Font.SourceSansSemibold
	RogueTrinketEspButton.RichText = true
	RogueTrinketEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Trinket Turned Off</stroke>'
	RogueTrinketEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueTrinketEspButton.TextSize = 16.000
	RogueTrinketEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueTrinketEspButton.TextTransparency = 0.100
	RogueTrinketEspButton.TextWrapped = true
	RogueTrinketEspButton.TextXAlignment = Enum.TextXAlignment.Right
	RogueTrinketEspButton.MouseButton1Down:connect(function()
		if not RogueEspHolder:FindFirstChild("ActivateCD") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RogueTrinketEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if roguetrinketEsp == false then
				if LocalPlayer then
					task.spawn(function()
						roguetrinketEsp = true
						for i, v in pairs(game.Workspace.Trinkets:GetChildren()) do
							if v:FindFirstChild("TrinketviewHolder") then
								v.TrinketviewHolder.Enabled = true
							end
							if not v:FindFirstChild("TrinketviewHolder") then
								if v.Parent == game.Workspace.Trinkets then
									if v.ClassName == "MeshPart" then
										if v.MeshId == "rbxassetid://5196551436" then
											local trinketEspHolder = Instance.new("BillboardGui")
											trinketEspHolder.Name = "TrinketviewHolder"
											trinketEspHolder.Parent = v
											trinketEspHolder.Active = false
											trinketEspHolder.Adornee = v
											trinketEspHolder.AlwaysOnTop = true
											trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											trinketEspHolder.ResetOnSpawn = false
											trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
											trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											trinketEspHolder.ClipsDescendants = true

											local trinketEspLabel = Instance.new("TextLabel")
											trinketEspLabel.Name = "TrinketView"
											trinketEspLabel.Parent = trinketEspHolder
											trinketEspLabel.Active = false
											trinketEspLabel.BackgroundTransparency = 1.000
											trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
											trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
											trinketEspLabel.ZIndex = 5
											trinketEspLabel.Font = Enum.Font.SourceSansBold
											trinketEspLabel.RichText = true
											trinketEspLabel.Text = "Amulet"
											trinketEspLabel.TextColor3 = Color3.fromRGB(163, 162, 165)
											trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											trinketEspLabel.TextStrokeTransparency = 0.650
											trinketEspLabel.TextTransparency = 0.250
											trinketEspLabel.TextSize = 15.000
											trinketEspLabel.TextWrapped = true
										elseif v.MeshId == "rbxassetid://923469333" then
											if v.Color == Color3.fromRGB(33, 84, 185) then
												local trinketEspHolder = Instance.new("BillboardGui")
												trinketEspHolder.Name = "TrinketviewHolder"
												trinketEspHolder.Parent = v
												trinketEspHolder.Active = false
												trinketEspHolder.Adornee = v
												trinketEspHolder.AlwaysOnTop = true
												trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
												trinketEspHolder.ResetOnSpawn = false
												trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
												trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
												trinketEspHolder.ClipsDescendants = true

												local trinketEspLabel = Instance.new("TextLabel")
												trinketEspLabel.Name = "TrinketView"
												trinketEspLabel.Parent = trinketEspHolder
												trinketEspLabel.Active = false
												trinketEspLabel.BackgroundTransparency = 1.000
												trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
												trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
												trinketEspLabel.ZIndex = 5
												trinketEspLabel.Font = Enum.Font.SourceSansBold
												trinketEspLabel.RichText = true
												trinketEspLabel.Text = "Blue Candy"
												trinketEspLabel.TextColor3 = Color3.fromRGB(33, 84, 185)
												trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
												trinketEspLabel.TextStrokeTransparency = 0.650
												trinketEspLabel.TextTransparency = 0.250
												trinketEspLabel.TextSize = 15.000
												trinketEspLabel.TextWrapped = true
											elseif v.Color == Color3.fromRGB(30, 185, 30) then
												local trinketEspHolder = Instance.new("BillboardGui")
												trinketEspHolder.Name = "TrinketviewHolder"
												trinketEspHolder.Parent = v
												trinketEspHolder.Active = false
												trinketEspHolder.Adornee = v
												trinketEspHolder.AlwaysOnTop = true
												trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
												trinketEspHolder.ResetOnSpawn = false
												trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
												trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
												trinketEspHolder.ClipsDescendants = true

												local trinketEspLabel = Instance.new("TextLabel")
												trinketEspLabel.Name = "TrinketView"
												trinketEspLabel.Parent = trinketEspHolder
												trinketEspLabel.Active = false
												trinketEspLabel.BackgroundTransparency = 1.000
												trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
												trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
												trinketEspLabel.ZIndex = 5
												trinketEspLabel.Font = Enum.Font.SourceSansBold
												trinketEspLabel.RichText = true
												trinketEspLabel.Text = "Green Candy"
												trinketEspLabel.TextColor3 = Color3.fromRGB(30, 185, 30)
												trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
												trinketEspLabel.TextStrokeTransparency = 0.650
												trinketEspLabel.TextTransparency = 0.250
												trinketEspLabel.TextSize = 15.000
												trinketEspLabel.TextWrapped = true
											elseif v.Color == Color3.fromRGB(255, 137, 1) then
												local trinketEspHolder = Instance.new("BillboardGui")
												trinketEspHolder.Name = "TrinketviewHolder"
												trinketEspHolder.Parent = v
												trinketEspHolder.Active = false
												trinketEspHolder.Adornee = v
												trinketEspHolder.AlwaysOnTop = true
												trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
												trinketEspHolder.ResetOnSpawn = false
												trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
												trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
												trinketEspHolder.ClipsDescendants = true

												local trinketEspLabel = Instance.new("TextLabel")
												trinketEspLabel.Name = "TrinketView"
												trinketEspLabel.Parent = trinketEspHolder
												trinketEspLabel.Active = false
												trinketEspLabel.BackgroundTransparency = 1.000
												trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
												trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
												trinketEspLabel.ZIndex = 5
												trinketEspLabel.Font = Enum.Font.SourceSansBold
												trinketEspLabel.RichText = true
												trinketEspLabel.Text = "Orange Candy"
												trinketEspLabel.TextColor3 = Color3.fromRGB(255, 137, 1)
												trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
												trinketEspLabel.TextStrokeTransparency = 0.650
												trinketEspLabel.TextTransparency = 0.250
												trinketEspLabel.TextSize = 15.000
												trinketEspLabel.TextWrapped = true
											end
										elseif v.MeshId == "rbxassetid://5204003946" then
											local trinketEspHolder = Instance.new("BillboardGui")
											trinketEspHolder.Name = "TrinketviewHolder"
											trinketEspHolder.Parent = v
											trinketEspHolder.Active = false
											trinketEspHolder.Adornee = v
											trinketEspHolder.AlwaysOnTop = true
											trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											trinketEspHolder.ResetOnSpawn = false
											trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
											trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											trinketEspHolder.ClipsDescendants = true

											local trinketEspLabel = Instance.new("TextLabel")
											trinketEspLabel.Name = "TrinketView"
											trinketEspLabel.Parent = trinketEspHolder
											trinketEspLabel.Active = false
											trinketEspLabel.BackgroundTransparency = 1.000
											trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
											trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
											trinketEspLabel.ZIndex = 5
											trinketEspLabel.Font = Enum.Font.SourceSansBold
											trinketEspLabel.RichText = true
											trinketEspLabel.Text = "Goblet"
											trinketEspLabel.TextColor3 = Color3.fromRGB(150, 86, 9)
											trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											trinketEspLabel.TextStrokeTransparency = 0.650
											trinketEspLabel.TextTransparency = 0.250
											trinketEspLabel.TextSize = 15.000
											trinketEspLabel.TextWrapped = true
										elseif v.MeshId == "rbxassetid://5196577540" then
											local trinketEspHolder = Instance.new("BillboardGui")
											trinketEspHolder.Name = "TrinketviewHolder"
											trinketEspHolder.Parent = v
											trinketEspHolder.Active = false
											trinketEspHolder.Adornee = v
											trinketEspHolder.AlwaysOnTop = true
											trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											trinketEspHolder.ResetOnSpawn = false
											trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
											trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											trinketEspHolder.ClipsDescendants = true

											local trinketEspLabel = Instance.new("TextLabel")
											trinketEspLabel.Name = "TrinketView"
											trinketEspLabel.Parent = trinketEspHolder
											trinketEspLabel.Active = false
											trinketEspLabel.BackgroundTransparency = 1.000
											trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
											trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
											trinketEspLabel.ZIndex = 5
											trinketEspLabel.Font = Enum.Font.SourceSansBold
											trinketEspLabel.RichText = true
											trinketEspLabel.Text = "Old Amulet"
											trinketEspLabel.TextColor3 = Color3.fromRGB(163, 162, 165)
											trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											trinketEspLabel.TextStrokeTransparency = 0.650
											trinketEspLabel.TextTransparency = 0.250
											trinketEspLabel.TextSize = 15.000
											trinketEspLabel.TextWrapped = true
										elseif v.MeshId == "rbxassetid://5196782997" then
											local trinketEspHolder = Instance.new("BillboardGui")
											trinketEspHolder.Name = "TrinketviewHolder"
											trinketEspHolder.Parent = v
											trinketEspHolder.Active = false
											trinketEspHolder.Adornee = v
											trinketEspHolder.AlwaysOnTop = true
											trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											trinketEspHolder.ResetOnSpawn = false
											trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
											trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											trinketEspHolder.ClipsDescendants = true

											local trinketEspLabel = Instance.new("TextLabel")
											trinketEspLabel.Name = "TrinketView"
											trinketEspLabel.Parent = trinketEspHolder
											trinketEspLabel.Active = false
											trinketEspLabel.BackgroundTransparency = 1.000
											trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
											trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
											trinketEspLabel.ZIndex = 5
											trinketEspLabel.Font = Enum.Font.SourceSansBold
											trinketEspLabel.RichText = true
											trinketEspLabel.Text = "Old Ring"
											trinketEspLabel.TextColor3 = Color3.fromRGB(163, 162, 165)
											trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											trinketEspLabel.TextStrokeTransparency = 0.650
											trinketEspLabel.TextTransparency = 0.250
											trinketEspLabel.TextSize = 15.000
											trinketEspLabel.TextWrapped = true
										elseif v.MeshId == "rbxassetid://5196776695" then
											local trinketEspHolder = Instance.new("BillboardGui")
											trinketEspHolder.Name = "TrinketviewHolder"
											trinketEspHolder.Parent = v
											trinketEspHolder.Active = false
											trinketEspHolder.Adornee = v
											trinketEspHolder.AlwaysOnTop = true
											trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											trinketEspHolder.ResetOnSpawn = false
											trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
											trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											trinketEspHolder.ClipsDescendants = true

											local trinketEspLabel = Instance.new("TextLabel")
											trinketEspLabel.Name = "TrinketView"
											trinketEspLabel.Parent = trinketEspHolder
											trinketEspLabel.Active = false
											trinketEspLabel.BackgroundTransparency = 1.000
											trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
											trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
											trinketEspLabel.ZIndex = 5
											trinketEspLabel.Font = Enum.Font.SourceSansBold
											trinketEspLabel.RichText = true
											trinketEspLabel.Text = "Ring"
											trinketEspLabel.TextColor3 = Color3.fromRGB(163, 162, 165)
											trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											trinketEspLabel.TextStrokeTransparency = 0.650
											trinketEspLabel.TextTransparency = 0.250
											trinketEspLabel.TextSize = 15.000
											trinketEspLabel.TextWrapped = true
										end
									elseif v.ClassName == "UnionOperation" then
										if v.Color == Color3.fromRGB(111, 113, 125) then
											local trinketEspHolder = Instance.new("BillboardGui")
											trinketEspHolder.Name = "TrinketviewHolder"
											trinketEspHolder.Parent = v
											trinketEspHolder.Active = false
											trinketEspHolder.Adornee = v
											trinketEspHolder.AlwaysOnTop = true
											trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											trinketEspHolder.ResetOnSpawn = false
											trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
											trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											trinketEspHolder.ClipsDescendants = true

											local trinketEspLabel = Instance.new("TextLabel")
											trinketEspLabel.Name = "TrinketView"
											trinketEspLabel.Parent = trinketEspHolder
											trinketEspLabel.Active = false
											trinketEspLabel.BackgroundTransparency = 1.000
											trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
											trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
											trinketEspLabel.ZIndex = 5
											trinketEspLabel.Font = Enum.Font.SourceSansBold
											trinketEspLabel.RichText = true
											trinketEspLabel.Text = "Forgotten Idle"
											trinketEspLabel.TextColor3 = Color3.fromRGB(111, 113, 125)
											trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											trinketEspLabel.TextStrokeTransparency = 0.650
											trinketEspLabel.TextTransparency = 0.250
											trinketEspLabel.TextSize = 15.000
											trinketEspLabel.TextWrapped = true
										end
									elseif v.ClassName == "Part" then
										if v.Color == Color3.fromRGB(89, 34, 89) then
											local trinketEspHolder = Instance.new("BillboardGui")
											trinketEspHolder.Name = "TrinketviewHolder"
											trinketEspHolder.Parent = v
											trinketEspHolder.Active = false
											trinketEspHolder.Adornee = v
											trinketEspHolder.AlwaysOnTop = true
											trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											trinketEspHolder.ResetOnSpawn = false
											trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
											trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											trinketEspHolder.ClipsDescendants = true

											local trinketEspLabel = Instance.new("TextLabel")
											trinketEspLabel.Name = "TrinketView"
											trinketEspLabel.Parent = trinketEspHolder
											trinketEspLabel.Active = false
											trinketEspLabel.BackgroundTransparency = 1.000
											trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
											trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
											trinketEspLabel.ZIndex = 5
											trinketEspLabel.Font = Enum.Font.SourceSansBold
											trinketEspLabel.RichText = true
											trinketEspLabel.Text = "???"
											trinketEspLabel.TextColor3 = Color3.fromRGB(89, 34, 89)
											trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											trinketEspLabel.TextStrokeTransparency = 0.650
											trinketEspLabel.TextTransparency = 0.250
											trinketEspLabel.TextSize = 15.000
											trinketEspLabel.TextWrapped = true
										end
									end
								end
							end
						end
					end)
					RogueTrinketEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Trinket Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -40, 1, -635)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			elseif roguetrinketEsp == true then
				if LocalPlayer then
					task.spawn(function()
						roguetrinketEsp = false
						for i, v in pairs(game.Workspace.Trinkets:GetChildren()) do
							if v:FindFirstChild("TrinketviewHolder") then
								v.TrinketviewHolder.Enabled = false
							end
						end
					end)
					RogueTrinketEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Trinket Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -40, 1, -635)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			end
		end
	end)
	RogueGemScrollEspButton.Name = "Activator2"
	RogueGemScrollEspButton.Parent = RogueEspHolder
	RogueGemScrollEspButton.Active = false
	RogueGemScrollEspButton.AnchorPoint = Vector2.new(0.5, 1)
	RogueGemScrollEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueGemScrollEspButton.BackgroundTransparency = 1.000
	RogueGemScrollEspButton.LayoutOrder = 1
	RogueGemScrollEspButton.Position = UDim2.new(0.5, 85, 1, -615)
	RogueGemScrollEspButton.Selectable = false
	RogueGemScrollEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	RogueGemScrollEspButton.Font = Enum.Font.SourceSansSemibold
	RogueGemScrollEspButton.RichText = true
	RogueGemScrollEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Gem/Scroll Turned Off</stroke>'
	RogueGemScrollEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueGemScrollEspButton.TextSize = 16.000
	RogueGemScrollEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueGemScrollEspButton.TextTransparency = 0.100
	RogueGemScrollEspButton.TextWrapped = true
	RogueGemScrollEspButton.TextXAlignment = Enum.TextXAlignment.Right
	RogueGemScrollEspButton.MouseButton1Down:connect(function()
		if not RogueEspHolder:FindFirstChild("ActivateCD2") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RogueGemScrollEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if roguegemscrollEsp == false then
				if LocalPlayer then
					task.spawn(function()
						roguegemscrollEsp = true
						for i, v in pairs(game.Workspace.Trinkets:GetChildren()) do
							if v:FindFirstChild("GemScrollviewHolder") then
								v.GemScrollviewHolder.Enabled = true
							end
							if not v:FindFirstChild("GemScrollviewHolder") then
								if v.Parent == game.Workspace.Trinkets then
									if v.ClassName == "MeshPart" then
										if v.MeshId == "rbxassetid://5204453430" then
											local gemscrollEspHolder = Instance.new("BillboardGui")
											gemscrollEspHolder.Name = "GemScrollviewHolder"
											gemscrollEspHolder.Parent = v
											gemscrollEspHolder.Active = false
											gemscrollEspHolder.Adornee = v
											gemscrollEspHolder.AlwaysOnTop = true
											gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											gemscrollEspHolder.ResetOnSpawn = false
											gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											gemscrollEspHolder.ClipsDescendants = true

											local gemscrollEspLabel = Instance.new("TextLabel")
											gemscrollEspLabel.Name = "GemScrollView"
											gemscrollEspLabel.Parent = gemscrollEspHolder
											gemscrollEspLabel.Active = false
											gemscrollEspLabel.BackgroundTransparency = 1.000
											gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
											gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspLabel.ZIndex = 5
											gemscrollEspLabel.Font = Enum.Font.SourceSansBold
											gemscrollEspLabel.RichText = true
											gemscrollEspLabel.Text = "Scroll"
											gemscrollEspLabel.TextColor3 = Color3.fromRGB(255, 202, 42)
											gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											gemscrollEspLabel.TextStrokeTransparency = 0.650
											gemscrollEspLabel.TextTransparency = 0.250
											gemscrollEspLabel.TextSize = 15.000
											gemscrollEspLabel.TextWrapped = true
										elseif v.Color == Color3.fromRGB(255, 0, 0) and v.Material == Enum.Material.Glass then
											local gemscrollEspHolder = Instance.new("BillboardGui")
											gemscrollEspHolder.Name = "GemScrollviewHolder"
											gemscrollEspHolder.Parent = v
											gemscrollEspHolder.Active = false
											gemscrollEspHolder.Adornee = v
											gemscrollEspHolder.AlwaysOnTop = true
											gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											gemscrollEspHolder.ResetOnSpawn = false
											gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											gemscrollEspHolder.ClipsDescendants = true

											local gemscrollEspLabel = Instance.new("TextLabel")
											gemscrollEspLabel.Name = "GemScrollView"
											gemscrollEspLabel.Parent = gemscrollEspHolder
											gemscrollEspLabel.Active = false
											gemscrollEspLabel.BackgroundTransparency = 1.000
											gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
											gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspLabel.ZIndex = 5
											gemscrollEspLabel.Font = Enum.Font.SourceSansBold
											gemscrollEspLabel.RichText = true
											gemscrollEspLabel.Text = "Ruby"
											gemscrollEspLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
											gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											gemscrollEspLabel.TextStrokeTransparency = 0.650
											gemscrollEspLabel.TextTransparency = 0.250
											gemscrollEspLabel.TextSize = 15.000
											gemscrollEspLabel.TextWrapped = true
										end
									elseif v.ClassName == "Part" then
										if v.Color == Color3.fromRGB(164, 187, 190) and v.Material == Enum.Material.Glass then
											local gemscrollEspHolder = Instance.new("BillboardGui")
											gemscrollEspHolder.Name = "GemScrollviewHolder"
											gemscrollEspHolder.Parent = v
											gemscrollEspHolder.Active = false
											gemscrollEspHolder.Adornee = v
											gemscrollEspHolder.AlwaysOnTop = true
											gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											gemscrollEspHolder.ResetOnSpawn = false
											gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											gemscrollEspHolder.ClipsDescendants = true

											local gemscrollEspLabel = Instance.new("TextLabel")
											gemscrollEspLabel.Name = "GemScrollView"
											gemscrollEspLabel.Parent = gemscrollEspHolder
											gemscrollEspLabel.Active = false
											gemscrollEspLabel.BackgroundTransparency = 1.000
											gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
											gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspLabel.ZIndex = 5
											gemscrollEspLabel.Font = Enum.Font.SourceSansBold
											gemscrollEspLabel.RichText = true
											gemscrollEspLabel.Text = "Diamond"
											gemscrollEspLabel.TextColor3 = Color3.fromRGB(164, 187, 190)
											gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											gemscrollEspLabel.TextStrokeTransparency = 0.650
											gemscrollEspLabel.TextTransparency = 0.250
											gemscrollEspLabel.TextSize = 15.000
											gemscrollEspLabel.TextWrapped = true
										elseif v.Color == Color3.fromRGB(0, 184, 49) and v.Material == Enum.Material.Glass then
											local gemscrollEspHolder = Instance.new("BillboardGui")
											gemscrollEspHolder.Name = "GemScrollviewHolder"
											gemscrollEspHolder.Parent = v
											gemscrollEspHolder.Active = false
											gemscrollEspHolder.Adornee = v
											gemscrollEspHolder.AlwaysOnTop = true
											gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											gemscrollEspHolder.ResetOnSpawn = false
											gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											gemscrollEspHolder.ClipsDescendants = true

											local gemscrollEspLabel = Instance.new("TextLabel")
											gemscrollEspLabel.Name = "GemScrollView"
											gemscrollEspLabel.Parent = gemscrollEspHolder
											gemscrollEspLabel.Active = false
											gemscrollEspLabel.BackgroundTransparency = 1.000
											gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
											gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspLabel.ZIndex = 5
											gemscrollEspLabel.Font = Enum.Font.SourceSansBold
											gemscrollEspLabel.RichText = true
											gemscrollEspLabel.Text = "Emerald"
											gemscrollEspLabel.TextColor3 = Color3.fromRGB(0, 184, 49)
											gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											gemscrollEspLabel.TextStrokeTransparency = 0.650
											gemscrollEspLabel.TextTransparency = 0.250
											gemscrollEspLabel.TextSize = 15.000
											gemscrollEspLabel.TextWrapped = true
										elseif v.Color == Color3.fromRGB(16, 42, 220) and v.Material == Enum.Material.Glass then
											local gemscrollEspHolder = Instance.new("BillboardGui")
											gemscrollEspHolder.Name = "GemScrollviewHolder"
											gemscrollEspHolder.Parent = v
											gemscrollEspHolder.Active = false
											gemscrollEspHolder.Adornee = v
											gemscrollEspHolder.AlwaysOnTop = true
											gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											gemscrollEspHolder.ResetOnSpawn = false
											gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											gemscrollEspHolder.ClipsDescendants = true

											local gemscrollEspLabel = Instance.new("TextLabel")
											gemscrollEspLabel.Name = "GemScrollView"
											gemscrollEspLabel.Parent = gemscrollEspHolder
											gemscrollEspLabel.Active = false
											gemscrollEspLabel.BackgroundTransparency = 1.000
											gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
											gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspLabel.ZIndex = 5
											gemscrollEspLabel.Font = Enum.Font.SourceSansBold
											gemscrollEspLabel.RichText = true
											gemscrollEspLabel.Text = "Sapphire"
											gemscrollEspLabel.TextColor3 = Color3.fromRGB(16, 42, 220)
											gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											gemscrollEspLabel.TextStrokeTransparency = 0.650
											gemscrollEspLabel.TextTransparency = 0.250
											gemscrollEspLabel.TextSize = 15.000
											gemscrollEspLabel.TextWrapped = true
										elseif v.Color == Color3.fromRGB(248, 248, 248) and v.Material == Enum.Material.Glass then
											local gemscrollEspHolder = Instance.new("BillboardGui")
											gemscrollEspHolder.Name = "GemScrollviewHolder"
											gemscrollEspHolder.Parent = v
											gemscrollEspHolder.Active = false
											gemscrollEspHolder.Adornee = v
											gemscrollEspHolder.AlwaysOnTop = true
											gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											gemscrollEspHolder.ResetOnSpawn = false
											gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											gemscrollEspHolder.ClipsDescendants = true

											local gemscrollEspLabel = Instance.new("TextLabel")
											gemscrollEspLabel.Name = "GemScrollView"
											gemscrollEspLabel.Parent = gemscrollEspHolder
											gemscrollEspLabel.Active = false
											gemscrollEspLabel.BackgroundTransparency = 1.000
											gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
											gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
											gemscrollEspLabel.ZIndex = 5
											gemscrollEspLabel.Font = Enum.Font.SourceSansBold
											gemscrollEspLabel.RichText = true
											gemscrollEspLabel.Text = "Opal"
											gemscrollEspLabel.TextColor3 = Color3.fromRGB(248, 248, 248)
											gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											gemscrollEspLabel.TextStrokeTransparency = 0.650
											gemscrollEspLabel.TextTransparency = 0.250
											gemscrollEspLabel.TextSize = 15.000
											gemscrollEspLabel.TextWrapped = true
										elseif v.Color == Color3.fromRGB(254, 85, 100) then
											if v:FindFirstChild("OrbParticle") then
												local gemscrollEspHolder = Instance.new("BillboardGui")
												gemscrollEspHolder.Name = "GemScrollviewHolder"
												gemscrollEspHolder.Parent = v
												gemscrollEspHolder.Active = false
												gemscrollEspHolder.Adornee = v
												gemscrollEspHolder.AlwaysOnTop = true
												gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
												gemscrollEspHolder.ResetOnSpawn = false
												gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
												gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
												gemscrollEspHolder.ClipsDescendants = true

												local gemscrollEspLabel = Instance.new("TextLabel")
												gemscrollEspLabel.Name = "GemScrollView"
												gemscrollEspLabel.Parent = gemscrollEspHolder
												gemscrollEspLabel.Active = false
												gemscrollEspLabel.BackgroundTransparency = 1.000
												gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
												gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
												gemscrollEspLabel.ZIndex = 5
												gemscrollEspLabel.Font = Enum.Font.SourceSansBold
												gemscrollEspLabel.RichText = true
												gemscrollEspLabel.Text = "Ice Essence"
												gemscrollEspLabel.TextColor3 = Color3.fromRGB(25, 185, 155)
												gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
												gemscrollEspLabel.TextStrokeTransparency = 0.650
												gemscrollEspLabel.TextTransparency = 0.250
												gemscrollEspLabel.TextSize = 15.000
												gemscrollEspLabel.TextWrapped = true
											end
										end
									end
								end
							end
						end
					end)
					RogueGemScrollEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Gem/Scroll Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -65, 1, -615)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			elseif roguegemscrollEsp == true then
				if LocalPlayer then
					task.spawn(function()
						roguegemscrollEsp = false
						for i, v in pairs(game.Workspace.Trinkets:GetChildren()) do
							if v:FindFirstChild("GemScrollviewHolder") then
								v.GemScrollviewHolder.Enabled = false
							end
						end
					end)
					RogueGemScrollEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Gem/Scroll Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -65, 1, -615)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			end
		end
	end)
	RogueArtifactEspButton.Name = "Activator3"
	RogueArtifactEspButton.Parent = RogueEspHolder
	RogueArtifactEspButton.Active = false
	RogueArtifactEspButton.AnchorPoint = Vector2.new(0.5, 1)
	RogueArtifactEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueArtifactEspButton.BackgroundTransparency = 1.000
	RogueArtifactEspButton.LayoutOrder = 1
	RogueArtifactEspButton.Position = UDim2.new(0.5, 85, 1, -595)
	RogueArtifactEspButton.Selectable = false
	RogueArtifactEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	RogueArtifactEspButton.Font = Enum.Font.SourceSansSemibold
	RogueArtifactEspButton.RichText = true
	RogueArtifactEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Artifact Turned Off</stroke>'
	RogueArtifactEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueArtifactEspButton.TextSize = 16.000
	RogueArtifactEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueArtifactEspButton.TextTransparency = 0.100
	RogueArtifactEspButton.TextWrapped = true
	RogueArtifactEspButton.TextXAlignment = Enum.TextXAlignment.Right
	RogueArtifactEspButton.MouseButton1Down:connect(function()
		if not RogueEspHolder:FindFirstChild("ActivateCD3") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RogueArtifactEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if rogueartifactEsp == false then
				if LocalPlayer then
					task.spawn(function()
						rogueartifactEsp = true
						for i, v in pairs(game.Workspace.Trinkets:GetChildren()) do
							if v:FindFirstChild("ArtifactviewHolder") then
								v.ArtifactviewHolder.Enabled = true
							end
							if not v:FindFirstChild("ArtifactviewHolder") then
								if v.Parent == game.Workspace.Trinkets then
									if v.ClassName == "MeshPart" then
										if v.MeshId == "rbxassetid://2520762076" then
											local artifactEspHolder = Instance.new("BillboardGui")
											artifactEspHolder.Name = "ArtifactviewHolder"
											artifactEspHolder.Parent = v
											artifactEspHolder.Active = false
											artifactEspHolder.Adornee = v
											artifactEspHolder.AlwaysOnTop = true
											artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											artifactEspHolder.ResetOnSpawn = false
											artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
											artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											artifactEspHolder.ClipsDescendants = true

											local artifactEspLabel = Instance.new("TextLabel")
											artifactEspLabel.Name = "ArtifactView"
											artifactEspLabel.Parent = artifactEspHolder
											artifactEspLabel.Active = false
											artifactEspLabel.BackgroundTransparency = 1.000
											artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
											artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
											artifactEspLabel.ZIndex = 5
											artifactEspLabel.Font = Enum.Font.SourceSansBold
											artifactEspLabel.RichText = true
											artifactEspLabel.Text = "Howler Friend"
											artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
											artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											artifactEspLabel.TextStrokeTransparency = 0.650
											artifactEspLabel.TextTransparency = 0.250
											artifactEspLabel.TextSize = 15.000
											artifactEspLabel.TextWrapped = true
										end
									elseif v.ClassName == "UnionOperation" then
										if v.Color == Color3.fromRGB(248, 217, 109) then
											local artifactEspHolder = Instance.new("BillboardGui")
											artifactEspHolder.Name = "ArtifactviewHolder"
											artifactEspHolder.Parent = v
											artifactEspHolder.Active = false
											artifactEspHolder.Adornee = v
											artifactEspHolder.AlwaysOnTop = true
											artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											artifactEspHolder.ResetOnSpawn = false
											artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
											artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											artifactEspHolder.ClipsDescendants = true

											local artifactEspLabel = Instance.new("TextLabel")
											artifactEspLabel.Name = "ArtifactView"
											artifactEspLabel.Parent = artifactEspHolder
											artifactEspLabel.Active = false
											artifactEspLabel.BackgroundTransparency = 1.000
											artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
											artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
											artifactEspLabel.ZIndex = 5
											artifactEspLabel.Font = Enum.Font.SourceSansBold
											artifactEspLabel.RichText = true
											artifactEspLabel.Text = "Scroom Key"
											artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
											artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											artifactEspLabel.TextStrokeTransparency = 0.650
											artifactEspLabel.TextTransparency = 0.250
											artifactEspLabel.TextSize = 15.000
											artifactEspLabel.TextWrapped = true
										elseif v.Color == Color3.fromRGB(255, 89, 89) then
											local artifactEspHolder = Instance.new("BillboardGui")
											artifactEspHolder.Name = "ArtifactviewHolder"
											artifactEspHolder.Parent = v
											artifactEspHolder.Active = false
											artifactEspHolder.Adornee = v
											artifactEspHolder.AlwaysOnTop = true
											artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											artifactEspHolder.ResetOnSpawn = false
											artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
											artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											artifactEspHolder.ClipsDescendants = true

											local artifactEspLabel = Instance.new("TextLabel")
											artifactEspLabel.Name = "ArtifactView"
											artifactEspLabel.Parent = artifactEspHolder
											artifactEspLabel.Active = false
											artifactEspLabel.BackgroundTransparency = 1.000
											artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
											artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
											artifactEspLabel.ZIndex = 5
											artifactEspLabel.Font = Enum.Font.SourceSansBold
											artifactEspLabel.RichText = true
											artifactEspLabel.Text = "Philosopher's Stone"
											artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
											artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											artifactEspLabel.TextStrokeTransparency = 0.650
											artifactEspLabel.TextTransparency = 0.250
											artifactEspLabel.TextSize = 15.000
											artifactEspLabel.TextWrapped = true
										elseif v.Color == Color3.fromRGB(29, 46, 58) then
											local artifactEspHolder = Instance.new("BillboardGui")
											artifactEspHolder.Name = "ArtifactviewHolder"
											artifactEspHolder.Parent = v
											artifactEspHolder.Active = false
											artifactEspHolder.Adornee = v
											artifactEspHolder.AlwaysOnTop = true
											artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											artifactEspHolder.ResetOnSpawn = false
											artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
											artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											artifactEspHolder.ClipsDescendants = true

											local artifactEspLabel = Instance.new("TextLabel")
											artifactEspLabel.Name = "ArtifactView"
											artifactEspLabel.Parent = artifactEspHolder
											artifactEspLabel.Active = false
											artifactEspLabel.BackgroundTransparency = 1.000
											artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
											artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
											artifactEspLabel.ZIndex = 5
											artifactEspLabel.Font = Enum.Font.SourceSansBold
											artifactEspLabel.RichText = true
											artifactEspLabel.Text = "Nightstone"
											artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
											artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											artifactEspLabel.TextStrokeTransparency = 0.650
											artifactEspLabel.TextTransparency = 0.250
											artifactEspLabel.TextSize = 15.000
											artifactEspLabel.TextWrapped = true
										elseif v.Color == Color3.fromRGB(248, 248, 248) and v.Material == Enum.Material.Neon then
											if v:FindFirstChild("PointLight") then
												local artifactEspHolder = Instance.new("BillboardGui")
												artifactEspHolder.Name = "ArtifactviewHolder"
												artifactEspHolder.Parent = v
												artifactEspHolder.Active = false
												artifactEspHolder.Adornee = v
												artifactEspHolder.AlwaysOnTop = true
												artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
												artifactEspHolder.ResetOnSpawn = false
												artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
												artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
												artifactEspHolder.ClipsDescendants = true

												local artifactEspLabel = Instance.new("TextLabel")
												artifactEspLabel.Name = "ArtifactView"
												artifactEspLabel.Parent = artifactEspHolder
												artifactEspLabel.Active = false
												artifactEspLabel.BackgroundTransparency = 1.000
												artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
												artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
												artifactEspLabel.ZIndex = 5
												artifactEspLabel.Font = Enum.Font.SourceSansBold
												artifactEspLabel.RichText = true
												artifactEspLabel.Text = "Amulet of the White King"
												artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
												artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
												artifactEspLabel.TextStrokeTransparency = 0.650
												artifactEspLabel.TextTransparency = 0.250
												artifactEspLabel.TextSize = 15.000
												artifactEspLabel.TextWrapped = true
											else
												local artifactEspHolder = Instance.new("BillboardGui")
												artifactEspHolder.Name = "ArtifactviewHolder"
												artifactEspHolder.Parent = v
												artifactEspHolder.Active = false
												artifactEspHolder.Adornee = v
												artifactEspHolder.AlwaysOnTop = true
												artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
												artifactEspHolder.ResetOnSpawn = false
												artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
												artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
												artifactEspHolder.ClipsDescendants = true

												local artifactEspLabel = Instance.new("TextLabel")
												artifactEspLabel.Name = "ArtifactView"
												artifactEspLabel.Parent = artifactEspHolder
												artifactEspLabel.Active = false
												artifactEspLabel.BackgroundTransparency = 1.000
												artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
												artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
												artifactEspLabel.ZIndex = 5
												artifactEspLabel.Font = Enum.Font.SourceSansBold
												artifactEspLabel.RichText = true
												artifactEspLabel.Text = "Lannis Amulet"
												artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
												artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
												artifactEspLabel.TextStrokeTransparency = 0.650
												artifactEspLabel.TextTransparency = 0.250
												artifactEspLabel.TextSize = 15.000
												artifactEspLabel.TextWrapped = true
											end
										end
									elseif v.ClassName == "Part" then
										if v.Color == Color3.fromRGB(255, 0, 191) and v.Material == Enum.Material.Glass then
											if not v:FindFirstChildOfClass("Script") then
												local artifactEspHolder = Instance.new("BillboardGui")
												artifactEspHolder.Name = "ArtifactviewHolder"
												artifactEspHolder.Parent = v
												artifactEspHolder.Active = false
												artifactEspHolder.Adornee = v
												artifactEspHolder.AlwaysOnTop = true
												artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
												artifactEspHolder.ResetOnSpawn = false
												artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
												artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
												artifactEspHolder.ClipsDescendants = true

												local artifactEspLabel = Instance.new("TextLabel")
												artifactEspLabel.Name = "ArtifactView"
												artifactEspLabel.Parent = artifactEspHolder
												artifactEspLabel.Active = false
												artifactEspLabel.BackgroundTransparency = 1.000
												artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
												artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
												artifactEspLabel.ZIndex = 5
												artifactEspLabel.Font = Enum.Font.SourceSansBold
												artifactEspLabel.RichText = true
												artifactEspLabel.Text = "Rift Gem"
												artifactEspLabel.TextColor3 = Color3.fromRGB(255, 0, 191)
												artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
												artifactEspLabel.TextStrokeTransparency = 0.650
												artifactEspLabel.TextTransparency = 0.250
												artifactEspLabel.TextSize = 15.000
												artifactEspLabel.TextWrapped = true
											end
										elseif v.Color == Color3.fromRGB(255, 255, 0) then
											local artifactEspHolder = Instance.new("BillboardGui")
											artifactEspHolder.Name = "ArtifactviewHolder"
											artifactEspHolder.Parent = v
											artifactEspHolder.Active = false
											artifactEspHolder.Adornee = v
											artifactEspHolder.AlwaysOnTop = true
											artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											artifactEspHolder.ResetOnSpawn = false
											artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
											artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											artifactEspHolder.ClipsDescendants = true

											local artifactEspLabel = Instance.new("TextLabel")
											artifactEspLabel.Name = "ArtifactView"
											artifactEspLabel.Parent = artifactEspHolder
											artifactEspLabel.Active = false
											artifactEspLabel.BackgroundTransparency = 1.000
											artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
											artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
											artifactEspLabel.ZIndex = 5
											artifactEspLabel.Font = Enum.Font.SourceSansBold
											artifactEspLabel.RichText = true
											artifactEspLabel.Text = "Spider Cloak"
											artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
											artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											artifactEspLabel.TextStrokeTransparency = 0.650
											artifactEspLabel.TextTransparency = 0.250
											artifactEspLabel.TextSize = 15.000
											artifactEspLabel.TextWrapped = true
										elseif v.Color == Color3.fromRGB(128, 187, 219) then
											local artifactEspHolder = Instance.new("BillboardGui")
											artifactEspHolder.Name = "ArtifactviewHolder"
											artifactEspHolder.Parent = v
											artifactEspHolder.Active = false
											artifactEspHolder.Adornee = v
											artifactEspHolder.AlwaysOnTop = true
											artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
											artifactEspHolder.ResetOnSpawn = false
											artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
											artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
											artifactEspHolder.ClipsDescendants = true

											local artifactEspLabel = Instance.new("TextLabel")
											artifactEspLabel.Name = "ArtifactView"
											artifactEspLabel.Parent = artifactEspHolder
											artifactEspLabel.Active = false
											artifactEspLabel.BackgroundTransparency = 1.000
											artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
											artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
											artifactEspLabel.ZIndex = 5
											artifactEspLabel.Font = Enum.Font.SourceSansBold
											artifactEspLabel.RichText = true
											artifactEspLabel.Text = "Fairfrozen"
											artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
											artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
											artifactEspLabel.TextStrokeTransparency = 0.650
											artifactEspLabel.TextTransparency = 0.250
											artifactEspLabel.TextSize = 15.000
											artifactEspLabel.TextWrapped = true
										elseif v.Color == Color3.fromRGB(163, 162, 165) then
											if v:FindFirstChildOfClass("Attachment") then
												if v.Attachment:FindFirstChildOfClass("ParticleEmitter") then
													if v.Attachment.ParticleEmitter.Texture == "rbxassetid://1536547385" then
														local artifactEspHolder = Instance.new("BillboardGui")
														artifactEspHolder.Name = "ArtifactviewHolder"
														artifactEspHolder.Parent = v
														artifactEspHolder.Active = false
														artifactEspHolder.Adornee = v
														artifactEspHolder.AlwaysOnTop = true
														artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
														artifactEspHolder.ResetOnSpawn = false
														artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
														artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
														artifactEspHolder.ClipsDescendants = true

														local artifactEspLabel = Instance.new("TextLabel")
														artifactEspLabel.Name = "ArtifactView"
														artifactEspLabel.Parent = artifactEspHolder
														artifactEspLabel.Active = false
														artifactEspLabel.BackgroundTransparency = 1.000
														artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
														artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
														artifactEspLabel.ZIndex = 5
														artifactEspLabel.Font = Enum.Font.SourceSansBold
														artifactEspLabel.RichText = true
														artifactEspLabel.Text = "P.M.A"
														artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
														artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
														artifactEspLabel.TextStrokeTransparency = 0.650
														artifactEspLabel.TextTransparency = 0.250
														artifactEspLabel.TextSize = 15.000
														artifactEspLabel.TextWrapped = true
													end
												end
											end
										end
									end
								end
							end
						end
					end)
					RogueArtifactEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Artifact Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD3"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -43, 1, -595)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			elseif rogueartifactEsp == true then
				if LocalPlayer then
					task.spawn(function()
						rogueartifactEsp = false
						for i, v in pairs(game.Workspace.Trinkets:GetChildren()) do
							if v:FindFirstChild("ArtifactviewHolder") then
								v.ArtifactviewHolder.Enabled = false
							end
						end
					end)
					RogueArtifactEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Artifact Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD3"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -43, 1, -595)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			end
		end
	end)
	RogueToolViewEspButton.Name = "Activator4"
	RogueToolViewEspButton.Parent = RogueEspHolder
	RogueToolViewEspButton.Active = false
	RogueToolViewEspButton.AnchorPoint = Vector2.new(0.5, 1)
	RogueToolViewEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueToolViewEspButton.BackgroundTransparency = 1.000
	RogueToolViewEspButton.LayoutOrder = 1
	RogueToolViewEspButton.Position = UDim2.new(0.5, 85, 1, -575)
	RogueToolViewEspButton.Selectable = false
	RogueToolViewEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	RogueToolViewEspButton.Font = Enum.Font.SourceSansSemibold
	RogueToolViewEspButton.RichText = true
	RogueToolViewEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Tool Turned Off</stroke>'
	RogueToolViewEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueToolViewEspButton.TextSize = 16.000
	RogueToolViewEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueToolViewEspButton.TextTransparency = 0.100
	RogueToolViewEspButton.TextWrapped = true
	RogueToolViewEspButton.TextXAlignment = Enum.TextXAlignment.Right
	RogueToolViewEspButton.MouseButton1Down:connect(function()
		if not RogueEspHolder:FindFirstChild("ActivateCD4") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RogueToolViewEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if roguetoolEsp == false then
				if LocalPlayer then
					task.spawn(function()
						roguetoolEsp = true
						for i, v in pairs(game.Workspace.Live:GetChildren()) do
							if v.Name ~= LocalPlayer.Name then
								if v:FindFirstChild("Head") then
									if v.Head:FindFirstChild("ToolviewHolder") then
										v.Head.ToolviewHolder.Enabled = true
									end
									if not v.Head:FindFirstChild("ToolviewHolder") then
										local toolEspHolder = Instance.new("BillboardGui")
										toolEspHolder.Name = "ToolviewHolder"
										toolEspHolder.Parent = v.Head
										toolEspHolder.Active = false
										toolEspHolder.Adornee = v.Head
										toolEspHolder.AlwaysOnTop = true
										toolEspHolder.MaxDistance = 99
										toolEspHolder.ResetOnSpawn = false
										toolEspHolder.Size = UDim2.new(0, 200, 0, 50)
										toolEspHolder.StudsOffset = Vector3.new(0, 3, 0)
										toolEspHolder.ClipsDescendants = true

										local toolEspLabel = Instance.new("TextLabel")
										toolEspLabel.Name = "ToolView"
										toolEspLabel.Parent = toolEspHolder
										toolEspLabel.Active = false
										toolEspLabel.BackgroundTransparency = 1.000
										toolEspLabel.Position = UDim2.new(0, 0, 0, 0)
										toolEspLabel.Size = UDim2.new(0, 200, 0, 50)
										toolEspLabel.ZIndex = 5
										toolEspLabel.Font = Enum.Font.SpecialElite
										toolEspLabel.RichText = true
										if v:FindFirstChildWhichIsA("Tool") then
											toolEspLabel.Text = v:FindFirstChildWhichIsA("Tool").Name
										elseif not v:FindFirstChildWhichIsA("Tool") then
											toolEspLabel.Text = ""
										end
										toolEspLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
										toolEspLabel.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
										toolEspLabel.TextStrokeTransparency = 0
										toolEspLabel.TextTransparency = 0
										toolEspLabel.TextSize = 21.000
										toolEspLabel.TextWrapped = true
										v.ChildAdded:Connect(function(tool)
											if tool.ClassName == "Tool" then
												if v:FindFirstChild("Head") then
													if v.Head:FindFirstChild("ToolviewHolder") then
														v.Head.ToolviewHolder.ToolView.Text = tool.Name
													end
												end
											end
										end)
										v.ChildRemoved:Connect(function(tool)
											if tool.ClassName == "Tool" then
												if v:FindFirstChild("Head") then
													if v.Head:FindFirstChild("ToolviewHolder") then
														v.Head.ToolviewHolder.ToolView.Text = ""
													end
												end
											end
										end)
									end
								end
							end
						end
					end)
					RogueToolViewEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Tool Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD4"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -25, 1, -575)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			elseif roguetoolEsp == true then
				if LocalPlayer then
					task.spawn(function()
						roguetoolEsp = false
						for i, v in pairs(game.Workspace.Live:GetChildren()) do
							if v:FindFirstChild("Head") then
								if v.Head:FindFirstChild("ToolviewHolder") then
									v.Head.ToolviewHolder.Enabled = false
								end
							end
						end
					end)
					RogueToolViewEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Tool Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD4"
					deb.Parent = RogueEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -25, 1, -575)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				end
			end
		end
	end)

	--// Notifier
	RogueNotifierHolder.Name = "Notifier"
	RogueNotifierHolder.Parent = DescSheet_3

	RogueNotifierTitle.Name = "NotifierTitle"
	RogueNotifierTitle.Parent = AutoHolder
	RogueNotifierTitle.Active = false
	RogueNotifierTitle.AnchorPoint = Vector2.new(0.5, 1)
	RogueNotifierTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueNotifierTitle.BackgroundTransparency = 1.000
	RogueNotifierTitle.LayoutOrder = 1
	RogueNotifierTitle.Position = UDim2.new(0.5, 85, 1, -535)
	RogueNotifierTitle.Selectable = false
	RogueNotifierTitle.Size = UDim2.new(0.5, 0, 0, 20)
	RogueNotifierTitle.Font = Enum.Font.SourceSansSemibold
	RogueNotifierTitle.RichText = true
	RogueNotifierTitle.Text = "<u>Artifact Notifier</u>"
	RogueNotifierTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueNotifierTitle.TextSize = 18.000
	RogueNotifierTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueNotifierTitle.TextTransparency = 0.100
	RogueNotifierTitle.TextWrapped = true
	RogueNotifierTitle.TextXAlignment = Enum.TextXAlignment.Right

	RogueNotifierButton.Name = "Activator"
	RogueNotifierButton.Parent = RogueNotifierHolder
	RogueNotifierButton.Active = false
	RogueNotifierButton.AnchorPoint = Vector2.new(0.5, 1)
	RogueNotifierButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RogueNotifierButton.BackgroundTransparency = 1.000
	RogueNotifierButton.LayoutOrder = 1
	RogueNotifierButton.Position = UDim2.new(0.5, 85, 1, -515)
	RogueNotifierButton.Selectable = false
	RogueNotifierButton.Size = UDim2.new(0.5, 0, 0, 20)
	RogueNotifierButton.Font = Enum.Font.SourceSansSemibold
	RogueNotifierButton.RichText = true
	RogueNotifierButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Notifier Turned Off</stroke>'
	RogueNotifierButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	RogueNotifierButton.TextSize = 16.000
	RogueNotifierButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	RogueNotifierButton.TextTransparency = 0.100
	RogueNotifierButton.TextWrapped = true
	RogueNotifierButton.TextXAlignment = Enum.TextXAlignment.Right
	RogueNotifierButton.MouseButton1Down:connect(function()
		if not RogueNotifierHolder:FindFirstChild("ActivateCD") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = RogueNotifierButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if roguenotifierOn == true then
				roguenotifierOn = false
				local deb = Instance.new("TextLabel")
				deb.Name = "ActivateCD"
				deb.Parent = RogueNotifierHolder
				deb.Active = false
				deb.AnchorPoint = Vector2.new(0.5, 1)
				deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				deb.BackgroundTransparency = 1.000
				deb.LayoutOrder = 1
				deb.Position = UDim2.new(0.5, -43, 1, -515)
				deb.Selectable = false
				deb.Size = UDim2.new(0.5, 0, 0, 20)
				deb.Font = Enum.Font.SourceSansSemibold
				deb.RichText = true
				deb.Text = "Wait"
				deb.TextColor3 = Color3.fromRGB(28, 36, 35)
				deb.TextSize = 16.000
				deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
				deb.TextTransparency = 0.600
				deb.TextWrapped = true
				deb.TextXAlignment = Enum.TextXAlignment.Right
				task.spawn(function()
					task.wait(0.5)
					deb:Destroy()
				end)
				RogueNotifierButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Notifier Turned Off</stroke>'
			elseif roguenotifierOn == false then
				roguenotifierOn = true
				local deb = Instance.new("TextLabel")
				deb.Name = "ActivateCD"
				deb.Parent = RogueNotifierHolder
				deb.Active = false
				deb.AnchorPoint = Vector2.new(0.5, 1)
				deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				deb.BackgroundTransparency = 1.000
				deb.LayoutOrder = 1
				deb.Position = UDim2.new(0.5, -43, 1, -515)
				deb.Selectable = false
				deb.Size = UDim2.new(0.5, 0, 0, 20)
				deb.Font = Enum.Font.SourceSansSemibold
				deb.RichText = true
				deb.Text = "Wait"
				deb.TextColor3 = Color3.fromRGB(28, 36, 35)
				deb.TextSize = 16.000
				deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
				deb.TextTransparency = 0.600
				deb.TextWrapped = true
				deb.TextXAlignment = Enum.TextXAlignment.Right
				task.spawn(function()
					task.wait(0.5)
					deb:Destroy()
				end)
				RogueNotifierButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Notifier Turned On</stroke>'
			end
		end
	end)
	--// Auto
	AutoHolder.Name = "Auto"
	AutoHolder.Parent = DescSheet_3

	AutoTitle.Name = "AutoTitle"
	AutoTitle.Parent = AutoHolder
	AutoTitle.Active = false
	AutoTitle.AnchorPoint = Vector2.new(0.5, 1)
	AutoTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	AutoTitle.BackgroundTransparency = 1.000
	AutoTitle.LayoutOrder = 1
	AutoTitle.Position = UDim2.new(0.5, 85, 1, -475)
	AutoTitle.Selectable = false
	AutoTitle.Size = UDim2.new(0.5, 0, 0, 20)
	AutoTitle.Font = Enum.Font.SourceSansSemibold
	AutoTitle.RichText = true
	AutoTitle.Text = "<u>Auto</u>"
	AutoTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
	AutoTitle.TextSize = 18.000
	AutoTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	AutoTitle.TextTransparency = 0.100
	AutoTitle.TextWrapped = true
	AutoTitle.TextXAlignment = Enum.TextXAlignment.Right

	AutoBardButton.Name = "AutoBard"
	AutoBardButton.Parent = AutoHolder
	AutoBardButton.Active = false
	AutoBardButton.AnchorPoint = Vector2.new(0.5, 1)
	AutoBardButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	AutoBardButton.BackgroundTransparency = 1.000
	AutoBardButton.LayoutOrder = 1
	AutoBardButton.Position = UDim2.new(0.5, 85, 1, -455)
	AutoBardButton.Selectable = false
	AutoBardButton.Size = UDim2.new(0.5, 0, 0, 20)
	AutoBardButton.Font = Enum.Font.SourceSansSemibold
	AutoBardButton.RichText = true
	AutoBardButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Bard Player</stroke>'
	AutoBardButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	AutoBardButton.TextSize = 16.000
	AutoBardButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	AutoBardButton.TextTransparency = 0.100
	AutoBardButton.TextWrapped = true
	AutoBardButton.TextXAlignment = Enum.TextXAlignment.Right
	AutoBardButton.MouseButton1Down:connect(function()
		if not AutoBardButton:FindFirstChild("Wait") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = AutoBardButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			local deb = Instance.new("Folder")
			deb.Name = "Wait"
			deb.Parent = AutoBardButton
			AutoBardButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Bard Player</stroke>'
			task.spawn(function()
				task.wait(4)
				AutoBardButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Bard Player</stroke>'
				deb:Destroy()
			end)
			if scr2 ~= "" then
				if game.Workspace.Live:FindFirstChild(LocalPlayer.Name) then
					if game.Workspace.Live[LocalPlayer.Name]:FindFirstChild("HumanoidRootPart") then
						if not game.Workspace.Live[LocalPlayer.Name].HumanoidRootPart:FindFirstChild("ZOobjc4ccPtui9fcbmp34YW28VkB") then
							pcall(function()
								loadstring(game:HttpGet(scr2))()
								local usedautoBard = Instance.new("Folder")
								usedautoBard.Name = "ZOobjc4ccPtui9fcbmp34YW28VkB"
								usedautoBard.Parent = game.Workspace.Live[LocalPlayer.Name].HumanoidRootPart
							end)
						else
							local alreadyusedbardText = Instance.new("TextLabel")
							alreadyusedbardText.Name = "AutoBardUsed"
							alreadyusedbardText.Parent = AutoHolder
							alreadyusedbardText.Active = false
							alreadyusedbardText.AnchorPoint = Vector2.new(0.5, 1)
							alreadyusedbardText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							alreadyusedbardText.BackgroundTransparency = 1.000
							alreadyusedbardText.LayoutOrder = 1
							alreadyusedbardText.Position = UDim2.new(0.5, 0, 1, -455)
							alreadyusedbardText.Selectable = false
							alreadyusedbardText.Size = UDim2.new(0.5, 0, 0, 20)
							alreadyusedbardText.Font = Enum.Font.SourceSansSemibold
							alreadyusedbardText.RichText = true
							alreadyusedbardText.Text = "Already used"
							alreadyusedbardText.TextColor3 = Color3.fromRGB(28, 36, 35)
							alreadyusedbardText.TextSize = 16.000
							alreadyusedbardText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
							alreadyusedbardText.TextTransparency = 0.600
							alreadyusedbardText.TextWrapped = true
							alreadyusedbardText.TextXAlignment = Enum.TextXAlignment.Right
							task.spawn(function()
								task.wait(2)
								alreadyusedbardText:Destroy()
							end)
						end
					end
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound"
					notfoundcharText.Parent = AutoHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, 0, 1, -455)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(2)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
elseif gameName == "VoxlBlade" then
	VoxlEspHolder.Name = "VoxlEsp"
	VoxlEspHolder.Parent = DescSheet_3

	VoxlEspTitle.Name = "EspTitle"
	VoxlEspTitle.Parent = VoxlEspHolder
	VoxlEspTitle.Active = false
	VoxlEspTitle.AnchorPoint = Vector2.new(0.5, 1)
	VoxlEspTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VoxlEspTitle.BackgroundTransparency = 1.000
	VoxlEspTitle.LayoutOrder = 1
	VoxlEspTitle.Position = UDim2.new(0.5, 85, 1, -655)
	VoxlEspTitle.Selectable = false
	VoxlEspTitle.Size = UDim2.new(0.5, 0, 0, 20)
	VoxlEspTitle.Font = Enum.Font.SourceSansSemibold
	VoxlEspTitle.RichText = true
	VoxlEspTitle.Text = "<u>General Esp</u>"
	VoxlEspTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
	VoxlEspTitle.TextSize = 18.000
	VoxlEspTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	VoxlEspTitle.TextTransparency = 0.100
	VoxlEspTitle.TextWrapped = true
	VoxlEspTitle.TextXAlignment = Enum.TextXAlignment.Right

	VoxlEnemyEspButton.Name = "Activator"
	VoxlEnemyEspButton.Parent = VoxlEspHolder
	VoxlEnemyEspButton.Active = false
	VoxlEnemyEspButton.AnchorPoint = Vector2.new(0.5, 1)
	VoxlEnemyEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VoxlEnemyEspButton.BackgroundTransparency = 1.000
	VoxlEnemyEspButton.LayoutOrder = 1
	VoxlEnemyEspButton.Position = UDim2.new(0.5, 85, 1, -635)
	VoxlEnemyEspButton.Selectable = false
	VoxlEnemyEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	VoxlEnemyEspButton.Font = Enum.Font.SourceSansSemibold
	VoxlEnemyEspButton.RichText = true
	VoxlEnemyEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Enemy Turned Off</stroke>'
	VoxlEnemyEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	VoxlEnemyEspButton.TextSize = 16.000
	VoxlEnemyEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	VoxlEnemyEspButton.TextTransparency = 0.100
	VoxlEnemyEspButton.TextWrapped = true
	VoxlEnemyEspButton.TextXAlignment = Enum.TextXAlignment.Right
	VoxlEnemyEspButton.MouseButton1Down:connect(function()
		if not VoxlEspHolder:FindFirstChild("ActivateCD") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = VoxlEnemyEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if voxlenemyEsp == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlenemyEsp = true
						for i, v in pairs(game.Workspace.NPCS:GetChildren()) do
							if v:FindFirstChild("EnemyviewHolder") then
								v.EnemyviewHolder.Enabled = true
							end
							if not v:FindFirstChild("EnemyviewHolder") then
								local enemyEspHolder = Instance.new("BillboardGui")
								enemyEspHolder.Name = "EnemyviewHolder"
								enemyEspHolder.Parent = v
								enemyEspHolder.Active = false
								enemyEspHolder.Adornee = v
								enemyEspHolder.AlwaysOnTop = true
								enemyEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
								enemyEspHolder.ResetOnSpawn = false
								enemyEspHolder.Size = UDim2.new(0, 200, 0, 50)
								enemyEspHolder.StudsOffset = Vector3.new(0, 5, 0)
								enemyEspHolder.ClipsDescendants = true

								local enemyEspLabel = Instance.new("TextLabel")
								enemyEspLabel.Name = "EnemyView"
								enemyEspLabel.Parent = enemyEspHolder
								enemyEspLabel.Active = false
								enemyEspLabel.BackgroundTransparency = 1.000
								enemyEspLabel.Position = UDim2.new(0, 0, 0, 0)
								enemyEspLabel.Size = UDim2.new(0, 200, 0, 50)
								enemyEspLabel.ZIndex = 5
								enemyEspLabel.Font = Enum.Font.SourceSansBold
								enemyEspLabel.RichText = true
								if v.Corrupt.Enabled == true or v.Magical.Enabled == true or v.Bloody.Enabled == true or v.Legendary.Enabled == true then
									if v.Corrupt.Enabled == true then
										enemyEspLabel.Text = "Corrupt "..v.Name
										enemyEspLabel.TextColor3 = Color3.fromRGB(140, 0, 255)
										enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
										enemyEspLabel.TextStrokeTransparency = 0.650
										enemyEspLabel.TextTransparency = 0.250
									elseif v.Magical.Enabled == true then
										enemyEspLabel.Text = "Magical "..v.Name
										enemyEspLabel.TextColor3 = Color3.fromRGB(105, 228, 255)
										enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
										enemyEspLabel.TextStrokeTransparency = 0.650
										enemyEspLabel.TextTransparency = 0.250
									elseif v.Bloody.Enabled == true then
										enemyEspLabel.Text = "Bloody "..v.Name
										enemyEspLabel.TextColor3 = Color3.fromRGB(255, 29, 29)
										enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
										enemyEspLabel.TextStrokeTransparency = 0.650
										enemyEspLabel.TextTransparency = 0.250
									elseif v.Legendary.Enabled == true then
										enemyEspLabel.Text = "Legendary "..v.Name
										enemyEspLabel.TextColor3 = Color3.fromRGB(237, 255, 70)
										enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
										enemyEspLabel.TextStrokeTransparency = 0.650
										enemyEspLabel.TextTransparency = 0.250
									end
								elseif string.find(v.Name,"Easter") then
									enemyEspLabel.Text = v.Name
									enemyEspLabel.TextColor3 = Color3.fromRGB(212, 144, 189)
									enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
									enemyEspLabel.TextStrokeTransparency = 0.650
									enemyEspLabel.TextTransparency = 0.250
								else
									enemyEspLabel.Text = v.Name
									enemyEspLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
									enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
									enemyEspLabel.TextStrokeTransparency = 0.900
									enemyEspLabel.TextTransparency = 0.100
								end
								enemyEspLabel.TextSize = 15.000
								enemyEspLabel.TextWrapped = true
							end
						end
					end)
					VoxlEnemyEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Enemy Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -40, 1, -635)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -40, 1, -635)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif voxlenemyEsp == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlenemyEsp = false
						for i, v in pairs(game.Workspace.NPCS:GetChildren()) do
							if v:FindFirstChild("EnemyviewHolder") then
								v.EnemyviewHolder.Enabled = false
							end
						end
					end)
					VoxlEnemyEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Enemy Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -40, 1, -635)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -40, 1, -635)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
	VoxlNpcEspButton.Name = "Activator2"
	VoxlNpcEspButton.Parent = VoxlEspHolder
	VoxlNpcEspButton.Active = false
	VoxlNpcEspButton.AnchorPoint = Vector2.new(0.5, 1)
	VoxlNpcEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VoxlNpcEspButton.BackgroundTransparency = 1.000
	VoxlNpcEspButton.LayoutOrder = 1
	VoxlNpcEspButton.Position = UDim2.new(0.5, 85, 1, -615)
	VoxlNpcEspButton.Selectable = false
	VoxlNpcEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	VoxlNpcEspButton.Font = Enum.Font.SourceSansSemibold
	VoxlNpcEspButton.RichText = true
	VoxlNpcEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Npc Turned Off</stroke>'
	VoxlNpcEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	VoxlNpcEspButton.TextSize = 16.000
	VoxlNpcEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	VoxlNpcEspButton.TextTransparency = 0.100
	VoxlNpcEspButton.TextWrapped = true
	VoxlNpcEspButton.TextXAlignment = Enum.TextXAlignment.Right
	VoxlNpcEspButton.MouseButton1Down:connect(function()
		if not VoxlEspHolder:FindFirstChild("ActivateCD2") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = VoxlNpcEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if voxlnpcEsp == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlnpcEsp = true
						for i, v in pairs(game.Workspace.Interactables:GetChildren()) do
							if v:FindFirstChild("NpcviewHolder") then
								v.NpcviewHolder.Enabled = true
							end
							if not v:FindFirstChild("NpcviewHolder") then
								if string.find(v.Name,"Shop") or v.Name == "Crafting" or v.ClassName == "Model" then
								else
									local npcEspHolder = Instance.new("BillboardGui")
									npcEspHolder.Name = "NpcviewHolder"
									npcEspHolder.Parent = v
									npcEspHolder.Active = false
									npcEspHolder.Adornee = v
									npcEspHolder.AlwaysOnTop = true
									npcEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
									npcEspHolder.ResetOnSpawn = false
									npcEspHolder.Size = UDim2.new(0, 200, 0, 50)
									npcEspHolder.StudsOffset = Vector3.new(0, 5, 0)
									npcEspHolder.ClipsDescendants = true

									local npcEspLabel = Instance.new("TextLabel")
									npcEspLabel.Name = "NpcView"
									npcEspLabel.Parent = npcEspHolder
									npcEspLabel.Active = false
									npcEspLabel.BackgroundTransparency = 1.000
									npcEspLabel.Position = UDim2.new(0, 0, 0, 0)
									npcEspLabel.Size = UDim2.new(0, 200, 0, 50)
									npcEspLabel.ZIndex = 5
									npcEspLabel.Font = Enum.Font.SourceSansBold
									npcEspLabel.RichText = true
									npcEspLabel.Text = v.Name
									npcEspLabel.TextColor3 = Color3.fromRGB(0, 255, 127)
									npcEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
									npcEspLabel.TextStrokeTransparency = 0.550
									npcEspLabel.TextTransparency = 0.200
									npcEspLabel.TextSize = 15.000
									npcEspLabel.TextWrapped = true
								end
							end
						end
					end)
					VoxlNpcEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Npc Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -25, 1, -615)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound2"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -25, 1, -615)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif voxlnpcEsp == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlnpcEsp = false
						for i, v in pairs(game.Workspace.Interactables:GetChildren()) do
							if v:FindFirstChild("NpcviewHolder") then
								v.NpcviewHolder.Enabled = false
							end
						end
					end)
					VoxlNpcEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Npc Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -25, 1, -615)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound2"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -25, 1, -615)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
	VoxlCraftingEspButton.Name = "Activator3"
	VoxlCraftingEspButton.Parent = VoxlEspHolder
	VoxlCraftingEspButton.Active = false
	VoxlCraftingEspButton.AnchorPoint = Vector2.new(0.5, 1)
	VoxlCraftingEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VoxlCraftingEspButton.BackgroundTransparency = 1.000
	VoxlCraftingEspButton.LayoutOrder = 1
	VoxlCraftingEspButton.Position = UDim2.new(0.5, 85, 1, -595)
	VoxlCraftingEspButton.Selectable = false
	VoxlCraftingEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	VoxlCraftingEspButton.Font = Enum.Font.SourceSansSemibold
	VoxlCraftingEspButton.RichText = true
	VoxlCraftingEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Crafting Turned Off</stroke>'
	VoxlCraftingEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	VoxlCraftingEspButton.TextSize = 16.000
	VoxlCraftingEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	VoxlCraftingEspButton.TextTransparency = 0.100
	VoxlCraftingEspButton.TextWrapped = true
	VoxlCraftingEspButton.TextXAlignment = Enum.TextXAlignment.Right
	VoxlCraftingEspButton.MouseButton1Down:connect(function()
		if not VoxlEspHolder:FindFirstChild("ActivateCD3") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = VoxlCraftingEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if voxlcraftingEsp == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlcraftingEsp = true
						for i, v in pairs(game.Workspace.Interactables:GetChildren()) do
							if v:FindFirstChild("CraftingviewHolder") then
								v.CraftingviewHolder.Enabled = true
							end
							if not v:FindFirstChild("CraftingviewHolder") then
								if v.Name == "Crafting" then
									local craftingEspHolder = Instance.new("BillboardGui")
									craftingEspHolder.Name = "CraftingviewHolder"
									craftingEspHolder.Parent = v
									craftingEspHolder.Active = false
									craftingEspHolder.Adornee = v
									craftingEspHolder.AlwaysOnTop = true
									craftingEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
									craftingEspHolder.ResetOnSpawn = false
									craftingEspHolder.Size = UDim2.new(0, 200, 0, 50)
									craftingEspHolder.StudsOffset = Vector3.new(0, 5, 0)
									craftingEspHolder.ClipsDescendants = true

									local craftingEspLabel = Instance.new("TextLabel")
									craftingEspLabel.Name = "CraftingView"
									craftingEspLabel.Parent = craftingEspHolder
									craftingEspLabel.Active = false
									craftingEspLabel.BackgroundTransparency = 1.000
									craftingEspLabel.Position = UDim2.new(0, 0, 0, 0)
									craftingEspLabel.Size = UDim2.new(0, 200, 0, 50)
									craftingEspLabel.ZIndex = 5
									craftingEspLabel.Font = Enum.Font.SourceSansBold
									craftingEspLabel.RichText = true
									craftingEspLabel.Text = v.Name
									craftingEspLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
									craftingEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
									craftingEspLabel.TextStrokeTransparency = 0.550
									craftingEspLabel.TextTransparency = 0.200
									craftingEspLabel.TextSize = 15.000
									craftingEspLabel.TextWrapped = true
								end
							end
						end
					end)
					VoxlCraftingEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Crafting Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD3"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -45, 1, -595)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound3"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -45, 1, -595)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif voxlcraftingEsp == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlcraftingEsp = false
						for i, v in pairs(game.Workspace.Interactables:GetChildren()) do
							if v:FindFirstChild("CraftingviewHolder") then
								v.CraftingviewHolder.Enabled = false
							end
						end
					end)
					VoxlCraftingEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Crafting Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD3"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -45, 1, -595)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound3"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -45, 1, -595)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
	VoxlShopEspButton.Name = "Activator4"
	VoxlShopEspButton.Parent = VoxlEspHolder
	VoxlShopEspButton.Active = false
	VoxlShopEspButton.AnchorPoint = Vector2.new(0.5, 1)
	VoxlShopEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VoxlShopEspButton.BackgroundTransparency = 1.000
	VoxlShopEspButton.LayoutOrder = 1
	VoxlShopEspButton.Position = UDim2.new(0.5, 85, 1, -575)
	VoxlShopEspButton.Selectable = false
	VoxlShopEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	VoxlShopEspButton.Font = Enum.Font.SourceSansSemibold
	VoxlShopEspButton.RichText = true
	VoxlShopEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Shop Turned Off</stroke>'
	VoxlShopEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	VoxlShopEspButton.TextSize = 16.000
	VoxlShopEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	VoxlShopEspButton.TextTransparency = 0.100
	VoxlShopEspButton.TextWrapped = true
	VoxlShopEspButton.TextXAlignment = Enum.TextXAlignment.Right
	VoxlShopEspButton.MouseButton1Down:connect(function()
		if not VoxlEspHolder:FindFirstChild("ActivateCD4") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = VoxlShopEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if voxlshopEsp == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlshopEsp = true
						for i, v in pairs(game.Workspace.Interactables:GetChildren()) do
							if v:FindFirstChild("ShopviewHolder") then
								v.ShopviewHolder.Enabled = true
							end
							if not v:FindFirstChild("ShopviewHolder") then
								if string.find(v.Name,"Shop") then
									local shopEspHolder = Instance.new("BillboardGui")
									shopEspHolder.Name = "ShopviewHolder"
									shopEspHolder.Parent = v
									shopEspHolder.Active = false
									shopEspHolder.Adornee = v
									shopEspHolder.AlwaysOnTop = true
									shopEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
									shopEspHolder.ResetOnSpawn = false
									shopEspHolder.Size = UDim2.new(0, 200, 0, 50)
									shopEspHolder.StudsOffset = Vector3.new(0, 5, 0)
									shopEspHolder.ClipsDescendants = true

									local shopEspLabel = Instance.new("TextLabel")
									shopEspLabel.Name = "ShopView"
									shopEspLabel.Parent = shopEspHolder
									shopEspLabel.Active = false
									shopEspLabel.BackgroundTransparency = 1.000
									shopEspLabel.Position = UDim2.new(0, 0, 0, 0)
									shopEspLabel.Size = UDim2.new(0, 200, 0, 50)
									shopEspLabel.ZIndex = 5
									shopEspLabel.Font = Enum.Font.SourceSansBold
									shopEspLabel.RichText = true
									shopEspLabel.Text = v.Name
									shopEspLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
									shopEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
									shopEspLabel.TextStrokeTransparency = 0.550
									shopEspLabel.TextTransparency = 0.200
									shopEspLabel.TextSize = 15.000
									shopEspLabel.TextWrapped = true
								end
							end
						end
					end)
					VoxlShopEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Shop Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD4"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -30, 1, -575)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound4"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -30, 1, -575)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif voxlshopEsp == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlshopEsp = false
						for i, v in pairs(game.Workspace.Interactables:GetChildren()) do
							if v:FindFirstChild("ShopviewHolder") then
								v.ShopviewHolder.Enabled = false
							end
						end
					end)
					VoxlShopEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Shop Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD4"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -30, 1, -575)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound4"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -30, 1, -575)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
	VoxlShrineEspButton.Name = "Activator5"
	VoxlShrineEspButton.Parent = VoxlEspHolder
	VoxlShrineEspButton.Active = false
	VoxlShrineEspButton.AnchorPoint = Vector2.new(0.5, 1)
	VoxlShrineEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VoxlShrineEspButton.BackgroundTransparency = 1.000
	VoxlShrineEspButton.LayoutOrder = 1
	VoxlShrineEspButton.Position = UDim2.new(0.5, 85, 1, -555)
	VoxlShrineEspButton.Selectable = false
	VoxlShrineEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	VoxlShrineEspButton.Font = Enum.Font.SourceSansSemibold
	VoxlShrineEspButton.RichText = true
	VoxlShrineEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Shrine Turned Off</stroke>'
	VoxlShrineEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	VoxlShrineEspButton.TextSize = 16.000
	VoxlShrineEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	VoxlShrineEspButton.TextTransparency = 0.100
	VoxlShrineEspButton.TextWrapped = true
	VoxlShrineEspButton.TextXAlignment = Enum.TextXAlignment.Right
	VoxlShrineEspButton.MouseButton1Down:connect(function()
		if not VoxlEspHolder:FindFirstChild("ActivateCD5") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = VoxlShrineEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if voxlshrineEsp == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlshrineEsp = true
						for i, v in pairs(game.Workspace.Shrines:GetChildren()) do
							if v:FindFirstChild("ShrineviewHolder") then
								v.ShrineviewHolder.Enabled = true
							end
							if not v:FindFirstChild("ShrineviewHolder") then
								local shrineEspHolder = Instance.new("BillboardGui")
								shrineEspHolder.Name = "ShrineviewHolder"
								shrineEspHolder.Parent = v
								shrineEspHolder.Active = false
								shrineEspHolder.Adornee = v
								shrineEspHolder.AlwaysOnTop = true
								shrineEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
								shrineEspHolder.ResetOnSpawn = false
								shrineEspHolder.Size = UDim2.new(0, 200, 0, 50)
								shrineEspHolder.StudsOffset = Vector3.new(0, 5, 0)
								shrineEspHolder.ClipsDescendants = true

								local shrineEspLabel = Instance.new("TextLabel")
								shrineEspLabel.Name = "ShrineView"
								shrineEspLabel.Parent = shrineEspHolder
								shrineEspLabel.Active = false
								shrineEspLabel.BackgroundTransparency = 1.000
								shrineEspLabel.Position = UDim2.new(0, 0, 0, 0)
								shrineEspLabel.Size = UDim2.new(0, 200, 0, 50)
								shrineEspLabel.ZIndex = 5
								shrineEspLabel.Font = Enum.Font.SourceSansBold
								shrineEspLabel.RichText = true
								shrineEspLabel.Text = v.Name
								shrineEspLabel.TextColor3 = v.Enabled.Color
								shrineEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
								shrineEspLabel.TextStrokeTransparency = 0.550
								shrineEspLabel.TextTransparency = 0.200
								shrineEspLabel.TextSize = 15.000
								shrineEspLabel.TextWrapped = true
							end
						end
					end)
					VoxlShrineEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Shrine Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD5"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -35, 1, -555)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound5"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -35, 1, -555)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif voxlshrineEsp == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlshrineEsp = false
						for i, v in pairs(game.Workspace.Shrines:GetChildren()) do
							if v:FindFirstChild("ShrineviewHolder") then
								v.ShrineviewHolder.Enabled = false
							end
						end
					end)
					VoxlShrineEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Shrine Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD5"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -35, 1, -555)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound5"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -35, 1, -555)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
	VoxlInfuserEspButton.Name = "Activator6"
	VoxlInfuserEspButton.Parent = VoxlEspHolder
	VoxlInfuserEspButton.Active = false
	VoxlInfuserEspButton.AnchorPoint = Vector2.new(0.5, 1)
	VoxlInfuserEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VoxlInfuserEspButton.BackgroundTransparency = 1.000
	VoxlInfuserEspButton.LayoutOrder = 1
	VoxlInfuserEspButton.Position = UDim2.new(0.5, 85, 1, -535)
	VoxlInfuserEspButton.Selectable = false
	VoxlInfuserEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	VoxlInfuserEspButton.Font = Enum.Font.SourceSansSemibold
	VoxlInfuserEspButton.RichText = true
	VoxlInfuserEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Infuser Turned Off</stroke>'
	VoxlInfuserEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	VoxlInfuserEspButton.TextSize = 16.000
	VoxlInfuserEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	VoxlInfuserEspButton.TextTransparency = 0.100
	VoxlInfuserEspButton.TextWrapped = true
	VoxlInfuserEspButton.TextXAlignment = Enum.TextXAlignment.Right
	VoxlInfuserEspButton.MouseButton1Down:connect(function()
		if not VoxlEspHolder:FindFirstChild("ActivateCD6") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = VoxlInfuserEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if voxlinfuserEsp == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlinfuserEsp = true
						for i, v in pairs(game.Workspace.Infusers:GetChildren()) do
							if v:FindFirstChild("InfuserviewHolder") then
								v.InfuserviewHolder.Enabled = true
							end
							if not v:FindFirstChild("InfuserviewHolder") then
								local infuserEspHolder = Instance.new("BillboardGui")
								infuserEspHolder.Name = "InfuserviewHolder"
								infuserEspHolder.Parent = v
								infuserEspHolder.Active = false
								infuserEspHolder.Adornee = v
								infuserEspHolder.AlwaysOnTop = true
								infuserEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
								infuserEspHolder.ResetOnSpawn = false
								infuserEspHolder.Size = UDim2.new(0, 200, 0, 50)
								infuserEspHolder.StudsOffset = Vector3.new(0, 5, 0)
								infuserEspHolder.ClipsDescendants = true

								local infuserEspLabel = Instance.new("TextLabel")
								infuserEspLabel.Name = "InfuserView"
								infuserEspLabel.Parent = infuserEspHolder
								infuserEspLabel.Active = false
								infuserEspLabel.BackgroundTransparency = 1.000
								infuserEspLabel.Position = UDim2.new(0, 0, 0, 0)
								infuserEspLabel.Size = UDim2.new(0, 200, 0, 50)
								infuserEspLabel.ZIndex = 5
								infuserEspLabel.Font = Enum.Font.SourceSansBold
								infuserEspLabel.RichText = true
								infuserEspLabel.Text = v.Name.." Infuser"
								infuserEspLabel.TextColor3 = v.Enabled.Color
								infuserEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
								infuserEspLabel.TextStrokeTransparency = 0.550
								infuserEspLabel.TextTransparency = 0.200
								infuserEspLabel.TextSize = 15.000
								infuserEspLabel.TextWrapped = true
							end
						end
					end)
					VoxlInfuserEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Infuser Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD6"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -37, 1, -535)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound6"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -37, 1, -535)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif voxlinfuserEsp == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlinfuserEsp = false
						for i, v in pairs(game.Workspace.Infusers:GetChildren()) do
							if v:FindFirstChild("InfuserviewHolder") then
								v.InfuserviewHolder.Enabled = false
							end
						end
					end)
					VoxlInfuserEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Infuser Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD6"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -37, 1, -535)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound6"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -37, 1, -535)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
	VoxlSnailsmanEspButton.Name = "Activator7"
	VoxlSnailsmanEspButton.Parent = VoxlEspHolder
	VoxlSnailsmanEspButton.Active = false
	VoxlSnailsmanEspButton.AnchorPoint = Vector2.new(0.5, 1)
	VoxlSnailsmanEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VoxlSnailsmanEspButton.BackgroundTransparency = 1.000
	VoxlSnailsmanEspButton.LayoutOrder = 1
	VoxlSnailsmanEspButton.Position = UDim2.new(0.5, 85, 1, -515)
	VoxlSnailsmanEspButton.Selectable = false
	VoxlSnailsmanEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	VoxlSnailsmanEspButton.Font = Enum.Font.SourceSansSemibold
	VoxlSnailsmanEspButton.RichText = true
	VoxlSnailsmanEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Snailsman Turned Off</stroke>'
	VoxlSnailsmanEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	VoxlSnailsmanEspButton.TextSize = 16.000
	VoxlSnailsmanEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	VoxlSnailsmanEspButton.TextTransparency = 0.100
	VoxlSnailsmanEspButton.TextWrapped = true
	VoxlSnailsmanEspButton.TextXAlignment = Enum.TextXAlignment.Right
	VoxlSnailsmanEspButton.MouseButton1Down:connect(function()
		if not VoxlEspHolder:FindFirstChild("ActivateCD7") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = VoxlSnailsmanEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if voxlsnailsmanEsp == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlsnailsmanEsp = true
						for i, v in pairs(game.Workspace.Map:GetDescendants()) do
							if v:FindFirstChild("SnailsmanviewHolder") then
								v.SnailsmanviewHolder.Enabled = true
							end
							if not v:FindFirstChild("SnailsmanviewHolder") then
								if v.Name == "Snailsman" then
									local snailsmanEspHolder = Instance.new("BillboardGui")
									snailsmanEspHolder.Name = "SnailsmanviewHolder"
									snailsmanEspHolder.Parent = v
									snailsmanEspHolder.Active = false
									snailsmanEspHolder.Adornee = v
									snailsmanEspHolder.AlwaysOnTop = true
									snailsmanEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
									snailsmanEspHolder.ResetOnSpawn = false
									snailsmanEspHolder.Size = UDim2.new(0, 200, 0, 50)
									snailsmanEspHolder.StudsOffset = Vector3.new(0, 5, 0)
									snailsmanEspHolder.ClipsDescendants = true

									local snailsmanEspLabel = Instance.new("TextLabel")
									snailsmanEspLabel.Name = "SnailsmanView"
									snailsmanEspLabel.Parent = snailsmanEspHolder
									snailsmanEspLabel.Active = false
									snailsmanEspLabel.BackgroundTransparency = 1.000
									snailsmanEspLabel.Position = UDim2.new(0, 0, 0, 0)
									snailsmanEspLabel.Size = UDim2.new(0, 200, 0, 50)
									snailsmanEspLabel.ZIndex = 5
									snailsmanEspLabel.Font = Enum.Font.SourceSansBold
									snailsmanEspLabel.RichText = true
									snailsmanEspLabel.Text = v.Name
									snailsmanEspLabel.TextColor3 = Color3.fromRGB(86, 66, 54)
									snailsmanEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
									snailsmanEspLabel.TextStrokeTransparency = 0.550
									snailsmanEspLabel.TextTransparency = 0.200
									snailsmanEspLabel.TextSize = 15.000
									snailsmanEspLabel.TextWrapped = true
								end
							end
						end
					end)
					VoxlSnailsmanEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Snailsman Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD7"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -60, 1, -515)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound7"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -60, 1, -515)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif voxlsnailsmanEsp == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						voxlsnailsmanEsp = false
						for i, v in pairs(game.Workspace.Map:GetDescendants()) do
							if v:FindFirstChild("SnailsmanviewHolder") then
								v.SnailsmanviewHolder.Enabled = false
							end
						end
					end)
					VoxlSnailsmanEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Snailsman Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD7"
					deb.Parent = VoxlEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -60, 1, -515)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound7"
					notfoundcharText.Parent = VoxlEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -60, 1, -515)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
elseif gameName == "Lore Game" then
	LoreEspHolder.Name = "LoreEsp"
	LoreEspHolder.Parent = DescSheet_3

	LoreEspTitle.Name = "EspTitle"
	LoreEspTitle.Parent = LoreEspHolder
	LoreEspTitle.Active = false
	LoreEspTitle.AnchorPoint = Vector2.new(0.5, 1)
	LoreEspTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoreEspTitle.BackgroundTransparency = 1.000
	LoreEspTitle.LayoutOrder = 1
	LoreEspTitle.Position = UDim2.new(0.5, 85, 1, -655)
	LoreEspTitle.Selectable = false
	LoreEspTitle.Size = UDim2.new(0.5, 0, 0, 20)
	LoreEspTitle.Font = Enum.Font.SourceSansSemibold
	LoreEspTitle.RichText = true
	LoreEspTitle.Text = "<u>General Esp</u>"
	LoreEspTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
	LoreEspTitle.TextSize = 18.000
	LoreEspTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	LoreEspTitle.TextTransparency = 0.100
	LoreEspTitle.TextWrapped = true
	LoreEspTitle.TextXAlignment = Enum.TextXAlignment.Right

	LorePlayerEspButton.Name = "Activator"
	LorePlayerEspButton.Parent = LoreEspHolder
	LorePlayerEspButton.Active = false
	LorePlayerEspButton.AnchorPoint = Vector2.new(0.5, 1)
	LorePlayerEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LorePlayerEspButton.BackgroundTransparency = 1.000
	LorePlayerEspButton.LayoutOrder = 1
	LorePlayerEspButton.Position = UDim2.new(0.5, 85, 1, -635)
	LorePlayerEspButton.Selectable = false
	LorePlayerEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	LorePlayerEspButton.Font = Enum.Font.SourceSansSemibold
	LorePlayerEspButton.RichText = true
	LorePlayerEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Nearby Players Turned Off</stroke>'
	LorePlayerEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	LorePlayerEspButton.TextSize = 16.000
	LorePlayerEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	LorePlayerEspButton.TextTransparency = 0.100
	LorePlayerEspButton.TextWrapped = true
	LorePlayerEspButton.TextXAlignment = Enum.TextXAlignment.Right
	LorePlayerEspButton.MouseButton1Down:connect(function()
		if not LoreEspHolder:FindFirstChild("ActivateCD") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = LorePlayerEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if loreplayerEsp == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						loreplayerEsp = true
						for i, v in pairs(game.Workspace:GetChildren()) do
							if game.Players:FindFirstChild(v.Name) and LocalPlayer.Name ~= v.Name then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									playerEspHandle(v,loreplayerEsp,true,Color3.fromRGB(206, 61, 48))
									if v.HumanoidRootPart:FindFirstChild("PlayerviewHolder") then
										v.HumanoidRootPart.PlayerviewHolder.Enabled = true
									end
									if v.HumanoidRootPart:FindFirstChild("PlayerhealthHolder") then
										v.HumanoidRootPart.PlayerhealthHolder.Enabled = true
									end
								end
							end
						end
					end)
					LorePlayerEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Nearby Players Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = LoreEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -82, 1, -635)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound"
					notfoundcharText.Parent = LoreEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -82, 1, -635)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif loreplayerEsp == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						loreplayerEsp = false
						for i, v in pairs(game.Workspace:GetChildren()) do
							if game.Players:FindFirstChild(v.Name) and LocalPlayer.Name ~= v.Name then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									if v.HumanoidRootPart:FindFirstChild("PlayerviewHolder") then
										v.HumanoidRootPart.PlayerviewHolder.Enabled = false
									end
									if v.HumanoidRootPart:FindFirstChild("PlayerhealthHolder") then
										v.HumanoidRootPart.PlayerhealthHolder.Enabled = false
									end
								end
							end
						end
					end)
					LorePlayerEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Nearby Players Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = LoreEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -82, 1, -635)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound"
					notfoundcharText.Parent = LoreEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -82, 1, -635)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
	LoreMobEspButton.Name = "Activator2"
	LoreMobEspButton.Parent = LoreEspHolder
	LoreMobEspButton.Active = false
	LoreMobEspButton.AnchorPoint = Vector2.new(0.5, 1)
	LoreMobEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoreMobEspButton.BackgroundTransparency = 1.000
	LoreMobEspButton.LayoutOrder = 1
	LoreMobEspButton.Position = UDim2.new(0.5, 85, 1, -615)
	LoreMobEspButton.Selectable = false
	LoreMobEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	LoreMobEspButton.Font = Enum.Font.SourceSansSemibold
	LoreMobEspButton.RichText = true
	LoreMobEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Nearby Mobs Turned Off</stroke>'
	LoreMobEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	LoreMobEspButton.TextSize = 16.000
	LoreMobEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	LoreMobEspButton.TextTransparency = 0.100
	LoreMobEspButton.TextWrapped = true
	LoreMobEspButton.TextXAlignment = Enum.TextXAlignment.Right
	LoreMobEspButton.MouseButton1Down:connect(function()
		if not LoreEspHolder:FindFirstChild("ActivateCD2") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = LoreMobEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if loremobEsp == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						loremobEsp = true
						for i, childType in pairs(game.Workspace:GetChildren()) do
							if childType:FindFirstChild("Humanoid") and childType:FindFirstChild("HumanoidRootPart") and not childType:FindFirstChild("StarterCharacter") then
								playerEspHandle(childType,loremobEsp,true,Color3.fromRGB(0, 199, 146))
								if childType.HumanoidRootPart:FindFirstChild("PlayerviewHolder") then
									childType.HumanoidRootPart.PlayerviewHolder.Enabled = true
								end
								if childType.HumanoidRootPart:FindFirstChild("PlayerhealthHolder") then
									childType.HumanoidRootPart.PlayerhealthHolder.Enabled = true
								end
							end
						end
					end)
					LoreMobEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Nearby Mobs Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = LoreEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -70, 1, -615)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound2"
					notfoundcharText.Parent = LoreEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -70, 1, -615)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif loremobEsp == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						loremobEsp = false
						for i, childType in pairs(game.Workspace:GetChildren()) do
							if childType:FindFirstChild("Humanoid") and childType:FindFirstChild("HumanoidRootPart") and not childType:FindFirstChild("StarterCharacter") then
								if childType.HumanoidRootPart:FindFirstChild("PlayerviewHolder") then
									childType.HumanoidRootPart.PlayerviewHolder.Enabled = false
								end
								if childType.HumanoidRootPart:FindFirstChild("PlayerhealthHolder") then
									childType.HumanoidRootPart.PlayerhealthHolder.Enabled = false
								end
							end
						end
					end)
					LoreMobEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Nearby Mobs Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = LoreEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -70, 1, -615)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound2"
					notfoundcharText.Parent = LoreEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -70, 1, -615)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
	LoreNPCEspButton.Name = "Activator3"
	LoreNPCEspButton.Parent = LoreEspHolder
	LoreNPCEspButton.Active = false
	LoreNPCEspButton.AnchorPoint = Vector2.new(0.5, 1)
	LoreNPCEspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoreNPCEspButton.BackgroundTransparency = 1.000
	LoreNPCEspButton.LayoutOrder = 1
	LoreNPCEspButton.Position = UDim2.new(0.5, 85, 1, -595)
	LoreNPCEspButton.Selectable = false
	LoreNPCEspButton.Size = UDim2.new(0.5, 0, 0, 20)
	LoreNPCEspButton.Font = Enum.Font.SourceSansSemibold
	LoreNPCEspButton.RichText = true
	LoreNPCEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Nearby NPCs Turned Off</stroke>'
	LoreNPCEspButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	LoreNPCEspButton.TextSize = 16.000
	LoreNPCEspButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	LoreNPCEspButton.TextTransparency = 0.100
	LoreNPCEspButton.TextWrapped = true
	LoreNPCEspButton.TextXAlignment = Enum.TextXAlignment.Right
	LoreNPCEspButton.MouseButton1Down:connect(function()
		if not LoreEspHolder:FindFirstChild("ActivateCD3") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = LoreNPCEspButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if lorenpcEsp == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						lorenpcEsp = true
						for i, npcType in pairs(game.Workspace.map.NPC:GetDescendants()) do
							if npcType:IsA("Model") and npcType.Parent:IsA("Folder") and npcType.Parent.Parent.Name == "NPC" then
								if npcType:FindFirstChild("Humanoid") and npcType:FindFirstChild("HumanoidRootPart") and npcType:FindFirstChild("Body Colors") then
									playerEspHandle(npcType,lorenpcEsp,false,Color3.fromRGB(139, 139, 207))
									if npcType.HumanoidRootPart:FindFirstChild("PlayerviewHolder") then
										npcType.HumanoidRootPart.PlayerviewHolder.Enabled = true
									end
								end
							end
						end
					end)
					LoreNPCEspButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Nearby NPCs Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD3"
					deb.Parent = LoreEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -69, 1, -595)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound3"
					notfoundcharText.Parent = LoreEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -69, 1, -595)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif lorenpcEsp == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						lorenpcEsp = false
						for i, npcType in pairs(game.Workspace.map.NPC:GetDescendants()) do
							if npcType:IsA("Model") and npcType.Parent:IsA("Folder") and npcType.Parent.Parent.Name == "NPC" then
								if npcType:FindFirstChild("Humanoid") and npcType:FindFirstChild("HumanoidRootPart") and npcType:FindFirstChild("Body Colors") then
									if npcType.HumanoidRootPart:FindFirstChild("PlayerviewHolder") then
										npcType.HumanoidRootPart.PlayerviewHolder.Enabled = false
									end
								end
							end
						end
					end)
					LoreNPCEspButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Nearby NPCs Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD3"
					deb.Parent = LoreEspHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -69, 1, -595)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound3"
					notfoundcharText.Parent = LoreEspHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -69, 1, -595)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)

	--// Lighting
	LoreLightingHolder.Name = "LoreLighting"
	LoreLightingHolder.Parent = DescSheet_3

	LoreLightingTitle.Name = "LightingTitle"
	LoreLightingTitle.Parent = LoreLightingHolder
	LoreLightingTitle.Active = false
	LoreLightingTitle.AnchorPoint = Vector2.new(0.5, 1)
	LoreLightingTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoreLightingTitle.BackgroundTransparency = 1.000
	LoreLightingTitle.LayoutOrder = 1
	LoreLightingTitle.Position = UDim2.new(0.5, 85, 1, -555)
	LoreLightingTitle.Selectable = false
	LoreLightingTitle.Size = UDim2.new(0.5, 0, 0, 20)
	LoreLightingTitle.Font = Enum.Font.SourceSansSemibold
	LoreLightingTitle.RichText = true
	LoreLightingTitle.Text = "<u>General Esp</u>"
	LoreLightingTitle.TextColor3 = Color3.fromRGB(28, 36, 35)
	LoreLightingTitle.TextSize = 18.000
	LoreLightingTitle.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	LoreLightingTitle.TextTransparency = 0.100
	LoreLightingTitle.TextWrapped = true
	LoreLightingTitle.TextXAlignment = Enum.TextXAlignment.Right

	LoreAmbienceButton.Name = "Activator"
	LoreAmbienceButton.Parent = LoreLightingHolder
	LoreAmbienceButton.Active = false
	LoreAmbienceButton.AnchorPoint = Vector2.new(0.5, 1)
	LoreAmbienceButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoreAmbienceButton.BackgroundTransparency = 1.000
	LoreAmbienceButton.LayoutOrder = 1
	LoreAmbienceButton.Position = UDim2.new(0.5, 85, 1, -535)
	LoreAmbienceButton.Selectable = false
	LoreAmbienceButton.Size = UDim2.new(0.5, 0, 0, 20)
	LoreAmbienceButton.Font = Enum.Font.SourceSansSemibold
	LoreAmbienceButton.RichText = true
	LoreAmbienceButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Ambience+ Turned Off</stroke>'
	LoreAmbienceButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	LoreAmbienceButton.TextSize = 16.000
	LoreAmbienceButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	LoreAmbienceButton.TextTransparency = 0.100
	LoreAmbienceButton.TextWrapped = true
	LoreAmbienceButton.TextXAlignment = Enum.TextXAlignment.Right
	LoreAmbienceButton.MouseButton1Down:connect(function()
		if not LoreLightingHolder:FindFirstChild("ActivateCD") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = LoreAmbienceButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if loreambienceLighting == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						loreambienceLighting = true
						game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
					end)
					LoreAmbienceButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">Ambience+ Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = LoreLightingHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -60, 1, -535)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound"
					notfoundcharText.Parent = LoreLightingHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -60, 1, -535)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif loreambienceLighting == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						loreambienceLighting = false
						game.Lighting.Ambient = Color3.fromRGB(90, 90, 90)
					end)
					LoreAmbienceButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">Ambience+ Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD"
					deb.Parent = LoreLightingHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -60, 1, -535)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound"
					notfoundcharText.Parent = LoreLightingHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -60, 1, -535)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
	LoreDOFButton.Name = "Activator2"
	LoreDOFButton.Parent = LoreLightingHolder
	LoreDOFButton.Active = false
	LoreDOFButton.AnchorPoint = Vector2.new(0.5, 1)
	LoreDOFButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoreDOFButton.BackgroundTransparency = 1.000
	LoreDOFButton.LayoutOrder = 1
	LoreDOFButton.Position = UDim2.new(0.5, 85, 1, -515)
	LoreDOFButton.Selectable = false
	LoreDOFButton.Size = UDim2.new(0.5, 0, 0, 20)
	LoreDOFButton.Font = Enum.Font.SourceSansSemibold
	LoreDOFButton.RichText = true
	LoreDOFButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">DepthOfField+ Turned Off</stroke>'
	LoreDOFButton.TextColor3 = Color3.fromRGB(28, 36, 35)
	LoreDOFButton.TextSize = 16.000
	LoreDOFButton.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
	LoreDOFButton.TextTransparency = 0.100
	LoreDOFButton.TextWrapped = true
	LoreDOFButton.TextXAlignment = Enum.TextXAlignment.Right
	LoreDOFButton.MouseButton1Down:connect(function()
		if not LoreLightingHolder:FindFirstChild("ActivateCD2") then
			local ClickSound = Instance.new("Sound")
			ClickSound.Name = "Click"
			ClickSound.SoundId = "rbxassetid://4729721770"
			ClickSound.RollOffMode = Enum.RollOffMode.Inverse
			ClickSound.RollOffMaxDistance = 10000
			ClickSound.RollOffMinDistance = 10
			ClickSound.PlayOnRemove = false
			ClickSound.Looped = false
			ClickSound.Volume = 0.095
			ClickSound.Parent = LoreDOFButton
			ClickSound:Play()
			game.Debris:AddItem(ClickSound, 0.3)
			if loredofLighting == false then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						loredofLighting = true
						game.Lighting.DepthOfField.Enabled = false
					end)
					LoreDOFButton.Text = '<stroke color="#00A2FF" joins="miter" thickness="1.5" transparency="0.65">DepthOfField+ Turned On</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = LoreLightingHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -78, 1, -515)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound2"
					notfoundcharText.Parent = LoreLightingHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -78, 1, -515)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			elseif loredofLighting == true then
				if game.Workspace:FindFirstChild(LocalPlayer.Name) then
					task.spawn(function()
						loredofLighting = false
						game.Lighting.DepthOfField.Enabled = true
					end)
					LoreDOFButton.Text = '<stroke color="#d80000" joins="miter" thickness="1.5" transparency="0.45">DepthOfField+ Turned Off</stroke>'

					local deb = Instance.new("TextLabel")
					deb.Name = "ActivateCD2"
					deb.Parent = LoreLightingHolder
					deb.Active = false
					deb.AnchorPoint = Vector2.new(0.5, 1)
					deb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					deb.BackgroundTransparency = 1.000
					deb.LayoutOrder = 1
					deb.Position = UDim2.new(0.5, -78, 1, -515)
					deb.Selectable = false
					deb.Size = UDim2.new(0.5, 0, 0, 20)
					deb.Font = Enum.Font.SourceSansSemibold
					deb.RichText = true
					deb.Text = "Wait"
					deb.TextColor3 = Color3.fromRGB(28, 36, 35)
					deb.TextSize = 16.000
					deb.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					deb.TextTransparency = 0.600
					deb.TextWrapped = true
					deb.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(0.5)
						deb:Destroy()
					end)
				else
					local notfoundcharText = Instance.new("TextLabel")
					notfoundcharText.Name = "CharNotFound2"
					notfoundcharText.Parent = LoreLightingHolder
					notfoundcharText.Active = false
					notfoundcharText.AnchorPoint = Vector2.new(0.5, 1)
					notfoundcharText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					notfoundcharText.BackgroundTransparency = 1.000
					notfoundcharText.LayoutOrder = 1
					notfoundcharText.Position = UDim2.new(0.5, -78, 1, -515)
					notfoundcharText.Selectable = false
					notfoundcharText.Size = UDim2.new(0.5, 0, 0, 20)
					notfoundcharText.Font = Enum.Font.SourceSansSemibold
					notfoundcharText.RichText = true
					notfoundcharText.Text = "Character not found"
					notfoundcharText.TextColor3 = Color3.fromRGB(28, 36, 35)
					notfoundcharText.TextSize = 16.000
					notfoundcharText.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
					notfoundcharText.TextTransparency = 0.600
					notfoundcharText.TextWrapped = true
					notfoundcharText.TextXAlignment = Enum.TextXAlignment.Right
					task.spawn(function()
						task.wait(1)
						notfoundcharText:Destroy()
					end)
				end
			end
		end
	end)
end

print("Made past Check:E")

Return_2.Name = "Return"
Return_2.Parent = DescSheet_3
Return_2.Active = false
Return_2.AnchorPoint = Vector2.new(0.5, 1)
Return_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Return_2.BackgroundTransparency = 1.000
Return_2.LayoutOrder = 1
Return_2.Position = UDim2.new(0.5, 0, 1, -10)
Return_2.Selectable = false
Return_2.Size = UDim2.new(0.5, 0, 0, 20)
Return_2.Font = Enum.Font.SourceSansSemibold
Return_2.Text = "Return"
Return_2.TextColor3 = Color3.fromRGB(28, 36, 35)
Return_2.TextSize = 15.000
Return_2.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Return_2.TextTransparency = 0.100
Return_2.TextWrapped = true
Return_2.MouseButton1Down:connect(function()
	local ClickSound = Instance.new("Sound")
	ClickSound.Name = "Click"
	ClickSound.SoundId = "rbxassetid://4729721770"
	ClickSound.RollOffMode = Enum.RollOffMode.Inverse
	ClickSound.RollOffMaxDistance = 10000
	ClickSound.RollOffMinDistance = 10
	ClickSound.PlayOnRemove = false
	ClickSound.Looped = false
	ClickSound.Volume = 0.095
	ClickSound.Parent = Return_2
	ClickSound:Play()
	game.Debris:AddItem(ClickSound, 0.3)
	for i, r in pairs(Headings:GetChildren()) do
		HubFrame.Visible = true
		r.Visible = false
	end
	DescSheet_3.CanvasPosition = Vector2.new(0, 0)
end)

Underline_6.Name = "Underline"
Underline_6.Parent = Return_2
Underline_6.AnchorPoint = Vector2.new(0.5, 0)
Underline_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Underline_6.BackgroundTransparency = 0.900
Underline_6.Position = UDim2.new(0.5, 0, 1, 0)
Underline_6.Size = UDim2.new(1, 0, 0, 1)

UIGradient_6.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_6.Parent = Underline_6

GameShow_2.Name = "Resting"
GameShow_2.Parent = Headings
GameShow_2.AnchorPoint = Vector2.new(0.5, 0.5)
GameShow_2.BackgroundColor3 = Color3.fromRGB(59, 62, 67)
GameShow_2.BackgroundTransparency = 0.100
GameShow_2.BorderSizePixel = 0
GameShow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
GameShow_2.Size = UDim2.new(0, 350, 0, 320)
GameShow_2.Visible = false

Overlay_4.Name = "Overlay"
Overlay_4.Parent = GameShow_2
Overlay_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_4.BackgroundTransparency = 1.000
Overlay_4.BorderSizePixel = 0
Overlay_4.Position = UDim2.new(0, -3, 0, -3)
Overlay_4.Size = UDim2.new(1, 6, 1, 6)
Overlay_4.ZIndex = 2
Overlay_4.Image = "http://www.roblox.com/asset/?id=4280422108"
Overlay_4.ImageColor3 = Color3.fromRGB(183, 197, 211)
Overlay_4.ScaleType = Enum.ScaleType.Slice
Overlay_4.SliceCenter = Rect.new(14, 14, 18, 18)

Background_4.Name = "Background"
Background_4.Parent = GameShow_2
Background_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background_4.BackgroundTransparency = 1.000
Background_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background_4.BorderSizePixel = 0
Background_4.Size = UDim2.new(1, 0, 1, 0)
Background_4.Image = "http://www.roblox.com/asset/?id=4280494932"
Background_4.ImageColor3 = Color3.fromRGB(4, 5, 6)
Background_4.ImageTransparency = 0.870
Background_4.ScaleType = Enum.ScaleType.Tile
Background_4.TileSize = UDim2.new(0, 32, 0, 32)

Title_4.Name = "Title"
Title_4.Parent = GameShow_2
Title_4.AnchorPoint = Vector2.new(0.5, 0)
Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_4.BackgroundTransparency = 1.000
Title_4.Position = UDim2.new(0.5, 0, 0, 0)
Title_4.Size = UDim2.new(0.899999976, 0, 0, 30)
Title_4.Font = Enum.Font.SourceSansBold
Title_4.Text = "Resting"
Title_4.TextColor3 = Color3.fromRGB(250, 255, 222)
Title_4.TextSize = 16.000
Title_4.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Title_4.TextStrokeTransparency = 0.500
Title_4.TextTransparency = 0.100
Title_4.TextWrapped = true

DescSheet_4.Name = "DescSheet"
DescSheet_4.Parent = GameShow_2
DescSheet_4.AnchorPoint = Vector2.new(0.5, 1)
DescSheet_4.BackgroundColor3 = Color3.fromRGB(229, 224, 202)
DescSheet_4.BorderSizePixel = 0
DescSheet_4.Position = UDim2.new(0.5, 0, 1, 0)
DescSheet_4.Size = UDim2.new(1, 0, 1, -30)

Pipe_4.Name = "Pipe"
Pipe_4.Parent = DescSheet_4
Pipe_4.AnchorPoint = Vector2.new(0, 1)
Pipe_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pipe_4.BackgroundTransparency = 1.000
Pipe_4.BorderSizePixel = 0
Pipe_4.Position = UDim2.new(0, 0, 0, 1)
Pipe_4.Size = UDim2.new(1, 0, 0, 5)
Pipe_4.Image = "http://www.roblox.com/asset/?id=5035647017"
Pipe_4.ImageColor3 = Color3.fromRGB(183, 197, 211)

Desc_3.Name = "Desc"
Desc_3.Parent = GameShow_2
Desc_3.AnchorPoint = Vector2.new(0.5, 0)
Desc_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc_3.BackgroundTransparency = 1.000
Desc_3.Position = UDim2.new(0.5, 0, 0, 47)
Desc_3.Size = UDim2.new(0.899999976, 0, 1, -60)
Desc_3.Font = Enum.Font.SourceSans
Desc_3.RichText = true
Desc_3.Text = ""
Desc_3.TextColor3 = Color3.fromRGB(28, 36, 35)
Desc_3.TextScaled = true
Desc_3.TextSize = 14.000
Desc_3.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Desc_3.TextTransparency = 0.100
Desc_3.TextWrapped = true
Desc_3.TextYAlignment = Enum.TextYAlignment.Top

UITextSizeConstraint_5.Parent = Desc_3
UITextSizeConstraint_5.MaxTextSize = 14
UITextSizeConstraint_5.MinTextSize = 12

Return_3.Name = "Return"
Return_3.Parent = GameShow_2
Return_3.Active = false
Return_3.AnchorPoint = Vector2.new(0.5, 1)
Return_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Return_3.BackgroundTransparency = 1.000
Return_3.LayoutOrder = 1
Return_3.Position = UDim2.new(0.5, 0, 1, -10)
Return_3.Selectable = false
Return_3.Size = UDim2.new(0.5, 0, 0, 20)
Return_3.Font = Enum.Font.SourceSansSemibold
Return_3.Text = "Return"
Return_3.TextColor3 = Color3.fromRGB(28, 36, 35)
Return_3.TextSize = 15.000
Return_3.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Return_3.TextTransparency = 0.100
Return_3.TextWrapped = true
Return_3.MouseButton1Down:connect(function()
	local ClickSound = Instance.new("Sound")
	ClickSound.Name = "Click"
	ClickSound.SoundId = "rbxassetid://4729721770"
	ClickSound.RollOffMode = Enum.RollOffMode.Inverse
	ClickSound.RollOffMaxDistance = 10000
	ClickSound.RollOffMinDistance = 10
	ClickSound.PlayOnRemove = false
	ClickSound.Looped = false
	ClickSound.Volume = 0.095
	ClickSound.Parent = Return_3
	ClickSound:Play()
	game.Debris:AddItem(ClickSound, 0.3)
	for i, r in pairs(Headings:GetChildren()) do
		HubFrame.Visible = true
		r.Visible = false
	end
end)

Underline_7.Name = "Underline"
Underline_7.Parent = Return_3
Underline_7.AnchorPoint = Vector2.new(0.5, 0)
Underline_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Underline_7.BackgroundTransparency = 0.900
Underline_7.Position = UDim2.new(0.5, 0, 1, 0)
Underline_7.Size = UDim2.new(1, 0, 0, 1)

UIGradient_7.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_7.Parent = Underline_7

Credits_2.Name = "Credits"
Credits_2.Parent = Headings
Credits_2.AnchorPoint = Vector2.new(0.5, 0.5)
Credits_2.BackgroundColor3 = Color3.fromRGB(59, 62, 67)
Credits_2.BackgroundTransparency = 0.100
Credits_2.BorderSizePixel = 0
Credits_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Credits_2.Size = UDim2.new(0, 350, 0, 320)
Credits_2.Visible = false

Overlay_5.Name = "Overlay"
Overlay_5.Parent = Credits_2
Overlay_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_5.BackgroundTransparency = 1.000
Overlay_5.BorderSizePixel = 0
Overlay_5.Position = UDim2.new(0, -3, 0, -3)
Overlay_5.Size = UDim2.new(1, 6, 1, 6)
Overlay_5.ZIndex = 2
Overlay_5.Image = "http://www.roblox.com/asset/?id=4280422108"
Overlay_5.ImageColor3 = Color3.fromRGB(183, 197, 211)
Overlay_5.ScaleType = Enum.ScaleType.Slice
Overlay_5.SliceCenter = Rect.new(14, 14, 18, 18)

Background_5.Name = "Background"
Background_5.Parent = Credits_2
Background_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background_5.BackgroundTransparency = 1.000
Background_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background_5.BorderSizePixel = 0
Background_5.Size = UDim2.new(1, 0, 1, 0)
Background_5.Image = "http://www.roblox.com/asset/?id=4280494932"
Background_5.ImageColor3 = Color3.fromRGB(4, 5, 6)
Background_5.ImageTransparency = 0.870
Background_5.ScaleType = Enum.ScaleType.Tile
Background_5.TileSize = UDim2.new(0, 32, 0, 32)

Title_5.Name = "Title"
Title_5.Parent = Credits_2
Title_5.AnchorPoint = Vector2.new(0.5, 0)
Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_5.BackgroundTransparency = 1.000
Title_5.Position = UDim2.new(0.5, 0, 0, 0)
Title_5.Size = UDim2.new(0.899999976, 0, 0, 30)
Title_5.Font = Enum.Font.SourceSansBold
Title_5.Text = "Credits & Info"
Title_5.TextColor3 = Color3.fromRGB(250, 255, 222)
Title_5.TextSize = 16.000
Title_5.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Title_5.TextStrokeTransparency = 0.500
Title_5.TextTransparency = 0.100
Title_5.TextWrapped = true

DescSheet_5.Name = "DescSheet"
DescSheet_5.Parent = Credits_2
DescSheet_5.AnchorPoint = Vector2.new(0.5, 1)
DescSheet_5.BackgroundColor3 = Color3.fromRGB(229, 224, 202)
DescSheet_5.BorderSizePixel = 0
DescSheet_5.Position = UDim2.new(0.5, 0, 1, 0)
DescSheet_5.Size = UDim2.new(1, 0, 1, -30)

Pipe_5.Name = "Pipe"
Pipe_5.Parent = DescSheet_5
Pipe_5.AnchorPoint = Vector2.new(0, 1)
Pipe_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pipe_5.BackgroundTransparency = 1.000
Pipe_5.BorderSizePixel = 0
Pipe_5.Position = UDim2.new(0, 0, 0, 1)
Pipe_5.Size = UDim2.new(1, 0, 0, 5)
Pipe_5.Image = "http://www.roblox.com/asset/?id=5035647017"
Pipe_5.ImageColor3 = Color3.fromRGB(183, 197, 211)

Desc_4.Name = "Desc"
Desc_4.Parent = Credits_2
Desc_4.AnchorPoint = Vector2.new(0.5, 0)
Desc_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc_4.BackgroundTransparency = 1.000
Desc_4.Position = UDim2.new(0.5, 0, 0, 47)
Desc_4.Size = UDim2.new(0.899999976, 0, 1, -60)
Desc_4.Font = Enum.Font.SourceSans
Desc_4.RichText = true
Desc_4.Text = '<b><font color="rgb(239, 184, 56)">[Creator - Pot]</font></b><br /><font color="rgb(0, 200, 0)">[Fully Supported Games - Rogue Lineage, Newer Rogue Lineage Copys, Deepwoken, VoxlBlade, Lore Game]</font><br /><font color="rgb(253, 117, 39)">[Semi Supported Games - Shinobi Storm Online Remastered]</font><br />This script is a WIP and is subject to change and recieve more updates. These updates include adding more supported games specifically games I like, choose, and play frequently. Updates also include the general addition of more features for certain scripts.<br /><i>Sincerely, Pot</i>'
Desc_4.TextColor3 = Color3.fromRGB(28, 36, 35)
Desc_4.TextScaled = true
Desc_4.TextSize = 18.000
Desc_4.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Desc_4.TextTransparency = 0.100
Desc_4.TextWrapped = true
Desc_4.TextYAlignment = Enum.TextYAlignment.Top

UITextSizeConstraint_6.Parent = Desc_4
UITextSizeConstraint_6.MaxTextSize = 18
UITextSizeConstraint_6.MinTextSize = 12

Return_4.Name = "Return"
Return_4.Parent = Credits_2
Return_4.Active = false
Return_4.AnchorPoint = Vector2.new(0.5, 1)
Return_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Return_4.BackgroundTransparency = 1.000
Return_4.LayoutOrder = 1
Return_4.Position = UDim2.new(0.5, 0, 1, -10)
Return_4.Selectable = false
Return_4.Size = UDim2.new(0.5, 0, 0, 20)
Return_4.Font = Enum.Font.SourceSansSemibold
Return_4.Text = "Return"
Return_4.TextColor3 = Color3.fromRGB(28, 36, 35)
Return_4.TextSize = 15.000
Return_4.TextStrokeColor3 = Color3.fromRGB(34, 34, 38)
Return_4.TextTransparency = 0.100
Return_4.TextWrapped = true
Return_4.MouseButton1Down:connect(function()
	local ClickSound = Instance.new("Sound")
	ClickSound.Name = "Click"
	ClickSound.SoundId = "rbxassetid://4729721770"
	ClickSound.RollOffMode = Enum.RollOffMode.Inverse
	ClickSound.RollOffMaxDistance = 10000
	ClickSound.RollOffMinDistance = 10
	ClickSound.PlayOnRemove = false
	ClickSound.Looped = false
	ClickSound.Volume = 0.095
	ClickSound.Parent = Return_4
	ClickSound:Play()
	game.Debris:AddItem(ClickSound, 0.3)
	for i, r in pairs(Headings:GetChildren()) do
		HubFrame.Visible = true
		r.Visible = false
	end
end)

Underline_8.Name = "Underline"
Underline_8.Parent = Return_4
Underline_8.AnchorPoint = Vector2.new(0.5, 0)
Underline_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Underline_8.BackgroundTransparency = 0.900
Underline_8.Position = UDim2.new(0.5, 0, 1, 0)
Underline_8.Size = UDim2.new(1, 0, 0, 1)

UIGradient_8.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_8.Parent = Underline_8

function applySpeedBoost(value)
	if realroguespeedBoost == nil then
		return
	end
	realroguespeedBoost.Value = value
end

function applyClimbBoost(value)
	if realrogueclimbBoost == nil then
		return
	end
	realrogueclimbBoost.Value = value
end

function createBoosts(character)
	if not character:FindFirstChild("Boosts") then
		character:WaitForChild("Boosts")
	end
	realroguespeedBoost = Instance.new("NumberValue")
	realroguespeedBoost.Name = "SpeedBoost"
	realroguespeedBoost.Parent = character:FindFirstChild("Boosts")
	realroguespeedBoost.Value = realroguespeedValue

	realrogueclimbBoost = Instance.new("NumberValue")
	realrogueclimbBoost.Name = "ClimbBoost"
	realrogueclimbBoost.Parent = character:FindFirstChild("Boosts")
	realrogueclimbBoost.Value = realrogueclimbValue
end

if gameName == "Deepwoken" then
	game.Workspace.Live.ChildAdded:Connect(function(character)
		if character.Name == LocalPlayer.Name then
			task.wait(1)
			pcall(function()
				loadstring(game:HttpGet(scr1))()
			end)
		end
	end)
end

if gameName == "Rogue Lineage" then
	local b1 = Instance.new("Folder")
	b1.Name = "B1"
	b1.Parent = HubGui
	local b2 = Instance.new("Folder")
	b2.Name = "B2"
	b2.Parent = HubGui
	local b3 = Instance.new("Folder")
	b3.Name = "B3"
	b3.Parent = HubGui
	local artifactTable = {
		"Rift Gem",
		"Fairfrozen",
		"Scroom Key",
		"Howler Friend",
		--"Amulet of the White King",
		--"Lannis's Amulet",
		--"Philosopher's Stone",
		--"Nightstone",
		"Scroll",
	}

	function artifactTypeSummon(name)
		if name == "Rift Gem" then
			local artifact = Instance.new("Part")
			artifact.Size = Vector3.new(0.8, 0.524, 0.8)
			artifact.BrickColor = BrickColor.new("Hot pink")
			artifact.Material = Enum.Material.Glass
			artifact.Transparency = 0.2
			artifact.Reflectance = 0.2
			artifact.Rotation = Vector3.new(180, -83.247, 180)
			artifact.Shape = Enum.PartType.Block
			local specialMesh = Instance.new("SpecialMesh")
			specialMesh.MeshType = Enum.MeshType.FileMesh
			specialMesh.MeshId = "rbxassetid://%202877143560%20"
			specialMesh.Offset = Vector3.new(0, 0, 0)
			specialMesh.Scale = Vector3.new(0.4, 0.4, 0.4)
			specialMesh.VertexColor = Vector3.new(1, 1, 1)
			specialMesh.Parent = artifact
			return artifact
		elseif name == "Fairfrozen" then
			local artifact = Instance.new("Part")
			artifact.Size = Vector3.new(0.8, 0.8, 0.8)
			artifact.BrickColor = BrickColor.new("Pastel Blue")
			artifact.Material = Enum.Material.Neon
			artifact.Transparency = 0
			artifact.Reflectance = 0
			artifact.Rotation = Vector3.new(0, -82.371, 0)
			artifact.Shape = Enum.PartType.Block
			local specialMesh = Instance.new("SpecialMesh")
			specialMesh.MeshType = Enum.MeshType.Sphere
			specialMesh.MeshId = ""
			specialMesh.Offset = Vector3.new(0, 0, 0)
			specialMesh.Scale = Vector3.new(1, 1, 1)
			specialMesh.VertexColor = Vector3.new(1, 1, 1)
			specialMesh.Parent = artifact
			local pointLight = Instance.new("PointLight")
			pointLight.Brightness = 3
			pointLight.Color = Color3.fromRGB(66, 246, 255)
			pointLight.Range = 5
			pointLight.Shadows = false
			pointLight.Enabled = true
			pointLight.Parent = artifact
			return artifact
		elseif name == "Scroom Key" then
			local artifact = Instance.new("Part")
			artifact.Size = Vector3.new(1.768, 0.53, 0.173)
			--artifact.BrickColor = BrickColor.new("Gold")
			artifact.Color = Color3.fromRGB(83, 68, 22)
			artifact.Material = Enum.Material.Granite
			artifact.Transparency = 0
			artifact.Reflectance = 0
			artifact.Rotation = Vector3.new(180, -80.845, 180)
			--artifact.MeshId = "rbxassetid://5194202662"
			local specialMesh = Instance.new("SpecialMesh")
			specialMesh.MeshType = Enum.MeshType.FileMesh
			specialMesh.MeshId = "rbxassetid://5194202662"
			specialMesh.Offset = Vector3.new(0, 0, 0)
			specialMesh.Scale = Vector3.new(0.146, 0.146, 0.146)
			specialMesh.VertexColor = Vector3.new(1, 1, 1)
			specialMesh.Parent = artifact
			local pointLight = Instance.new("PointLight")
			pointLight.Brightness = 0.5
			pointLight.Color = Color3.fromRGB(255, 231, 48)
			pointLight.Range = 8
			pointLight.Shadows = false
			pointLight.Enabled = true
			pointLight.Parent = artifact
			return artifact
		elseif name == "Howler Friend" then
			local artifact = Instance.new("Part")
			artifact.Size = Vector3.new(0.51, 0.25, 1.48)
			artifact.BrickColor = BrickColor.new("Lily white")
			artifact.Material = Enum.Material.Plastic
			artifact.Transparency = 0
			artifact.Reflectance = 0
			artifact.Rotation = Vector3.new(180, -78.734, 180)
			--artifact.MeshId = "rbxassetid://%202520762076%20"
			local specialMesh = Instance.new("SpecialMesh")
			specialMesh.MeshType = Enum.MeshType.FileMesh
			specialMesh.MeshId = "rbxassetid://%202520762076%20"
			specialMesh.Offset = Vector3.new(0, 0, 0)
			specialMesh.Scale = Vector3.new(0.006, 0.006, 0.006)
			specialMesh.VertexColor = Vector3.new(1, 1, 1)
			specialMesh.Parent = artifact
			local pointLight = Instance.new("PointLight")
			pointLight.Brightness = 3
			pointLight.Color = Color3.fromRGB(255, 119, 28)
			pointLight.Range = 5
			pointLight.Shadows = false
			pointLight.Enabled = true
			pointLight.Parent = artifact
			return artifact
		elseif name == "Amulet of the White King" then
			local artifact = Instance.new("Part")
			artifact.Size = Vector3.new(1.30843, 0.209904, 2.05215)
			artifact.BrickColor = BrickColor.new("Institutional white")
			artifact.Material = Enum.Material.Metal
			artifact.Transparency = 0
			artifact.Reflectance = 0
			artifact.Rotation = Vector3.new(0, -84.222, 0)
			--artifact.MeshId = "rbxassetid://5197099782"
			local specialMesh = Instance.new("SpecialMesh")
			specialMesh.MeshType = Enum.MeshType.FileMesh
			specialMesh.MeshId = "rbxassetid://5197099782"
			specialMesh.Offset = Vector3.new(0, 0, 0)
			specialMesh.Scale = Vector3.new(0.01, 0.01, 0.01)
			specialMesh.VertexColor = Vector3.new(1, 1, 1)
			specialMesh.Parent = artifact
			local meshPart = Instance.new("Part")
			meshPart.Size = Vector3.new(0.66647, 0.0450174, 0.698702)
			meshPart.BrickColor = BrickColor.new("Institutional white")
			meshPart.Material = Enum.Material.Neon
			meshPart.Transparency = 0
			meshPart.Reflectance = 0
			meshPart.Rotation = Vector3.new(0, -80.513, 0)
			--meshPart.MeshId = "rbxassetid://5197111525"
			meshPart.Parent = artifact
			local specialMesh2 = Instance.new("SpecialMesh")
			specialMesh2.MeshType = Enum.MeshType.FileMesh
			specialMesh2.MeshId = "rbxassetid://5197111525"
			specialMesh2.Offset = Vector3.new(0, 0, 0)
			specialMesh2.Scale = Vector3.new(0.01, 0.01, 0.01)
			specialMesh2.VertexColor = Vector3.new(1, 1, 1)
			specialMesh2.Parent = meshPart
			local weld = Instance.new("Weld")
			weld.Part0 = artifact
			weld.Part1 = meshPart
			weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			weld.C1 = CFrame.new(0, 0, 1.23000002, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			weld.Parent = artifact
			local pointLight = Instance.new("PointLight")
			pointLight.Brightness = 3
			pointLight.Color = Color3.fromRGB(255, 255, 255)
			pointLight.Range = 5
			pointLight.Shadows = false
			pointLight.Enabled = true
			pointLight.Parent = meshPart
			return artifact
		elseif name == "Lannis's Amulet" then
			local artifact = Instance.new("MeshPart")
			artifact.Size = Vector3.new(1.36541, 0.219008, 2.19874)
			artifact.BrickColor = BrickColor.new("Institutional white")
			artifact.Material = Enum.Material.Metal
			artifact.Transparency = 0
			artifact.Reflectance = 0
			artifact.Rotation = Vector3.new(180, -79.852, 180)
			artifact.MeshId = "rbxassetid://5196963069"
			local meshPart = Instance.new("MeshPart")
			meshPart.Size = Vector3.new(0.126072, 0.139455, 0.587461)
			meshPart.BrickColor = BrickColor.new("Institutional white")
			meshPart.Material = Enum.Material.Neon
			meshPart.Transparency = 0
			meshPart.Reflectance = 0
			meshPart.Rotation = Vector3.new(0, -82.925, 0)
			meshPart.MeshId = "rbxassetid://5197111525"
			meshPart.Parent = artifact
			local weld = Instance.new("Weld")
			weld.Part0 = artifact
			weld.Part1 = meshPart
			weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			weld.C1 = CFrame.new(0, 0, 1.35000002, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			weld.Parent = artifact
			local pointLight = Instance.new("PointLight")
			pointLight.Brightness = 3
			pointLight.Color = Color3.fromRGB(235, 0, 255)
			pointLight.Range = 5
			pointLight.Shadows = false
			pointLight.Enabled = true
			pointLight.Parent = meshPart
			return artifact
		elseif name == "Philosopher's Stone" then
			local artifact = Instance.new("MeshPart")
			artifact.Size = Vector3.new(0.611057, 0.650687, 1.00816)
			artifact.BrickColor = BrickColor.new("Bright red")
			artifact.Material = Enum.Material.Neon
			artifact.Transparency = 0.7
			artifact.Reflectance = 0
			artifact.Rotation = Vector3.new(180, -84.354, 180)
			artifact.MeshId = "rbxassetid://5197200959"
			local meshPart = Instance.new("MeshPart")
			meshPart.Size = Vector3.new(0.566817, 0.5917, 0.934427)
			meshPart.BrickColor = BrickColor.new("Really red")
			meshPart.Material = Enum.Material.Slate
			meshPart.Transparency = 0.5
			meshPart.Reflectance = 0
			meshPart.Rotation = Vector3.new(180, -86.061, 180)
			meshPart.MeshId = "rbxassetid://5197200959"
			meshPart.Parent = artifact
			local meshPart2 = Instance.new("MeshPart")
			meshPart2.Size = Vector3.new(0.522577, 0.54746, 0.860694)
			meshPart2.BrickColor = BrickColor.new("Really red")
			meshPart2.Material = Enum.Material.Glass
			meshPart2.Transparency = 0.5
			meshPart2.Reflectance = 0
			meshPart2.Rotation = Vector3.new(180, -86.061, 180)
			meshPart2.MeshId = "rbxassetid://5197200959"
			meshPart2.Parent = artifact
			local meshPart3 = Instance.new("MeshPart")
			meshPart3.Size = Vector3.new(0.434097, 0.414741, 0.683734)
			meshPart3.BrickColor = BrickColor.new("Really red")
			meshPart3.Material = Enum.Material.Neon
			meshPart3.Transparency = 0
			meshPart3.Reflectance = 0
			meshPart3.Rotation = Vector3.new(180, -86.061, 180)
			meshPart3.MeshId = "rbxassetid://5197200959"
			meshPart3.Parent = artifact
			local weld = Instance.new("Weld")
			weld.Part0 = artifact
			weld.Part1 = meshPart
			weld.C0 = CFrame.new(0, 0, 0, 0.999556065, 5.83680304e-08, 0.029793568, -5.53229071e-08, 1, -1.03031368e-07, -0.029793568, 1.01337363e-07, 0.999556065)
			weld.C1 = CFrame.new(0, 0, 0, 0.99999994, -2.51487564e-09, 5.19491732e-06, 2.51488785e-09, 1, -1.33437794e-09, -5.19491732e-06, 1.33439926e-09, 0.99999994)
			weld.Parent = artifact
			local weld2 = Instance.new("Weld")
			weld2.Part0 = artifact
			weld2.Part1 = meshPart2
			weld2.C0 = CFrame.new(0, 0, 0, 0.999556065, 5.83680304e-08, 0.029793568, -5.53229071e-08, 1, -1.03031368e-07, -0.029793568, 1.01337363e-07, 0.999556065)
			weld2.C1 = CFrame.new(0, 0, 0, 0.99999994, -4.81712803e-08, 5.19491732e-06, 4.81708824e-08, 1, 7.76950344e-08, -5.19491732e-06, -7.7694807e-08, 0.99999994)
			weld2.Parent = artifact
			local weld3 = Instance.new("Weld")
			weld3.Part0 = artifact
			weld3.Part1 = meshPart3
			weld3.C0 = CFrame.new(0, 0, 0, 0.999556065, 5.83680304e-08, 0.029793568, -5.53229071e-08, 1, -1.03031368e-07, -0.029793568, 1.01337363e-07, 0.999556065)
			weld3.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			weld3.Parent = artifact
			local pointLight = Instance.new("PointLight")
			pointLight.Brightness = 3
			pointLight.Color = Color3.fromRGB(255, 0, 12)
			pointLight.Range = 5
			pointLight.Shadows = true
			pointLight.Enabled = true
			pointLight.Parent = artifact
			return artifact
		elseif name == "Nightstone" then
			local artifact = Instance.new("MeshPart")
			artifact.Size = Vector3.new(0.53755, 0.607373, 0.674289)
			artifact.BrickColor = BrickColor.new("Black")
			artifact.Material = Enum.Material.Neon
			artifact.Transparency = 0.15
			artifact.Reflectance = 0
			artifact.Rotation = Vector3.new(180, -75.882, 180)
			artifact.MeshId = "rbxassetid://5197185024"
			local meshPart = Instance.new("MeshPart")
			meshPart.Size = Vector3.new(0.477195, 0.501753, 0.568669)
			meshPart.BrickColor = BrickColor.new("Black")
			meshPart.Material = Enum.Material.Neon
			meshPart.Transparency = 0
			meshPart.Reflectance = 0
			meshPart.Rotation = Vector3.new(180, -75.882, 180)
			meshPart.MeshId = "rbxassetid://51971850249"
			meshPart.Parent = artifact
			local weld = Instance.new("Weld")
			weld.Part0 = artifact
			weld.Part1 = meshPart
			weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			weld.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			weld.Parent = artifact
			local pointLight = Instance.new("PointLight")
			pointLight.Brightness = 3
			pointLight.Color = Color3.fromRGB(0, 0, 0)
			pointLight.Range = 5
			pointLight.Shadows = false
			pointLight.Enabled = true
			pointLight.Parent = artifact
			return artifact
		elseif name == "Scroll" then
			local artifact = Instance.new("Part")
			artifact.Size = Vector3.new(1.66, 0.48, 0.34)
			artifact.BrickColor = BrickColor.new("Medium stone grey")
			artifact.Material = Enum.Material.Plastic
			artifact.Transparency = 0
			artifact.Reflectance = 0
			artifact.Rotation = Vector3.new(180, -75.882, 180)
			--artifact.MeshId = "rbxassetid://5197185024"
			local specialMesh = Instance.new("SpecialMesh")
			specialMesh.MeshType = Enum.MeshType.FileMesh
			specialMesh.MeshId = "rbxassetid://60791940%20"
			specialMesh.Offset = Vector3.new(0, 0, 0)
			specialMesh.Scale = Vector3.new(0.4, 0.4, 0.4)
			specialMesh.TextureId = "http://www.roblox.com/asset/?id=60791957"
			specialMesh.VertexColor = Vector3.new(1, 1, 1)
			specialMesh.Parent = artifact
			return artifact
		end
	end

	function spawnArtifacts(char)
		local numArtis = 50
		local artifacts = {}
		local scrollTypes = {
			"Snarvindur",
			"Hoppa",
			"Percutiens",
			"Mori",
			"Pondus",
			"Snarvindur",
			"Terra Maledicta",
		}

		for i = 1, numArtis do
			local artifactChoice = artifactTable[math.random(1, #artifactTable)]
			local artifact = artifactTypeSummon(artifactChoice)
			artifact.Anchored = true
			artifact.CanCollide = false
			artifact.Position = char.HumanoidRootPart.Position + Vector3.new(math.random(-14, 14), math.random(2, 3), math.random(-14, 14))
			artifact.Parent = workspace
			if artifactChoice == "Scroll" then
				artifactChoice = "Scroll of "..scrollTypes[math.random(1, #scrollTypes)]
			end
			artifact:SetAttribute("AName", artifactChoice)
			table.insert(artifacts, artifact)
		end

		local playPart = Instance.new("Part")
		playPart.Anchored = true
		playPart.CanCollide = false
		playPart.CanTouch = false
		playPart.Size = Vector3.new(1, 1, 1)
		playPart.Transparency = 1
		playPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(0, 2.5, 0)
		playPart.Parent = game.Workspace
		game.Debris:AddItem(playPart, 2.75)

		local summonSound = Instance.new("Sound")
		summonSound.SoundId = "rbxassetid://2048663224"
		summonSound.RollOffMode = Enum.RollOffMode.InverseTapered
		summonSound.RollOffMaxDistance = 300
		summonSound.Volume = 0.4
		summonSound.TimePosition = 0.1
		summonSound.Parent = playPart

		summonSound:Play()
		floatAndRotateArtis(artifacts)
	end

	function floatAndRotateArtis(artifacts)
		for _, artifact in ipairs(artifacts) do
			local goal = {}
			goal.Position = artifact.Position + Vector3.new(0, 2.5, 0)
			goal.Orientation = Vector3.new(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360))

			local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false)
			local tween = TweenService:Create(artifact, tweenInfo, goal)

			tween:Play()

			task.delay(1.8, function()
				tween:Cancel()
				artifact.Anchored = false
				artifact.CanCollide = true
				game.Debris:AddItem(artifact, 300)
				local clickDetector = Instance.new("ClickDetector")
				clickDetector.MaxActivationDistance = 10
				clickDetector.Parent = artifact
				clickDetector.MouseClick:Once(function(Player)
					local artiTool = Instance.new("Tool")
					artiTool.Name = tostring(artifact:GetAttribute("AName"))
					artiTool.RequiresHandle = true
					artiTool.CanBeDropped = false
					artiTool.Parent = Player.Backpack
					if string.find(artifact:GetAttribute("AName"), "Scroll") then
						artifact:SetAttribute("AName", "Scroll")
					end

					local artifactModel = artifactTypeSummon(artifact:GetAttribute("AName"))
					artifactModel.Name = "Handle"
					artifactModel.Anchored = false
					artifactModel.CanCollide = false
					artifactModel.Parent = artiTool
					artifact:Destroy()
				end)
			end)
		end
	end
	function findPlayer(playerName)
		local function getPlayerFromName(playerName)
			local Players = game:GetService("Players")
			for _, v in next, Players:GetPlayers() do
				if (v.Name:lower():sub(1, #playerName) == playerName:lower()) then
					return v
				end
			end
		end
		
		local playerToReturn = getPlayerFromName(playerName)
		return playerToReturn
	end
	function spectatePlayer(playerName)
		playerName = tostring(playerName)
		local player = findPlayer(playerName)
		local playerHumanoid = player and player.Character and player.Character:FindFirstChildOfClass("Humanoid")

		if playerHumanoid then
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			workspace.CurrentCamera.CameraSubject = playerHumanoid
		end
	end
	local trinketsData = {}
	do --// Set Trinkets
		Trinkets = {
			{
				["MeshId"] = "5204003946";
				["Name"] = "Goblet";
				["Color"] = Color3.fromRGB(216, 216, 216);
			};
			{
				["MeshId"] = "5196776695";
				["Name"] = "Ring";
				["Color"] = Color3.fromRGB(216, 216, 216);
			};
			{
				["MeshId"] = "5196782997";
				["Name"] = "Old Ring";
				["Color"] = Color3.fromRGB(216, 216, 216);
			};
			{
				["Name"] = "Emerald";
				["Color"] = Color3.fromRGB(0, 167, 0);
			};
			{
				["Name"] = "Ruby";
				["Color"] = Color3.fromRGB(255, 0, 0);
			};
			{
				["Name"] = "Sapphire";
				["Color"] = Color3.fromRGB(3, 100, 220);
			};
			{
				["Name"] = "Diamond";
				["Color"] = Color3.fromRGB(190, 212, 239);
			};
			{
				["Name"] = "Rift Gem";
				["Rare"] = true;
				["Color"] = Color3.fromRGB(230, 29, 248);
			};
			{
				["Name"] = "Fairfrozen";
				["Rare"] = true;
				["Color"] = Color3.fromRGB(112, 243, 255);
			};
			{
				["MeshId"] = "5204453430";
				["Name"] = "Scroll";
				["Color"] = Color3.fromRGB(255, 189, 34);
			};
			{
				["Name"] = "Old Amulet";
				["MeshId"] = "5196577540";
				["Color"] = Color3.fromRGB(216, 216, 216);
			};
			{
				["Name"] = "Amulet";
				["MeshId"] = "5196551436";
				["Color"] = Color3.fromRGB(216, 216, 216);
			};
			{
				["Name"] = "Idol Of The Forgotten";
				["ParticleEmitter"] = true;
				["Color"] = Color3.fromRGB(216, 216, 216);
			};
			{
				["Name"] = "Opal";
				["VertexColor"] = Vector3.new(1, 1, 1);
				["MeshType"] = "Sphere";
				["Color"] = Color3.fromRGB(255, 255, 255);
			},
			{
				["Name"] = "Candy";
				["MeshId"] = '4103271893';
				["Color"] = Color3.fromRGB(214, 107, 0);
			},
			{
				["Name"] = "Idol Of War";
				["Color"] = Color3.fromRGB(194, 87, 87);
			},
			{
				["Texture"] = "20443483";
				["Name"] = "Ya'alda";
				--["Rare"] = true;
				["Color"] = Color3.fromRGB(160, 0, 240);
			};
			{
				["Texture"] = "1536547385";
				["Name"] = "Phoenix Down";
				["Rare"] = true;
				["Color"] = Color3.fromRGB(232, 162, 0);
			};
			{
				["Texture"] = "20443483";
				["ParticleEmitter"] = true;
				["PointLight"] = true;
				["Name"] = "Ice Essence";
				["Rare"] = true;
				["Color"] = Color3.fromRGB(74, 221, 221);
			};
			{
				["Name"] = "Amulet of the White King";
				["Rare"] = true;
				["MeshId"] = "5197099782";
				["Color"] = Color3.fromRGB(222, 255, 247);
			};
			{
				["Name"] = "Lannis's Amulet";
				["Rare"] = true;
				["MeshId"] = "5196963069";
				["Color"] = Color3.fromRGB(171, 171, 255);
			};
			{
				["Name"] = "Night Stone";
				["Rare"] = true;
				["MeshId"] = "5197185024";
				["Color"] = Color3.fromRGB(186, 177, 186);
			};
			{
				["Name"] = "Philosopher's Stone";
				["Rare"] = true;
				["MeshId"] = "5197200959";
				["Color"] = Color3.fromRGB(214, 42, 30);
			};
			{
				["Name"] = "Spider Cloak";
				["Rare"] = true;
				["Color"] = Color3.fromRGB(186, 48, 255);
			};
			{
				["Name"] = "Howler Friend";
				["Rare"] = true;
				["MeshId"] = "2520762076";
				["Color"] = Color3.fromRGB(255, 255, 255);
			};
			{
				["Name"] = "Scroom Key";
				["Rare"] = true;
				["MeshId"] = "5194202662";
				["Color"] = Color3.fromRGB(255, 251, 137);
			},
			{
				["Name"] = 'Mysterious Artifact',
				["Rare"] = true;
				["Color"] = Color3.fromRGB(119, 238, 0);
			}
		};

		for _, trinket in next, Trinkets do
			trinketsData[trinket.Name] = trinket
		end
	end
	local function getId(id)
		return id:gsub('%%20', ''):gsub('%D', '')
	end
	local function findInTable(tab, index, value)
		for i, v in next, tab do
			if v[index] == value then
				return v
			end
		end
	end
	function getTrinketType(v)
		if (v.Name == "Part" or v.Name == "Handle" or v.Name == "MeshPart") and (v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart")) then
			local Mesh = (v:IsA("MeshPart") and v) or v:FindFirstChildOfClass("SpecialMesh")
			local ParticleEmitter = v:FindFirstChildOfClass("ParticleEmitter")
			local Attachment = v:FindFirstChildOfClass("Attachment")
			local PointLight = v:FindFirstChildOfClass("PointLight")
			local Material = v.Material
			local className = v.ClassName
			local Size = v.Size
			local SizeMagnitude = Size.Magnitude
			local Color = v.BrickColor.Name

			if (className == "MeshPart" and Material == Enum.Material.Metal) then
				if (v.MeshId == "rbxassetid://5197099782") then
					return trinketsData["Amulet of the White King"]
				elseif (v.MeshId == "rbxassetid://5196963069") then
					return trinketsData["Lannis's Amulet"]
				end
			end

			if(className == "Part" and v.Shape == Enum.PartType.Block and Material == Enum.Material.Neon and Color == "Pastel Blue" and Mesh.MeshId == "") then
				return trinketsData["Fairfrozen"]
			end

			if (Material == Enum.Material.Neon and className == "MeshPart") then
				if (Color == "Bright red" and v.MeshId == "rbxassetid://5197200959" and v.Transparency == 0.7) then
					return trinketsData["Philosopher's Stone"]
				elseif (Color == "Black" and v.MeshId == "rbxassetid://5197185024" and v.Transparency == 0.15) then
					return trinketsData["Night Stone"]
				end
			end

			if (Material == Enum.Material.Granite and v.MeshId == "rbxassetid://5194202662" and v.Transparency == 0 and PointLight and PointLight.Brightness == 0.5) then
				return trinketsData["Scroom Key"]
			end

			if(className == "MeshPart" and getId(v.MeshId) == "2520762076") then
				return trinketsData["Howler Friend"]
			end

			if(Mesh and getId(Mesh.MeshId) == "2877143560") then
				if(string.find(Color, "green")) then
					return trinketsData["Emerald"]
				elseif(Color == "Really red") then
					return trinketsData["Ruby"]
				elseif(Color == "Lapis") then
					return trinketsData["Sapphire"]
				elseif(string.find(Color, "blue")) then
					return trinketsData["Diamond"]
				else
					return trinketsData["Rift Gem"]
				end
			end
			
			if (className == "UnionOperation" and Color == "Fossil" and Material == Enum.Material.Mud) then
				return trinketsData["Idol Of War"]
			end

			if(ParticleEmitter and ParticleEmitter.Texture:find("20443483") and SizeMagnitude > 0.6 and SizeMagnitude < 0.8 and v.Transparency == 1 and Material == Enum.Material.Neon) then
				if(className == "Part") then
					return trinketsData["Ice Essence"]
				end
				return trinketsData["Spider Cloak"]
			end

			if(ParticleEmitter) then
				local TextureId = ParticleEmitter.Texture:gsub("%D", "")
				local Trinket = findInTable(Trinkets, "Texture", TextureId)

				if(Trinket) then
					return Trinket
				end
			end

			if(Mesh and Mesh.MeshId ~= "") then
				local MeshId = Mesh.MeshId:gsub("%D", "")
				local Trinket = findInTable(Trinkets, "MeshId", MeshId)

				if(Trinket) then
					return Trinket
				end
			end

			if(ParticleEmitter and Material == Enum.Material.Slate) then
				return trinketsData["Idol Of The Forgotten"]
			end

			if(Attachment) then
				if(Attachment:FindFirstChildOfClass("ParticleEmitter")) then
					local ParticleEmitter2 = Attachment:FindFirstChildOfClass("ParticleEmitter")

					if (ParticleEmitter2) then
						local TextureId = getId(ParticleEmitter2.Texture)
						if(TextureId == '1536547385') then
							if(ParticleEmitter2.Size.Keypoints[1].Value ~= 0) then
								return trinketsData['Mysterious Artifact']
							end

							return trinketsData['Phoenix Down']
						end
						local Trinket = findInTable(Trinkets, "Texture", TextureId);
						return Trinket
					end
				end
			end

			if(Mesh and Mesh:IsA('SpecialMesh') and Mesh.MeshType.Name == 'Sphere' and Mesh.VertexColor == Vector3.new(1, 1, 1)) then
				return trinketsData.Opal
			end
		end
	end
	local objectsRaycastFilter = RaycastParams.new();
	objectsRaycastFilter.FilterType = Enum.RaycastFilterType.Whitelist
	objectsRaycastFilter.FilterDescendantsInstances = {workspace.AreaMarkers}
	local function onChildAdded(object)
		task.wait(1)
		if not object:IsA("BasePart") then
			return
		end
		if object:GetAttribute("AName") then
			return
		end

		local trinketType = getTrinketType(object)
		if not trinketType or not object:FindFirstChildWhichIsA("ClickDetector", true) then
			return
		end
		
		if CollectionService:HasTag(object, "HasB1") then
			return
		end

		local location = workspace:Raycast(object.Position, Vector3.new(0, 5000, 0), objectsRaycastFilter)
		location = location and location.Instance.Name or "???"
		
		local trinketEspHolder = Instance.new("BillboardGui")
		trinketEspHolder.Parent = b1
		trinketEspHolder.Active = false
		trinketEspHolder.Adornee = object
		trinketEspHolder.AlwaysOnTop = true
		if roguetrinketEsp then
			trinketEspHolder.Enabled = true
		elseif not roguetrinketEsp then
			trinketEspHolder.Enabled = false
		end
		trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
		trinketEspHolder.ResetOnSpawn = false
		trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
		trinketEspHolder.StudsOffset = Vector3.new(0, -1, 0)
		trinketEspHolder.ClipsDescendants = true

		local trinketEspLabel = Instance.new("TextLabel")
		trinketEspLabel.Parent = trinketEspHolder
		trinketEspLabel.Active = false
		trinketEspLabel.BackgroundTransparency = 1.000
		trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
		trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
		trinketEspLabel.ZIndex = 5
		trinketEspLabel.FontFace = Font.new("rbxasset://fonts/families/Balthazar.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
		trinketEspLabel.RichText = true
		trinketEspLabel.Text = trinketType.Name..'<br /> <font size="12">'..location..'</font>'
		trinketEspLabel.TextColor3 = trinketType.Color
		trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
		trinketEspLabel.TextStrokeTransparency = 0
		trinketEspLabel.TextTransparency = 0
		trinketEspLabel.TextSize = 13.000
		trinketEspLabel.TextWrapped = true
		
		CollectionService:AddTag(object, "HasB1")
		if trinketType.Rare then
			local artifactFound = Instance.new("Sound")
			artifactFound.SoundId = "rbxassetid://3398620867"
			artifactFound.Parent = trinketEspHolder
			artifactFound:Play()
			game.Debris:AddItem(artifactFound, 2)
		end
		
		local checkParentSignal
		checkParentSignal = object:GetPropertyChangedSignal("Parent"):Connect(function()
			if (object.Parent) then
				return
			end
			trinketEspHolder:Destroy()
			checkParentSignal:Disconnect()
		end)
	end
	function getRoguePlayerStats(Player)
		if isGaia then
			return Player:GetAttribute('FirstName') or 'Unknown', Player:GetAttribute('LastName') or 'Unknown'
		else
			local leaderstats = Player:FindFirstChild('leaderstats')
			local firstName = leaderstats and leaderstats:FindFirstChild('FirstName')
			local lastName = leaderstats and leaderstats:FindFirstChild('LastName')

			if (not leaderstats or not firstName or not lastName) then
				return 'Unknown', 'Unknown'
			end

			return firstName.Value, lastName.Value
		end
	end
	function rogueEntityEspHandle(character, espType, ismob, chosenColor)
		local entityEspHolder
		local entityEspLabel
		local Player = game:GetService("Players"):GetPlayerFromCharacter(character)
		local firstName, lastName = getRoguePlayerStats(Player)
		local nameHolder = nil
		--local gameName = ""
		--local gameNameSignal = nil
		for _, v in pairs(character:GetChildren()) do
			if string.find(v.Name, firstName) then
				nameHolder = v
				--gameName = v.Name
				break
			end
		end
		nameHolder:GetPropertyChangedSignal("Name"):Connect(function()
			--gameName = nameHolder.Name
			if nameHolder.Name ~= "" then
				entityEspLabel.Text = nameHolder.Name..'['..Player.Name..']<br />['..math.round(character.Humanoid.Health)..'/'..math.round(character.Humanoid.MaxHealth)..']'
			end
		end)
		if not CollectionService:HasTag(character.HumanoidRootPart, "HasB2") then
			CollectionService:AddTag(character.HumanoidRootPart, "HasB2")
			
			entityEspHolder = Instance.new("BillboardGui")
			entityEspHolder.Parent = b2
			entityEspHolder.Active = false
			entityEspHolder.Adornee = character.HumanoidRootPart
			entityEspHolder.AlwaysOnTop = true
			if espType == true then
				entityEspHolder.Enabled = true
			elseif espType == false then
				entityEspHolder.Enabled = false
			end
			entityEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
			entityEspHolder.ResetOnSpawn = false
			entityEspHolder.Size = UDim2.new(10, 0, 1, 0)
			entityEspHolder.StudsOffset = Vector3.new(0, -3.5, 0)
			entityEspHolder.ClipsDescendants = false

			entityEspLabel = Instance.new("TextLabel")
			entityEspLabel.Parent = entityEspHolder
			entityEspLabel.Active = false
			entityEspLabel.BackgroundTransparency = 1.000
			entityEspLabel.Position = UDim2.new(0, 0, 0, 0)
			entityEspLabel.Size = UDim2.new(1, 0, 1, 0)
			entityEspLabel.ZIndex = 6
			entityEspLabel.FontFace = Font.new("rbxasset://fonts/families/Balthazar.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
			entityEspLabel.RichText = true
			entityEspLabel.LineHeight = 1.1
			entityEspLabel.Text = nameHolder.Name..'['..Player.Name..']<br />['..math.round(character.Humanoid.Health)..'/'..math.round(character.Humanoid.MaxHealth)..']'
			entityEspLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			entityEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			entityEspLabel.TextStrokeTransparency = 0
			entityEspLabel.TextTransparency = 0
			entityEspLabel.TextSize = 14.000
			entityEspLabel.TextScaled = false
			entityEspLabel.TextWrapped = false
			Player.CharacterRemoving:Once(function()
				entityEspHolder:Destroy()
			end)
		end
		if not CollectionService:HasTag(character.HumanoidRootPart, "HasB3") --[[and ismob]] then
			CollectionService:AddTag(character.HumanoidRootPart, "HasB3")
			local healthBarHolder = Instance.new("BillboardGui")
			healthBarHolder.Parent = b3
			healthBarHolder.Active = false
			healthBarHolder.Adornee = character.HumanoidRootPart
			healthBarHolder.AlwaysOnTop = true
			if espType == true then
				healthBarHolder.Enabled = true
			elseif espType == false then
				healthBarHolder.Enabled = false
			end
			healthBarHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
			healthBarHolder.ResetOnSpawn = false
			healthBarHolder.Size = UDim2.new(0.4, 0, 5, 0)
			healthBarHolder.SizeOffset = Vector2.new(-7, 0)
			healthBarHolder.ClipsDescendants = false

			local healthBarFrame = Instance.new("Frame")
			healthBarFrame.Parent = healthBarHolder
			healthBarFrame.Active = false
			healthBarFrame.BackgroundColor3 = Color3.fromRGB(70, 23, 0)
			healthBarFrame.BackgroundTransparency = 0
			healthBarFrame.BorderSizePixel = 1.000
			healthBarFrame.Position = UDim2.new(0, 0, 0, 0)
			healthBarFrame.Rotation = 180
			healthBarFrame.Size = UDim2.new(1, 0, 1, 0)
			healthBarFrame.ZIndex = 5

			local healthMeterFrame = Instance.new("Frame")
			healthMeterFrame.Parent = healthBarFrame
			healthMeterFrame.Active = false
			healthMeterFrame.BackgroundColor3 = chosenColor
			healthMeterFrame.BackgroundTransparency = 0
			healthMeterFrame.BorderSizePixel = 0
			healthMeterFrame.Position = UDim2.new(0, 0, 0, 0)
			healthMeterFrame.Rotation = 0
			Player.CharacterRemoving:Once(function()
				healthBarHolder:Destroy()
			end)
			local CurrentHealth = math.clamp(character.Humanoid.Health / character.Humanoid.MaxHealth, 0, 1)
			healthMeterFrame.Size = UDim2.new(1, 0, CurrentHealth, 0)
			local NewHealth = math.clamp(character.Humanoid.Health / character.Humanoid.MaxHealth, 0, 1)
			local function HealthApply()
				NewHealth = math.clamp(character.Humanoid.Health / character.Humanoid.MaxHealth, 0, 1)
				game.TweenService:Create(healthMeterFrame, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
					Size = UDim2.new(1, 0, NewHealth, 0)
				}):Play()
				entityEspLabel.Text = nameHolder.Name..'['..Player.Name..']<br />['..math.round(character.Humanoid.Health)..'/'..math.round(character.Humanoid.MaxHealth)..']'
			end
			character.Humanoid.HealthChanged:connect(HealthApply)
			character.Humanoid:GetPropertyChangedSignal("MaxHealth"):connect(HealthApply)
			HealthApply()
			healthMeterFrame.ZIndex = 5
		end
	end
	task.spawn(function()
		while task.wait(1) do
			local leaderboardGui = LocalPlayer:FindFirstChild("PlayerGui") and LocalPlayer.PlayerGui:FindFirstChild("LeaderboardGui")
			
			if leaderboardGui and not leaderboardGui.Enabled then
				leaderboardGui.Enabled = true
			end
			if rogueleaderboardEsp == false then
				if leaderboardGui and leaderboardGui.Enabled and not game.Workspace.Live:FindFirstChild(LocalPlayer.Name) then
					leaderboardGui.Enabled = false
				end
			end
		end
	end)

	task.spawn(function()
		if not LocalPlayer.Character and not LocalPlayer.PlayerGui:FindFirstChild("LeaderboardGui") then
			local newLeaderboardGui = game.StarterGui:FindFirstChild("LeaderboardGui"):Clone()
			newLeaderboardGui.Parent = LocalPlayer.PlayerGui

			LocalPlayer.CharacterAdded:Wait()
			newLeaderboardGui:Destroy()
		end
	end)
	
	if game.Workspace.Live:FindFirstChild(LocalPlayer.Name) then
		createBoosts(LocalPlayer.Character)
		if not LocalPlayer.Backpack:FindFirstChild("Artifactus") then
			local artifactTool = Instance.new("Tool")
			artifactTool.Name = "Artifactus"
			artifactTool.RequiresHandle = false
			artifactTool.CanBeDropped = false
			artifactTool.Parent = LocalPlayer.Backpack
		end
	end
	game.Workspace.Live.ChildAdded:Connect(function(character)
		if character.Name ~= LocalPlayer.Name then
			if character:FindFirstChild("Head") then
				if not character.Head:FindFirstChild("ToolviewHolder") then
					local toolEspHolder = Instance.new("BillboardGui")
					toolEspHolder.Name = "ToolviewHolder"
					toolEspHolder.Parent = character.Head
					toolEspHolder.Active = false
					toolEspHolder.Adornee = character.Head
					toolEspHolder.AlwaysOnTop = true
					if roguetoolEsp == true then
						toolEspHolder.Enabled = true
					elseif roguetoolEsp == false then
						toolEspHolder.Enabled = false
					end
					toolEspHolder.MaxDistance = 125
					toolEspHolder.ResetOnSpawn = false
					toolEspHolder.Size = UDim2.new(0, 200, 0, 50)
					toolEspHolder.StudsOffset = Vector3.new(0, 3, 0)
					toolEspHolder.ClipsDescendants = true

					local toolEspLabel = Instance.new("TextLabel")
					toolEspLabel.Name = "ToolView"
					toolEspLabel.Parent = toolEspHolder
					toolEspLabel.Active = false
					toolEspLabel.BackgroundTransparency = 1.000
					toolEspLabel.Position = UDim2.new(0, 0, 0, 0)
					toolEspLabel.Size = UDim2.new(0, 200, 0, 50)
					toolEspLabel.ZIndex = 5
					toolEspLabel.Font = Enum.Font.SpecialElite
					toolEspLabel.RichText = true
					if character:FindFirstChildWhichIsA("Tool") then
						toolEspLabel.Text = character:FindFirstChildWhichIsA("Tool").Name
					elseif not character:FindFirstChildWhichIsA("Tool") then
						toolEspLabel.Text = ""
					end
					toolEspLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					toolEspLabel.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
					toolEspLabel.TextStrokeTransparency = 0
					toolEspLabel.TextTransparency = 0
					toolEspLabel.TextSize = 21.000
					toolEspLabel.TextWrapped = true
					character.ChildAdded:Connect(function(tool)
						if tool.ClassName == "Tool" then
							if character:FindFirstChild("Head") then
								if character.Head:FindFirstChild("ToolviewHolder") then
									character.Head.ToolviewHolder.ToolView.Text = tool.Name
								end
							end
						end
					end)
					character.ChildRemoved:Connect(function(tool)
						if tool.ClassName == "Tool" then
							if character:FindFirstChild("Head") then
								if character.Head:FindFirstChild("ToolviewHolder") then
									character.Head.ToolviewHolder.ToolView.Text = ""
								end
							end
						end
					end)
				end
			end
			rogueEntityEspHandle(character, rogueplayerEsp, nil, Color3.fromRGB(206, 61, 48))
			local Player = game:GetService("Players"):GetPlayerFromCharacter(character)
			if (Player) and (Player.Backpack:FindFirstChild("Observe") or character:FindFirstChild("Observe")) then
				if not CollectionService:HasTag(Player, "HasObs") then
					CollectionService:AddTag(Player, "HasObs")
					local firstName, lastName = getRoguePlayerStats(Player)
					local nameHolder = nil
					for _, v in pairs(character:GetChildren()) do
						if string.find(v.Name, firstName) then
							nameHolder = v
							break
						end
					end
					game:GetService("StarterGui"):SetCore("SendNotification",{
						Title = "Illusionist Found",
						Text = nameHolder.Name.."["..Player.Name.."] has Observe.",
						Duration = 25,
						Button1 = "Panic",
						Button2 = "Dismiss",
					})
				end
			end
		elseif character.Name == LocalPlayer.Name then
			createBoosts(character)
			if not LocalPlayer.Backpack:FindFirstChild("Artifactus") then
				local artifactTool = Instance.new("Tool")
				artifactTool.Name = "Artifactus"
				artifactTool.RequiresHandle = false
				artifactTool.CanBeDropped = false
				artifactTool.Parent = LocalPlayer.Backpack
			end
		end
	end)
	game.Workspace.Live.ChildRemoved:Connect(function(character)
		if character.Name == LocalPlayer.Name then
			realroguespeedBoost = nil
			realrogueclimbBoost = nil
		end
	end)
	task.spawn(function()
		for _, child in pairs(game.Workspace:GetChildren()) do
			onChildAdded(child)
		end
	end)
	task.spawn(function()
		for _, entity in pairs(game.Workspace.Live:GetChildren()) do
			local Player = game:GetService("Players"):GetPlayerFromCharacter(entity)
			if Player and Player ~= LocalPlayer then
				rogueEntityEspHandle(entity, rogueplayerEsp, nil, Color3.fromRGB(206, 61, 48))
				if (Player) and (Player.Backpack:FindFirstChild("Observe") or entity:FindFirstChild("Observe")) then
					if not CollectionService:HasTag(Player, "HasObs") then
						CollectionService:AddTag(Player, "HasObs")
						local firstName, lastName = getRoguePlayerStats(Player)
						local nameHolder = nil
						for _, v in pairs(entity:GetChildren()) do
							if string.find(v.Name, firstName) then
								nameHolder = v
								break
							end
						end
						game:GetService("StarterGui"):SetCore("SendNotification",{
							Title = "Illusionist Found",
							Text = nameHolder.Name.."["..Player.Name.."] has Observe.",
							Duration = 25,
							Button1 = "Panic",
							Button2 = "Dismiss",
						})
					end
				end
			end
		end
	end)
	game.Workspace.ChildAdded:Connect(onChildAdded)
end

if gameName == "Rogue Lineage Copy" then
	if game.Workspace:FindFirstChild("Trinkets") then
		game.Workspace.Trinkets.ChildAdded:Connect(function(trinket)
			if not trinket:FindFirstChild("TrinketviewHolder") then
				task.wait(0.35)
				if trinket.Parent == game.Workspace.Trinkets then
					if trinket.ClassName == "MeshPart" then
						if trinket.MeshId == "rbxassetid://5196551436" then
							local trinketEspHolder = Instance.new("BillboardGui")
							trinketEspHolder.Name = "TrinketviewHolder"
							trinketEspHolder.Parent = trinket
							trinketEspHolder.Active = false
							trinketEspHolder.Adornee = trinket
							trinketEspHolder.AlwaysOnTop = true
							if roguetrinketEsp == true then
								trinketEspHolder.Enabled = true
							elseif roguetrinketEsp == false then
								trinketEspHolder.Enabled = false
							end
							trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							trinketEspHolder.ResetOnSpawn = false
							trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
							trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							trinketEspHolder.ClipsDescendants = true

							local trinketEspLabel = Instance.new("TextLabel")
							trinketEspLabel.Name = "TrinketView"
							trinketEspLabel.Parent = trinketEspHolder
							trinketEspLabel.Active = false
							trinketEspLabel.BackgroundTransparency = 1.000
							trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
							trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
							trinketEspLabel.ZIndex = 5
							trinketEspLabel.Font = Enum.Font.SourceSansBold
							trinketEspLabel.RichText = true
							trinketEspLabel.Text = "Amulet"
							trinketEspLabel.TextColor3 = Color3.fromRGB(163, 162, 165)
							trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							trinketEspLabel.TextStrokeTransparency = 0.650
							trinketEspLabel.TextTransparency = 0.250
							trinketEspLabel.TextSize = 15.000
							trinketEspLabel.TextWrapped = true
						elseif trinket.MeshId == "rbxassetid://923469333" then
							if trinket.Color == Color3.fromRGB(33, 84, 185) then
								local trinketEspHolder = Instance.new("BillboardGui")
								trinketEspHolder.Name = "TrinketviewHolder"
								trinketEspHolder.Parent = trinket
								trinketEspHolder.Active = false
								trinketEspHolder.Adornee = trinket
								trinketEspHolder.AlwaysOnTop = true
								if roguetrinketEsp == true then
									trinketEspHolder.Enabled = true
								elseif roguetrinketEsp == false then
									trinketEspHolder.Enabled = false
								end
								trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
								trinketEspHolder.ResetOnSpawn = false
								trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
								trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
								trinketEspHolder.ClipsDescendants = true

								local trinketEspLabel = Instance.new("TextLabel")
								trinketEspLabel.Name = "TrinketView"
								trinketEspLabel.Parent = trinketEspHolder
								trinketEspLabel.Active = false
								trinketEspLabel.BackgroundTransparency = 1.000
								trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
								trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
								trinketEspLabel.ZIndex = 5
								trinketEspLabel.Font = Enum.Font.SourceSansBold
								trinketEspLabel.RichText = true
								trinketEspLabel.Text = "Blue Candy"
								trinketEspLabel.TextColor3 = Color3.fromRGB(33, 84, 185)
								trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
								trinketEspLabel.TextStrokeTransparency = 0.650
								trinketEspLabel.TextTransparency = 0.250
								trinketEspLabel.TextSize = 15.000
								trinketEspLabel.TextWrapped = true
							elseif trinket.Color == Color3.fromRGB(30, 185, 30) then
								local trinketEspHolder = Instance.new("BillboardGui")
								trinketEspHolder.Name = "TrinketviewHolder"
								trinketEspHolder.Parent = trinket
								trinketEspHolder.Active = false
								trinketEspHolder.Adornee = trinket
								trinketEspHolder.AlwaysOnTop = true
								if roguetrinketEsp == true then
									trinketEspHolder.Enabled = true
								elseif roguetrinketEsp == false then
									trinketEspHolder.Enabled = false
								end
								trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
								trinketEspHolder.ResetOnSpawn = false
								trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
								trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
								trinketEspHolder.ClipsDescendants = true

								local trinketEspLabel = Instance.new("TextLabel")
								trinketEspLabel.Name = "TrinketView"
								trinketEspLabel.Parent = trinketEspHolder
								trinketEspLabel.Active = false
								trinketEspLabel.BackgroundTransparency = 1.000
								trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
								trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
								trinketEspLabel.ZIndex = 5
								trinketEspLabel.Font = Enum.Font.SourceSansBold
								trinketEspLabel.RichText = true
								trinketEspLabel.Text = "Green Candy"
								trinketEspLabel.TextColor3 = Color3.fromRGB(30, 185, 30)
								trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
								trinketEspLabel.TextStrokeTransparency = 0.650
								trinketEspLabel.TextTransparency = 0.250
								trinketEspLabel.TextSize = 15.000
								trinketEspLabel.TextWrapped = true
							elseif trinket.Color == Color3.fromRGB(255, 137, 1) then
								local trinketEspHolder = Instance.new("BillboardGui")
								trinketEspHolder.Name = "TrinketviewHolder"
								trinketEspHolder.Parent = trinket
								trinketEspHolder.Active = false
								trinketEspHolder.Adornee = trinket
								trinketEspHolder.AlwaysOnTop = true
								if roguetrinketEsp == true then
									trinketEspHolder.Enabled = true
								elseif roguetrinketEsp == false then
									trinketEspHolder.Enabled = false
								end
								trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
								trinketEspHolder.ResetOnSpawn = false
								trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
								trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
								trinketEspHolder.ClipsDescendants = true

								local trinketEspLabel = Instance.new("TextLabel")
								trinketEspLabel.Name = "TrinketView"
								trinketEspLabel.Parent = trinketEspHolder
								trinketEspLabel.Active = false
								trinketEspLabel.BackgroundTransparency = 1.000
								trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
								trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
								trinketEspLabel.ZIndex = 5
								trinketEspLabel.Font = Enum.Font.SourceSansBold
								trinketEspLabel.RichText = true
								trinketEspLabel.Text = "Orange Candy"
								trinketEspLabel.TextColor3 = Color3.fromRGB(255, 137, 1)
								trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
								trinketEspLabel.TextStrokeTransparency = 0.650
								trinketEspLabel.TextTransparency = 0.250
								trinketEspLabel.TextSize = 15.000
								trinketEspLabel.TextWrapped = true
							end
						elseif trinket.MeshId == "rbxassetid://5204003946" then
							local trinketEspHolder = Instance.new("BillboardGui")
							trinketEspHolder.Name = "TrinketviewHolder"
							trinketEspHolder.Parent = trinket
							trinketEspHolder.Active = false
							trinketEspHolder.Adornee = trinket
							trinketEspHolder.AlwaysOnTop = true
							if roguetrinketEsp == true then
								trinketEspHolder.Enabled = true
							elseif roguetrinketEsp == false then
								trinketEspHolder.Enabled = false
							end
							trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							trinketEspHolder.ResetOnSpawn = false
							trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
							trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							trinketEspHolder.ClipsDescendants = true

							local trinketEspLabel = Instance.new("TextLabel")
							trinketEspLabel.Name = "TrinketView"
							trinketEspLabel.Parent = trinketEspHolder
							trinketEspLabel.Active = false
							trinketEspLabel.BackgroundTransparency = 1.000
							trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
							trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
							trinketEspLabel.ZIndex = 5
							trinketEspLabel.Font = Enum.Font.SourceSansBold
							trinketEspLabel.RichText = true
							trinketEspLabel.Text = "Goblet"
							trinketEspLabel.TextColor3 = Color3.fromRGB(150, 86, 9)
							trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							trinketEspLabel.TextStrokeTransparency = 0.650
							trinketEspLabel.TextTransparency = 0.250
							trinketEspLabel.TextSize = 15.000
							trinketEspLabel.TextWrapped = true
						elseif trinket.MeshId == "rbxassetid://5196577540" then
							local trinketEspHolder = Instance.new("BillboardGui")
							trinketEspHolder.Name = "TrinketviewHolder"
							trinketEspHolder.Parent = trinket
							trinketEspHolder.Active = false
							trinketEspHolder.Adornee = trinket
							trinketEspHolder.AlwaysOnTop = true
							if roguetrinketEsp == true then
								trinketEspHolder.Enabled = true
							elseif roguetrinketEsp == false then
								trinketEspHolder.Enabled = false
							end
							trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							trinketEspHolder.ResetOnSpawn = false
							trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
							trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							trinketEspHolder.ClipsDescendants = true

							local trinketEspLabel = Instance.new("TextLabel")
							trinketEspLabel.Name = "TrinketView"
							trinketEspLabel.Parent = trinketEspHolder
							trinketEspLabel.Active = false
							trinketEspLabel.BackgroundTransparency = 1.000
							trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
							trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
							trinketEspLabel.ZIndex = 5
							trinketEspLabel.Font = Enum.Font.SourceSansBold
							trinketEspLabel.RichText = true
							trinketEspLabel.Text = "Old Amulet"
							trinketEspLabel.TextColor3 = Color3.fromRGB(163, 162, 165)
							trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							trinketEspLabel.TextStrokeTransparency = 0.650
							trinketEspLabel.TextTransparency = 0.250
							trinketEspLabel.TextSize = 15.000
							trinketEspLabel.TextWrapped = true
						elseif trinket.MeshId == "rbxassetid://5196782997" then
							local trinketEspHolder = Instance.new("BillboardGui")
							trinketEspHolder.Name = "TrinketviewHolder"
							trinketEspHolder.Parent = trinket
							trinketEspHolder.Active = false
							trinketEspHolder.Adornee = trinket
							trinketEspHolder.AlwaysOnTop = true
							if roguetrinketEsp == true then
								trinketEspHolder.Enabled = true
							elseif roguetrinketEsp == false then
								trinketEspHolder.Enabled = false
							end
							trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							trinketEspHolder.ResetOnSpawn = false
							trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
							trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							trinketEspHolder.ClipsDescendants = true

							local trinketEspLabel = Instance.new("TextLabel")
							trinketEspLabel.Name = "TrinketView"
							trinketEspLabel.Parent = trinketEspHolder
							trinketEspLabel.Active = false
							trinketEspLabel.BackgroundTransparency = 1.000
							trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
							trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
							trinketEspLabel.ZIndex = 5
							trinketEspLabel.Font = Enum.Font.SourceSansBold
							trinketEspLabel.RichText = true
							trinketEspLabel.Text = "Old Ring"
							trinketEspLabel.TextColor3 = Color3.fromRGB(163, 162, 165)
							trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							trinketEspLabel.TextStrokeTransparency = 0.650
							trinketEspLabel.TextTransparency = 0.250
							trinketEspLabel.TextSize = 15.000
							trinketEspLabel.TextWrapped = true
						elseif trinket.MeshId == "rbxassetid://5196776695" then
							local trinketEspHolder = Instance.new("BillboardGui")
							trinketEspHolder.Name = "TrinketviewHolder"
							trinketEspHolder.Parent = trinket
							trinketEspHolder.Active = false
							trinketEspHolder.Adornee = trinket
							trinketEspHolder.AlwaysOnTop = true
							if roguetrinketEsp == true then
								trinketEspHolder.Enabled = true
							elseif roguetrinketEsp == false then
								trinketEspHolder.Enabled = false
							end
							trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							trinketEspHolder.ResetOnSpawn = false
							trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
							trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							trinketEspHolder.ClipsDescendants = true

							local trinketEspLabel = Instance.new("TextLabel")
							trinketEspLabel.Name = "TrinketView"
							trinketEspLabel.Parent = trinketEspHolder
							trinketEspLabel.Active = false
							trinketEspLabel.BackgroundTransparency = 1.000
							trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
							trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
							trinketEspLabel.ZIndex = 5
							trinketEspLabel.Font = Enum.Font.SourceSansBold
							trinketEspLabel.RichText = true
							trinketEspLabel.Text = "Ring"
							trinketEspLabel.TextColor3 = Color3.fromRGB(163, 162, 165)
							trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							trinketEspLabel.TextStrokeTransparency = 0.650
							trinketEspLabel.TextTransparency = 0.250
							trinketEspLabel.TextSize = 15.000
							trinketEspLabel.TextWrapped = true
						end
					elseif trinket.ClassName == "UnionOperation" then
						if trinket.Color == Color3.fromRGB(111, 113, 125) then
							local trinketEspHolder = Instance.new("BillboardGui")
							trinketEspHolder.Name = "TrinketviewHolder"
							trinketEspHolder.Parent = trinket
							trinketEspHolder.Active = false
							trinketEspHolder.Adornee = trinket
							trinketEspHolder.AlwaysOnTop = true
							if roguetrinketEsp == true then
								trinketEspHolder.Enabled = true
							elseif roguetrinketEsp == false then
								trinketEspHolder.Enabled = false
							end
							trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							trinketEspHolder.ResetOnSpawn = false
							trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
							trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							trinketEspHolder.ClipsDescendants = true

							local trinketEspLabel = Instance.new("TextLabel")
							trinketEspLabel.Name = "TrinketView"
							trinketEspLabel.Parent = trinketEspHolder
							trinketEspLabel.Active = false
							trinketEspLabel.BackgroundTransparency = 1.000
							trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
							trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
							trinketEspLabel.ZIndex = 5
							trinketEspLabel.Font = Enum.Font.SourceSansBold
							trinketEspLabel.RichText = true
							trinketEspLabel.Text = "Forgotten Idle"
							trinketEspLabel.TextColor3 = Color3.fromRGB(111, 113, 125)
							trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							trinketEspLabel.TextStrokeTransparency = 0.650
							trinketEspLabel.TextTransparency = 0.250
							trinketEspLabel.TextSize = 15.000
							trinketEspLabel.TextWrapped = true
						end
					elseif trinket.ClassName == "Part" then
						if trinket.Color == Color3.fromRGB(89, 34, 89) then
							local trinketEspHolder = Instance.new("BillboardGui")
							trinketEspHolder.Name = "TrinketviewHolder"
							trinketEspHolder.Parent = trinket
							trinketEspHolder.Active = false
							trinketEspHolder.Adornee = trinket
							trinketEspHolder.AlwaysOnTop = true
							if roguetrinketEsp == true then
								trinketEspHolder.Enabled = true
							elseif roguetrinketEsp == false then
								trinketEspHolder.Enabled = false
							end
							trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							trinketEspHolder.ResetOnSpawn = false
							trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
							trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							trinketEspHolder.ClipsDescendants = true

							local trinketEspLabel = Instance.new("TextLabel")
							trinketEspLabel.Name = "TrinketView"
							trinketEspLabel.Parent = trinketEspHolder
							trinketEspLabel.Active = false
							trinketEspLabel.BackgroundTransparency = 1.000
							trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
							trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
							trinketEspLabel.ZIndex = 5
							trinketEspLabel.Font = Enum.Font.SourceSansBold
							trinketEspLabel.RichText = true
							trinketEspLabel.Text = "???"
							trinketEspLabel.TextColor3 = Color3.fromRGB(89, 34, 89)
							trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							trinketEspLabel.TextStrokeTransparency = 0.650
							trinketEspLabel.TextTransparency = 0.250
							trinketEspLabel.TextSize = 15.000
							trinketEspLabel.TextWrapped = true
						end
					else
						local trinketEspHolder = Instance.new("BillboardGui")
						trinketEspHolder.Name = "TrinketviewHolder"
						trinketEspHolder.Parent = trinket
						trinketEspHolder.Active = false
						trinketEspHolder.Adornee = trinket
						trinketEspHolder.AlwaysOnTop = true
						if roguetrinketEsp == true then
							trinketEspHolder.Enabled = true
						elseif roguetrinketEsp == false then
							trinketEspHolder.Enabled = false
						end
						trinketEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
						trinketEspHolder.ResetOnSpawn = false
						trinketEspHolder.Size = UDim2.new(0, 200, 0, 50)
						trinketEspHolder.StudsOffset = Vector3.new(0, 1, 0)
						trinketEspHolder.ClipsDescendants = true

						local trinketEspLabel = Instance.new("TextLabel")
						trinketEspLabel.Name = "TrinketView"
						trinketEspLabel.Parent = trinketEspHolder
						trinketEspLabel.Active = false
						trinketEspLabel.BackgroundTransparency = 1.000
						trinketEspLabel.Position = UDim2.new(0, 0, 0, 0)
						trinketEspLabel.Size = UDim2.new(0, 200, 0, 50)
						trinketEspLabel.ZIndex = 5
						trinketEspLabel.Font = Enum.Font.SourceSansBold
						trinketEspLabel.RichText = true
						trinketEspLabel.Text = "Unknown"
						trinketEspLabel.TextColor3 = Color3.fromRGB(26, 26, 26)
						trinketEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
						trinketEspLabel.TextStrokeTransparency = 0.900
						trinketEspLabel.TextTransparency = 0.100
						trinketEspLabel.TextSize = 15.000
						trinketEspLabel.TextWrapped = true
					end
				end
			end
			if not trinket:FindFirstChild("GemScrollviewHolder") then
				task.wait(0.35)
				if trinket.Parent == game.Workspace.Trinkets then
					if trinket.ClassName == "MeshPart" then
						if trinket.MeshId == "rbxassetid://5204453430" then
							local gemscrollEspHolder = Instance.new("BillboardGui")
							gemscrollEspHolder.Name = "GemScrollviewHolder"
							gemscrollEspHolder.Parent = trinket
							gemscrollEspHolder.Active = false
							gemscrollEspHolder.Adornee = trinket
							gemscrollEspHolder.AlwaysOnTop = true
							if roguegemscrollEsp == true then
								gemscrollEspHolder.Enabled = true
							elseif roguegemscrollEsp == false then
								gemscrollEspHolder.Enabled = false
							end
							gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							gemscrollEspHolder.ResetOnSpawn = false
							gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							gemscrollEspHolder.ClipsDescendants = true

							local gemscrollEspLabel = Instance.new("TextLabel")
							gemscrollEspLabel.Name = "GemScrollView"
							gemscrollEspLabel.Parent = gemscrollEspHolder
							gemscrollEspLabel.Active = false
							gemscrollEspLabel.BackgroundTransparency = 1.000
							gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
							gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspLabel.ZIndex = 5
							gemscrollEspLabel.Font = Enum.Font.SourceSansBold
							gemscrollEspLabel.RichText = true
							gemscrollEspLabel.Text = "Scroll"
							gemscrollEspLabel.TextColor3 = Color3.fromRGB(255, 202, 42)
							gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							gemscrollEspLabel.TextStrokeTransparency = 0.650
							gemscrollEspLabel.TextTransparency = 0.250
							gemscrollEspLabel.TextSize = 15.000
							gemscrollEspLabel.TextWrapped = true
						elseif trinket.Color == Color3.fromRGB(255, 0, 0) and trinket.Material == Enum.Material.Glass then
							local gemscrollEspHolder = Instance.new("BillboardGui")
							gemscrollEspHolder.Name = "GemScrollviewHolder"
							gemscrollEspHolder.Parent = trinket
							gemscrollEspHolder.Active = false
							gemscrollEspHolder.Adornee = trinket
							gemscrollEspHolder.AlwaysOnTop = true
							if roguegemscrollEsp == true then
								gemscrollEspHolder.Enabled = true
							elseif roguegemscrollEsp == false then
								gemscrollEspHolder.Enabled = false
							end
							gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							gemscrollEspHolder.ResetOnSpawn = false
							gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							gemscrollEspHolder.ClipsDescendants = true

							local gemscrollEspLabel = Instance.new("TextLabel")
							gemscrollEspLabel.Name = "GemScrollView"
							gemscrollEspLabel.Parent = gemscrollEspHolder
							gemscrollEspLabel.Active = false
							gemscrollEspLabel.BackgroundTransparency = 1.000
							gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
							gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspLabel.ZIndex = 5
							gemscrollEspLabel.Font = Enum.Font.SourceSansBold
							gemscrollEspLabel.RichText = true
							gemscrollEspLabel.Text = "Ruby"
							gemscrollEspLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
							gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							gemscrollEspLabel.TextStrokeTransparency = 0.650
							gemscrollEspLabel.TextTransparency = 0.250
							gemscrollEspLabel.TextSize = 15.000
							gemscrollEspLabel.TextWrapped = true
						end
					elseif trinket.ClassName == "Part" then
						if trinket.Color == Color3.fromRGB(164, 187, 190) and trinket.Material == Enum.Material.Glass then
							local gemscrollEspHolder = Instance.new("BillboardGui")
							gemscrollEspHolder.Name = "GemScrollviewHolder"
							gemscrollEspHolder.Parent = trinket
							gemscrollEspHolder.Active = false
							gemscrollEspHolder.Adornee = trinket
							gemscrollEspHolder.AlwaysOnTop = true
							if roguegemscrollEsp == true then
								gemscrollEspHolder.Enabled = true
							elseif roguegemscrollEsp == false then
								gemscrollEspHolder.Enabled = false
							end
							gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							gemscrollEspHolder.ResetOnSpawn = false
							gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							gemscrollEspHolder.ClipsDescendants = true

							local gemscrollEspLabel = Instance.new("TextLabel")
							gemscrollEspLabel.Name = "GemScrollView"
							gemscrollEspLabel.Parent = gemscrollEspHolder
							gemscrollEspLabel.Active = false
							gemscrollEspLabel.BackgroundTransparency = 1.000
							gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
							gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspLabel.ZIndex = 5
							gemscrollEspLabel.Font = Enum.Font.SourceSansBold
							gemscrollEspLabel.RichText = true
							gemscrollEspLabel.Text = "Diamond"
							gemscrollEspLabel.TextColor3 = Color3.fromRGB(164, 187, 190)
							gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							gemscrollEspLabel.TextStrokeTransparency = 0.650
							gemscrollEspLabel.TextTransparency = 0.250
							gemscrollEspLabel.TextSize = 15.000
							gemscrollEspLabel.TextWrapped = true
						elseif trinket.Color == Color3.fromRGB(0, 184, 49) and trinket.Material == Enum.Material.Glass then
							local gemscrollEspHolder = Instance.new("BillboardGui")
							gemscrollEspHolder.Name = "GemScrollviewHolder"
							gemscrollEspHolder.Parent = trinket
							gemscrollEspHolder.Active = false
							gemscrollEspHolder.Adornee = trinket
							gemscrollEspHolder.AlwaysOnTop = true
							if roguegemscrollEsp == true then
								gemscrollEspHolder.Enabled = true
							elseif roguegemscrollEsp == false then
								gemscrollEspHolder.Enabled = false
							end
							gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							gemscrollEspHolder.ResetOnSpawn = false
							gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							gemscrollEspHolder.ClipsDescendants = true

							local gemscrollEspLabel = Instance.new("TextLabel")
							gemscrollEspLabel.Name = "GemScrollView"
							gemscrollEspLabel.Parent = gemscrollEspHolder
							gemscrollEspLabel.Active = false
							gemscrollEspLabel.BackgroundTransparency = 1.000
							gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
							gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspLabel.ZIndex = 5
							gemscrollEspLabel.Font = Enum.Font.SourceSansBold
							gemscrollEspLabel.RichText = true
							gemscrollEspLabel.Text = "Emerald"
							gemscrollEspLabel.TextColor3 = Color3.fromRGB(0, 184, 49)
							gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							gemscrollEspLabel.TextStrokeTransparency = 0.650
							gemscrollEspLabel.TextTransparency = 0.250
							gemscrollEspLabel.TextSize = 15.000
							gemscrollEspLabel.TextWrapped = true
						elseif trinket.Color == Color3.fromRGB(16, 42, 220) and trinket.Material == Enum.Material.Glass then
							local gemscrollEspHolder = Instance.new("BillboardGui")
							gemscrollEspHolder.Name = "GemScrollviewHolder"
							gemscrollEspHolder.Parent = trinket
							gemscrollEspHolder.Active = false
							gemscrollEspHolder.Adornee = trinket
							gemscrollEspHolder.AlwaysOnTop = true
							if roguegemscrollEsp == true then
								gemscrollEspHolder.Enabled = true
							elseif roguegemscrollEsp == false then
								gemscrollEspHolder.Enabled = false
							end
							gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							gemscrollEspHolder.ResetOnSpawn = false
							gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							gemscrollEspHolder.ClipsDescendants = true

							local gemscrollEspLabel = Instance.new("TextLabel")
							gemscrollEspLabel.Name = "GemScrollView"
							gemscrollEspLabel.Parent = gemscrollEspHolder
							gemscrollEspLabel.Active = false
							gemscrollEspLabel.BackgroundTransparency = 1.000
							gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
							gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspLabel.ZIndex = 5
							gemscrollEspLabel.Font = Enum.Font.SourceSansBold
							gemscrollEspLabel.RichText = true
							gemscrollEspLabel.Text = "Sapphire"
							gemscrollEspLabel.TextColor3 = Color3.fromRGB(16, 42, 220)
							gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							gemscrollEspLabel.TextStrokeTransparency = 0.650
							gemscrollEspLabel.TextTransparency = 0.250
							gemscrollEspLabel.TextSize = 15.000
							gemscrollEspLabel.TextWrapped = true
						elseif trinket.Color == Color3.fromRGB(248, 248, 248) and trinket.Material == Enum.Material.Glass then
							local gemscrollEspHolder = Instance.new("BillboardGui")
							gemscrollEspHolder.Name = "GemScrollviewHolder"
							gemscrollEspHolder.Parent = trinket
							gemscrollEspHolder.Active = false
							gemscrollEspHolder.Adornee = trinket
							gemscrollEspHolder.AlwaysOnTop = true
							if roguegemscrollEsp == true then
								gemscrollEspHolder.Enabled = true
							elseif roguegemscrollEsp == false then
								gemscrollEspHolder.Enabled = false
							end
							gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							gemscrollEspHolder.ResetOnSpawn = false
							gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							gemscrollEspHolder.ClipsDescendants = true

							local gemscrollEspLabel = Instance.new("TextLabel")
							gemscrollEspLabel.Name = "GemScrollView"
							gemscrollEspLabel.Parent = gemscrollEspHolder
							gemscrollEspLabel.Active = false
							gemscrollEspLabel.BackgroundTransparency = 1.000
							gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
							gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
							gemscrollEspLabel.ZIndex = 5
							gemscrollEspLabel.Font = Enum.Font.SourceSansBold
							gemscrollEspLabel.RichText = true
							gemscrollEspLabel.Text = "Opal"
							gemscrollEspLabel.TextColor3 = Color3.fromRGB(248, 248, 248)
							gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							gemscrollEspLabel.TextStrokeTransparency = 0.650
							gemscrollEspLabel.TextTransparency = 0.250
							gemscrollEspLabel.TextSize = 15.000
							gemscrollEspLabel.TextWrapped = true
						elseif trinket.Color == Color3.fromRGB(254, 85, 100) then
							if trinket:FindFirstChild("OrbParticle") then
								local gemscrollEspHolder = Instance.new("BillboardGui")
								gemscrollEspHolder.Name = "GemScrollviewHolder"
								gemscrollEspHolder.Parent = trinket
								gemscrollEspHolder.Active = false
								gemscrollEspHolder.Adornee = trinket
								gemscrollEspHolder.AlwaysOnTop = true
								if roguegemscrollEsp == true then
									gemscrollEspHolder.Enabled = true
								elseif roguegemscrollEsp == false then
									gemscrollEspHolder.Enabled = false
								end
								gemscrollEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
								gemscrollEspHolder.ResetOnSpawn = false
								gemscrollEspHolder.Size = UDim2.new(0, 200, 0, 50)
								gemscrollEspHolder.StudsOffset = Vector3.new(0, 1, 0)
								gemscrollEspHolder.ClipsDescendants = true

								local gemscrollEspLabel = Instance.new("TextLabel")
								gemscrollEspLabel.Name = "GemScrollView"
								gemscrollEspLabel.Parent = gemscrollEspHolder
								gemscrollEspLabel.Active = false
								gemscrollEspLabel.BackgroundTransparency = 1.000
								gemscrollEspLabel.Position = UDim2.new(0, 0, 0, 0)
								gemscrollEspLabel.Size = UDim2.new(0, 200, 0, 50)
								gemscrollEspLabel.ZIndex = 5
								gemscrollEspLabel.Font = Enum.Font.SourceSansBold
								gemscrollEspLabel.RichText = true
								gemscrollEspLabel.Text = "Ice Essence"
								gemscrollEspLabel.TextColor3 = Color3.fromRGB(25, 185, 155)
								gemscrollEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
								gemscrollEspLabel.TextStrokeTransparency = 0.650
								gemscrollEspLabel.TextTransparency = 0.250
								gemscrollEspLabel.TextSize = 15.000
								gemscrollEspLabel.TextWrapped = true
							end
						end
					end
				end
			end
			if not trinket:FindFirstChild("ArtifactviewHolder") then
				task.wait(0.35)
				if trinket.Parent == game.Workspace.Trinkets then
					if trinket.ClassName == "MeshPart" then
						if trinket.MeshId == "rbxassetid://2520762076" then
							local artifactEspHolder = Instance.new("BillboardGui")
							artifactEspHolder.Name = "ArtifactviewHolder"
							artifactEspHolder.Parent = trinket
							artifactEspHolder.Active = false
							artifactEspHolder.Adornee = trinket
							artifactEspHolder.AlwaysOnTop = true
							if rogueartifactEsp == true then
								artifactEspHolder.Enabled = true
							elseif rogueartifactEsp == false then
								artifactEspHolder.Enabled = false
							end
							artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							artifactEspHolder.ResetOnSpawn = false
							artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
							artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							artifactEspHolder.ClipsDescendants = true

							local artifactEspLabel = Instance.new("TextLabel")
							artifactEspLabel.Name = "ArtifactView"
							artifactEspLabel.Parent = artifactEspHolder
							artifactEspLabel.Active = false
							artifactEspLabel.BackgroundTransparency = 1.000
							artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
							artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
							artifactEspLabel.ZIndex = 5
							artifactEspLabel.Font = Enum.Font.SourceSansBold
							artifactEspLabel.RichText = true
							artifactEspLabel.Text = "Howler Friend"
							artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
							artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							artifactEspLabel.TextStrokeTransparency = 0.650
							artifactEspLabel.TextTransparency = 0.250
							artifactEspLabel.TextSize = 15.000
							artifactEspLabel.TextWrapped = true
						end
					elseif trinket.ClassName == "UnionOperation" then
						if trinket.Color == Color3.fromRGB(248, 217, 109) then
							local artifactEspHolder = Instance.new("BillboardGui")
							artifactEspHolder.Name = "ArtifactviewHolder"
							artifactEspHolder.Parent = trinket
							artifactEspHolder.Active = false
							artifactEspHolder.Adornee = trinket
							artifactEspHolder.AlwaysOnTop = true
							if rogueartifactEsp == true then
								artifactEspHolder.Enabled = true
							elseif rogueartifactEsp == false then
								artifactEspHolder.Enabled = false
							end
							artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							artifactEspHolder.ResetOnSpawn = false
							artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
							artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							artifactEspHolder.ClipsDescendants = true

							local artifactEspLabel = Instance.new("TextLabel")
							artifactEspLabel.Name = "ArtifactView"
							artifactEspLabel.Parent = artifactEspHolder
							artifactEspLabel.Active = false
							artifactEspLabel.BackgroundTransparency = 1.000
							artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
							artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
							artifactEspLabel.ZIndex = 5
							artifactEspLabel.Font = Enum.Font.SourceSansBold
							artifactEspLabel.RichText = true
							artifactEspLabel.Text = "Scroom Key"
							artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
							artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							artifactEspLabel.TextStrokeTransparency = 0.650
							artifactEspLabel.TextTransparency = 0.250
							artifactEspLabel.TextSize = 15.000
							artifactEspLabel.TextWrapped = true
						elseif trinket.Color == Color3.fromRGB(255, 89, 89) then
							local artifactEspHolder = Instance.new("BillboardGui")
							artifactEspHolder.Name = "ArtifactviewHolder"
							artifactEspHolder.Parent = trinket
							artifactEspHolder.Active = false
							artifactEspHolder.Adornee = trinket
							artifactEspHolder.AlwaysOnTop = true
							if rogueartifactEsp == true then
								artifactEspHolder.Enabled = true
							elseif rogueartifactEsp == false then
								artifactEspHolder.Enabled = false
							end
							artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							artifactEspHolder.ResetOnSpawn = false
							artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
							artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							artifactEspHolder.ClipsDescendants = true

							local artifactEspLabel = Instance.new("TextLabel")
							artifactEspLabel.Name = "ArtifactView"
							artifactEspLabel.Parent = artifactEspHolder
							artifactEspLabel.Active = false
							artifactEspLabel.BackgroundTransparency = 1.000
							artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
							artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
							artifactEspLabel.ZIndex = 5
							artifactEspLabel.Font = Enum.Font.SourceSansBold
							artifactEspLabel.RichText = true
							artifactEspLabel.Text = "Philosopher's Stone"
							artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
							artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							artifactEspLabel.TextStrokeTransparency = 0.650
							artifactEspLabel.TextTransparency = 0.250
							artifactEspLabel.TextSize = 15.000
							artifactEspLabel.TextWrapped = true
						elseif trinket.Color == Color3.fromRGB(29, 46, 58) then
							local artifactEspHolder = Instance.new("BillboardGui")
							artifactEspHolder.Name = "ArtifactviewHolder"
							artifactEspHolder.Parent = trinket
							artifactEspHolder.Active = false
							artifactEspHolder.Adornee = trinket
							artifactEspHolder.AlwaysOnTop = true
							if rogueartifactEsp == true then
								artifactEspHolder.Enabled = true
							elseif rogueartifactEsp == false then
								artifactEspHolder.Enabled = false
							end
							artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							artifactEspHolder.ResetOnSpawn = false
							artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
							artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							artifactEspHolder.ClipsDescendants = true

							local artifactEspLabel = Instance.new("TextLabel")
							artifactEspLabel.Name = "ArtifactView"
							artifactEspLabel.Parent = artifactEspHolder
							artifactEspLabel.Active = false
							artifactEspLabel.BackgroundTransparency = 1.000
							artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
							artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
							artifactEspLabel.ZIndex = 5
							artifactEspLabel.Font = Enum.Font.SourceSansBold
							artifactEspLabel.RichText = true
							artifactEspLabel.Text = "Nightstone"
							artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
							artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							artifactEspLabel.TextStrokeTransparency = 0.650
							artifactEspLabel.TextTransparency = 0.250
							artifactEspLabel.TextSize = 15.000
							artifactEspLabel.TextWrapped = true
						elseif trinket.Color == Color3.fromRGB(248, 248, 248) and trinket.Material == Enum.Material.Neon then
							if trinket:FindFirstChild("PointLight") then
								local artifactEspHolder = Instance.new("BillboardGui")
								artifactEspHolder.Name = "ArtifactviewHolder"
								artifactEspHolder.Parent = trinket
								artifactEspHolder.Active = false
								artifactEspHolder.Adornee = trinket
								artifactEspHolder.AlwaysOnTop = true
								if rogueartifactEsp == true then
									artifactEspHolder.Enabled = true
								elseif rogueartifactEsp == false then
									artifactEspHolder.Enabled = false
								end
								artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
								artifactEspHolder.ResetOnSpawn = false
								artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
								artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
								artifactEspHolder.ClipsDescendants = true

								local artifactEspLabel = Instance.new("TextLabel")
								artifactEspLabel.Name = "ArtifactView"
								artifactEspLabel.Parent = artifactEspHolder
								artifactEspLabel.Active = false
								artifactEspLabel.BackgroundTransparency = 1.000
								artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
								artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
								artifactEspLabel.ZIndex = 5
								artifactEspLabel.Font = Enum.Font.SourceSansBold
								artifactEspLabel.RichText = true
								artifactEspLabel.Text = "Amulet of the White King"
								artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
								artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
								artifactEspLabel.TextStrokeTransparency = 0.650
								artifactEspLabel.TextTransparency = 0.250
								artifactEspLabel.TextSize = 15.000
								artifactEspLabel.TextWrapped = true
							else
								local artifactEspHolder = Instance.new("BillboardGui")
								artifactEspHolder.Name = "ArtifactviewHolder"
								artifactEspHolder.Parent = trinket
								artifactEspHolder.Active = false
								artifactEspHolder.Adornee = trinket
								artifactEspHolder.AlwaysOnTop = true
								if rogueartifactEsp == true then
									artifactEspHolder.Enabled = true
								elseif rogueartifactEsp == false then
									artifactEspHolder.Enabled = false
								end
								artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
								artifactEspHolder.ResetOnSpawn = false
								artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
								artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
								artifactEspHolder.ClipsDescendants = true

								local artifactEspLabel = Instance.new("TextLabel")
								artifactEspLabel.Name = "ArtifactView"
								artifactEspLabel.Parent = artifactEspHolder
								artifactEspLabel.Active = false
								artifactEspLabel.BackgroundTransparency = 1.000
								artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
								artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
								artifactEspLabel.ZIndex = 5
								artifactEspLabel.Font = Enum.Font.SourceSansBold
								artifactEspLabel.RichText = true
								artifactEspLabel.Text = "Lannis Amulet"
								artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
								artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
								artifactEspLabel.TextStrokeTransparency = 0.650
								artifactEspLabel.TextTransparency = 0.250
								artifactEspLabel.TextSize = 15.000
								artifactEspLabel.TextWrapped = true
							end
						end
					elseif trinket.ClassName == "Part" then
						if trinket.Color == Color3.fromRGB(255, 0, 191) and trinket.Material == Enum.Material.Glass then
							if not trinket:FindFirstChildOfClass("Script") then
								local artifactEspHolder = Instance.new("BillboardGui")
								artifactEspHolder.Name = "ArtifactviewHolder"
								artifactEspHolder.Parent = trinket
								artifactEspHolder.Active = false
								artifactEspHolder.Adornee = trinket
								artifactEspHolder.AlwaysOnTop = true
								if rogueartifactEsp == true then
									artifactEspHolder.Enabled = true
								elseif rogueartifactEsp == false then
									artifactEspHolder.Enabled = false
								end
								artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
								artifactEspHolder.ResetOnSpawn = false
								artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
								artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
								artifactEspHolder.ClipsDescendants = true

								local artifactEspLabel = Instance.new("TextLabel")
								artifactEspLabel.Name = "ArtifactView"
								artifactEspLabel.Parent = artifactEspHolder
								artifactEspLabel.Active = false
								artifactEspLabel.BackgroundTransparency = 1.000
								artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
								artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
								artifactEspLabel.ZIndex = 5
								artifactEspLabel.Font = Enum.Font.SourceSansBold
								artifactEspLabel.RichText = true
								artifactEspLabel.Text = "Rift Gem"
								artifactEspLabel.TextColor3 = Color3.fromRGB(255, 0, 191)
								artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
								artifactEspLabel.TextStrokeTransparency = 0.650
								artifactEspLabel.TextTransparency = 0.250
								artifactEspLabel.TextSize = 15.000
								artifactEspLabel.TextWrapped = true
							end
						elseif trinket.Color == Color3.fromRGB(255, 255, 0) then
							local artifactEspHolder = Instance.new("BillboardGui")
							artifactEspHolder.Name = "ArtifactviewHolder"
							artifactEspHolder.Parent = trinket
							artifactEspHolder.Active = false
							artifactEspHolder.Adornee = trinket
							artifactEspHolder.AlwaysOnTop = true
							if rogueartifactEsp == true then
								artifactEspHolder.Enabled = true
							elseif rogueartifactEsp == false then
								artifactEspHolder.Enabled = false
							end
							artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							artifactEspHolder.ResetOnSpawn = false
							artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
							artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							artifactEspHolder.ClipsDescendants = true

							local artifactEspLabel = Instance.new("TextLabel")
							artifactEspLabel.Name = "ArtifactView"
							artifactEspLabel.Parent = artifactEspHolder
							artifactEspLabel.Active = false
							artifactEspLabel.BackgroundTransparency = 1.000
							artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
							artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
							artifactEspLabel.ZIndex = 5
							artifactEspLabel.Font = Enum.Font.SourceSansBold
							artifactEspLabel.RichText = true
							artifactEspLabel.Text = "Spider Cloak"
							artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
							artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							artifactEspLabel.TextStrokeTransparency = 0.650
							artifactEspLabel.TextTransparency = 0.250
							artifactEspLabel.TextSize = 15.000
							artifactEspLabel.TextWrapped = true
						elseif trinket.Color == Color3.fromRGB(128, 187, 219) then
							local artifactEspHolder = Instance.new("BillboardGui")
							artifactEspHolder.Name = "ArtifactviewHolder"
							artifactEspHolder.Parent = trinket
							artifactEspHolder.Active = false
							artifactEspHolder.Adornee = trinket
							artifactEspHolder.AlwaysOnTop = true
							if rogueartifactEsp == true then
								artifactEspHolder.Enabled = true
							elseif rogueartifactEsp == false then
								artifactEspHolder.Enabled = false
							end
							artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
							artifactEspHolder.ResetOnSpawn = false
							artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
							artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
							artifactEspHolder.ClipsDescendants = true

							local artifactEspLabel = Instance.new("TextLabel")
							artifactEspLabel.Name = "ArtifactView"
							artifactEspLabel.Parent = artifactEspHolder
							artifactEspLabel.Active = false
							artifactEspLabel.BackgroundTransparency = 1.000
							artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
							artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
							artifactEspLabel.ZIndex = 5
							artifactEspLabel.Font = Enum.Font.SourceSansBold
							artifactEspLabel.RichText = true
							artifactEspLabel.Text = "Fairfrozen"
							artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
							artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							artifactEspLabel.TextStrokeTransparency = 0.650
							artifactEspLabel.TextTransparency = 0.250
							artifactEspLabel.TextSize = 15.000
							artifactEspLabel.TextWrapped = true
						elseif trinket.Color == Color3.fromRGB(163, 162, 165) then
							if trinket:FindFirstChildOfClass("Attachment") then
								if trinket.Attachment:FindFirstChildOfClass("ParticleEmitter") then
									if trinket.Attachment.ParticleEmitter.Texture == "rbxassetid://1536547385" then
										local artifactEspHolder = Instance.new("BillboardGui")
										artifactEspHolder.Name = "ArtifactviewHolder"
										artifactEspHolder.Parent = trinket
										artifactEspHolder.Active = false
										artifactEspHolder.Adornee = trinket
										artifactEspHolder.AlwaysOnTop = true
										if rogueartifactEsp == true then
											artifactEspHolder.Enabled = true
										elseif rogueartifactEsp == false then
											artifactEspHolder.Enabled = false
										end
										artifactEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
										artifactEspHolder.ResetOnSpawn = false
										artifactEspHolder.Size = UDim2.new(0, 200, 0, 50)
										artifactEspHolder.StudsOffset = Vector3.new(0, 1, 0)
										artifactEspHolder.ClipsDescendants = true

										local artifactEspLabel = Instance.new("TextLabel")
										artifactEspLabel.Name = "ArtifactView"
										artifactEspLabel.Parent = artifactEspHolder
										artifactEspLabel.Active = false
										artifactEspLabel.BackgroundTransparency = 1.000
										artifactEspLabel.Position = UDim2.new(0, 0, 0, 0)
										artifactEspLabel.Size = UDim2.new(0, 200, 0, 50)
										artifactEspLabel.ZIndex = 5
										artifactEspLabel.Font = Enum.Font.SourceSansBold
										artifactEspLabel.RichText = true
										artifactEspLabel.Text = "P.M.A"
										artifactEspLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
										artifactEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
										artifactEspLabel.TextStrokeTransparency = 0.650
										artifactEspLabel.TextTransparency = 0.250
										artifactEspLabel.TextSize = 15.000
										artifactEspLabel.TextWrapped = true
										if roguenotifierOn == true then
											local NotifySound = Instance.new("Sound")
											NotifySound.Name = "Click"
											NotifySound.SoundId = "rbxassetid://1862043663"
											NotifySound.RollOffMode = Enum.RollOffMode.Inverse
											NotifySound.RollOffMaxDistance = 10000
											NotifySound.RollOffMinDistance = 10
											NotifySound.PlayOnRemove = false
											NotifySound.Looped = false
											NotifySound.Volume = 1
											NotifySound.Parent = RogueNotifierButton
											NotifySound:Play()
											game.Debris:AddItem(NotifySound, 3)
										end
									end
								end
							end
						end
					end
				end
			end
		end)
	end
	game.Workspace.Live.ChildAdded:Connect(function(character)
		if character.Name ~= LocalPlayer.Name then
			if character:FindFirstChild("Head") then
				if not character.Head:FindFirstChild("ToolviewHolder") then
					local toolEspHolder = Instance.new("BillboardGui")
					toolEspHolder.Name = "ToolviewHolder"
					toolEspHolder.Parent = character.Head
					toolEspHolder.Active = false
					toolEspHolder.Adornee = character.Head
					toolEspHolder.AlwaysOnTop = true
					if roguetoolEsp == true then
						toolEspHolder.Enabled = true
					elseif roguetoolEsp == false then
						toolEspHolder.Enabled = false
					end
					toolEspHolder.MaxDistance = 99
					toolEspHolder.ResetOnSpawn = false
					toolEspHolder.Size = UDim2.new(0, 200, 0, 50)
					toolEspHolder.StudsOffset = Vector3.new(0, 3, 0)
					toolEspHolder.ClipsDescendants = true

					local toolEspLabel = Instance.new("TextLabel")
					toolEspLabel.Name = "ToolView"
					toolEspLabel.Parent = toolEspHolder
					toolEspLabel.Active = false
					toolEspLabel.BackgroundTransparency = 1.000
					toolEspLabel.Position = UDim2.new(0, 0, 0, 0)
					toolEspLabel.Size = UDim2.new(0, 200, 0, 50)
					toolEspLabel.ZIndex = 5
					toolEspLabel.Font = Enum.Font.SpecialElite
					toolEspLabel.RichText = true
					if character:FindFirstChildWhichIsA("Tool") then
						toolEspLabel.Text = character:FindFirstChildWhichIsA("Tool").Name
					elseif not character:FindFirstChildWhichIsA("Tool") then
						toolEspLabel.Text = ""
					end
					toolEspLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					toolEspLabel.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
					toolEspLabel.TextStrokeTransparency = 0
					toolEspLabel.TextTransparency = 0
					toolEspLabel.TextSize = 21.000
					toolEspLabel.TextWrapped = true
					character.ChildAdded:Connect(function(tool)
						if tool.ClassName == "Tool" then
							if character:FindFirstChild("Head") then
								if character.Head:FindFirstChild("ToolviewHolder") then
									character.Head.ToolviewHolder.ToolView.Text = tool.Name
								end
							end
						end
					end)
					character.ChildRemoved:Connect(function(tool)
						if tool.ClassName == "Tool" then
							if character:FindFirstChild("Head") then
								if character.Head:FindFirstChild("ToolviewHolder") then
									character.Head.ToolviewHolder.ToolView.Text = ""
								end
							end
						end
					end)
				end
			end
		end
	end)
	local CurrentlyViewing = nil
	local spectateValue
	local function spectatePlayer(PlayerSpectateName)
		PlayerSpectateName = tostring(PlayerSpectateName)
		if not LocalPlayer:FindFirstChild("SpectateValue") then
			spectateValue = Instance.new("StringValue")
			spectateValue.Name = "SpectateValue"
			spectateValue.Value = PlayerSpectateName
			spectateValue.Parent = LocalPlayer
		else
			spectateValue.Value = PlayerSpectateName
		end
		--[[local realSpectate
		for u, b in pairs(LocalPlayer.PlayerGui.LeaderboardGui.MainFrame.ScrollingFrame:GetChildren()) do
			if b.TextTransparency == 0.3 then
				for i, v in pairs(game.Workspace.Live:GetChildren()) do
					if v.Name == b.Text then
						realSpectate = v.Name
					end
				end
			end
		end]]
		print(spectateValue.Value)
		if game.Workspace.Live:FindFirstChild(spectateValue.Value) then
			local CameraView = game.Workspace.CurrentCamera
			CameraView.CameraSubject = game.Workspace.Live[spectateValue.Value].Humanoid
			CurrentlyViewing = spectateValue.Value
			print("Spectating: "..spectateValue.Value..".")
		else
			warn("Character: "..spectateValue.Value.." is not loaded in the server to Spectate.")
		end
	end
	if LocalPlayer.PlayerGui:FindFirstChild("LeaderboardGui") then
		local BoardScrollingFrame = LocalPlayer.PlayerGui.LeaderboardGui.MainFrame.ScrollingFrame
		for i, v in pairs(BoardScrollingFrame:GetChildren()) do
			task.spawn(function()
				v.Name = "PlayerLabel"..i
				if not v:FindFirstChild("SpectateButton") then
					local SpectateButton = Instance.new("TextButton")
					SpectateButton.Name = "SpectateButton"
					SpectateButton.Active = false
					SpectateButton.AutoButtonColor = false
					SpectateButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SpectateButton.BackgroundTransparency = 1.00
					SpectateButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
					SpectateButton.Position = UDim2.new(0, 0, 0, 0)
					SpectateButton.Size = UDim2.new(1, 0, 0, 20)
					SpectateButton.Text = ""
					SpectateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					SpectateButton.TextStrokeTransparency = 1.00
					SpectateButton.TextTransparency = 1.00
					SpectateButton.TextXAlignment = Enum.TextXAlignment.Left
					if SpectateButton:FindFirstChild("Prestige") then
						SpectateButton.Prestige:Destroy()
					end
					SpectateButton.Parent = v
					SpectateButton.MouseButton1Click:Connect(function()
						spectatePlayer(SpectateButton.Parent.Text)
					end)
				end
			end)
		end
		BoardScrollingFrame.ChildAdded:Connect(function(label)
			if label.Name == "PlayerLabel" then
				task.wait()
				for i, v in pairs(label.Parent:GetChildren()) do
					task.spawn(function()
						if not v:FindFirstChild("SpectateButton") then
							v.Name = "PlayerLabel"..i
							local SpectateButton = Instance.new("TextButton")
							SpectateButton.Name = "SpectateButton"
							SpectateButton.Active = false
							SpectateButton.AutoButtonColor = false
							SpectateButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							SpectateButton.BackgroundTransparency = 1.00
							SpectateButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
							SpectateButton.Position = UDim2.new(0, 0, 0, 0)
							SpectateButton.Size = UDim2.new(1, 0, 0, 20)
							SpectateButton.Text = ""
							SpectateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
							SpectateButton.TextStrokeTransparency = 1.00
							SpectateButton.TextTransparency = 1.00
							SpectateButton.TextXAlignment = Enum.TextXAlignment.Left
							if SpectateButton:FindFirstChild("Prestige") then
								SpectateButton.Prestige:Destroy()
							end
							SpectateButton.Parent = v
							SpectateButton.MouseButton1Click:Connect(function()
								spectatePlayer(SpectateButton.Parent.Text)
							end)
						end
					end)
				end
			end
		end)
		BoardScrollingFrame.ChildRemoved:Connect(function(label)
			task.wait()
			for i, v in pairs(BoardScrollingFrame:GetChildren()) do
				task.spawn(function()
					v.Name = "PlayerLabel"..i
				end)
			end
		end)
	end
	LocalPlayer.PlayerGui.ChildAdded:Connect(function(gui)
		if gui.ClassName == "ScreenGui" and gui.Name == "LeaderboardGui" then
			task.wait()
			for _, v in pairs(gui.MainFrame.ScrollingFrame:GetChildren()) do
				task.spawn(function()
					if not v:FindFirstChild("SpectateButton") then
						local SpectateButton = Instance.new("TextButton")
						SpectateButton.Name = "SpectateButton"
						SpectateButton.Active = false
						SpectateButton.AutoButtonColor = false
						SpectateButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						SpectateButton.BackgroundTransparency = 1.00
						SpectateButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
						SpectateButton.Position = UDim2.new(0, 0, 0, 0)
						SpectateButton.Size = UDim2.new(1, 0, 0, 20)
						SpectateButton.Text = ""
						SpectateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
						SpectateButton.TextStrokeTransparency = 1.00
						SpectateButton.TextTransparency = 1.00
						SpectateButton.TextXAlignment = Enum.TextXAlignment.Left
						if SpectateButton:FindFirstChild("Prestige") then
							SpectateButton.Prestige:Destroy()
						end
						SpectateButton.Parent = v
						SpectateButton.MouseButton1Click:Connect(function()
							spectatePlayer(SpectateButton.Parent.Text)
						end)
					end
				end)
			end
		end
	end)
end

if gameName == "VoxlBlade" then
	game.Workspace.NPCS.ChildAdded:Connect(function(enemy)
		if not enemy:FindFirstChild("EnemyviewHolder") then
			task.wait(0.35)
			local enemyEspHolder = Instance.new("BillboardGui")
			enemyEspHolder.Name = "EnemyviewHolder"
			enemyEspHolder.Parent = enemy
			enemyEspHolder.Active = false
			enemyEspHolder.Adornee = enemy
			enemyEspHolder.AlwaysOnTop = true
			if voxlenemyEsp == true then
				enemyEspHolder.Enabled = true
			elseif voxlenemyEsp == false then
				enemyEspHolder.Enabled = false
			end
			enemyEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
			enemyEspHolder.ResetOnSpawn = false
			enemyEspHolder.Size = UDim2.new(0, 200, 0, 50)
			enemyEspHolder.StudsOffset = Vector3.new(0, 5, 0)
			enemyEspHolder.ClipsDescendants = true

			local enemyEspLabel = Instance.new("TextLabel")
			enemyEspLabel.Name = "EnemyView"
			enemyEspLabel.Parent = enemyEspHolder
			enemyEspLabel.Active = false
			enemyEspLabel.BackgroundTransparency = 1.000
			enemyEspLabel.Position = UDim2.new(0, 0, 0, 0)
			enemyEspLabel.Size = UDim2.new(0, 200, 0, 50)
			enemyEspLabel.ZIndex = 5
			enemyEspLabel.Font = Enum.Font.SourceSansBold
			enemyEspLabel.RichText = true
			if enemy.Corrupt.Enabled == true or enemy.Magical.Enabled == true or enemy.Bloody.Enabled == true or enemy.Legendary.Enabled == true then
				if enemy.Corrupt.Enabled == true then
					enemyEspLabel.Text = "Corrupt "..enemy.Name
					enemyEspLabel.TextColor3 = Color3.fromRGB(140, 0, 255)
					enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
					enemyEspLabel.TextStrokeTransparency = 0.650
					enemyEspLabel.TextTransparency = 0.250
				elseif enemy.Magical.Enabled == true then
					enemyEspLabel.Text = "Magical "..enemy.Name
					enemyEspLabel.TextColor3 = Color3.fromRGB(105, 228, 255)
					enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
					enemyEspLabel.TextStrokeTransparency = 0.650
					enemyEspLabel.TextTransparency = 0.250
				elseif enemy.Bloody.Enabled == true then
					enemyEspLabel.Text = "Bloody "..enemy.Name
					enemyEspLabel.TextColor3 = Color3.fromRGB(255, 29, 29)
					enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
					enemyEspLabel.TextStrokeTransparency = 0.650
					enemyEspLabel.TextTransparency = 0.250
				elseif enemy.Legendary.Enabled == true then
					enemyEspLabel.Text = "Legendary "..enemy.Name
					enemyEspLabel.TextColor3 = Color3.fromRGB(237, 255, 70)
					enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
					enemyEspLabel.TextStrokeTransparency = 0.650
					enemyEspLabel.TextTransparency = 0.250
				end
			elseif string.find(enemy.Name,"Easter") then
				enemyEspLabel.Text = enemy.Name
				enemyEspLabel.TextColor3 = Color3.fromRGB(212, 144, 189)
				enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				enemyEspLabel.TextStrokeTransparency = 0.650
				enemyEspLabel.TextTransparency = 0.250
			else
				enemyEspLabel.Text = enemy.Name
				enemyEspLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				enemyEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				enemyEspLabel.TextStrokeTransparency = 0.900
				enemyEspLabel.TextTransparency = 0.100
			end
			enemyEspLabel.TextSize = 15.000
			enemyEspLabel.TextWrapped = true
		end
	end)
end

if gameName == "Lore Game" then
	function playerEspHandle(character,espType,living,chosenColor)
		if not character.HumanoidRootPart:FindFirstChild("PlayerviewHolder") then
			local playerEspHolder = Instance.new("BillboardGui")
			playerEspHolder.Name = "PlayerviewHolder"
			playerEspHolder.Parent = character.HumanoidRootPart
			playerEspHolder.Active = false
			playerEspHolder.Adornee = character.HumanoidRootPart
			playerEspHolder.AlwaysOnTop = true
			if espType == true then
				playerEspHolder.Enabled = true
			elseif espType == false then
				playerEspHolder.Enabled = false
			end
			playerEspHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
			playerEspHolder.ResetOnSpawn = false
			playerEspHolder.Size = UDim2.new(10, 0, 1, 0)
			playerEspHolder.StudsOffset = Vector3.new(0, 3, 0)
			playerEspHolder.ClipsDescendants = false

			local playerEspLabel = Instance.new("TextLabel")
			playerEspLabel.Name = "PlayerView"
			playerEspLabel.Parent = playerEspHolder
			playerEspLabel.Active = false
			playerEspLabel.BackgroundTransparency = 1.000
			playerEspLabel.Position = UDim2.new(0, 0, 0, 0)
			playerEspLabel.Size = UDim2.new(1, 0, 1, 0)
			playerEspLabel.ZIndex = 5
			playerEspLabel.Font = Enum.Font.SourceSansBold
			playerEspLabel.RichText = true
			playerEspLabel.Text = character.Name
			playerEspLabel.TextColor3 = chosenColor
			playerEspLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			playerEspLabel.TextStrokeTransparency = 0
			playerEspLabel.TextTransparency = 0
			playerEspLabel.TextSize = 14.000
			playerEspLabel.TextScaled = false
			playerEspLabel.TextWrapped = false
		end
		if not character.HumanoidRootPart:FindFirstChild("PlayerhealthHolder") and living then
			local healthBarHolder = Instance.new("BillboardGui")
			healthBarHolder.Name = "PlayerhealthHolder"
			healthBarHolder.Parent = character.HumanoidRootPart
			healthBarHolder.Active = false
			healthBarHolder.Adornee = character.HumanoidRootPart
			healthBarHolder.AlwaysOnTop = true
			if espType == true then
				healthBarHolder.Enabled = true
			elseif espType == false then
				healthBarHolder.Enabled = false
			end
			healthBarHolder.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
			healthBarHolder.ResetOnSpawn = false
			healthBarHolder.Size = UDim2.new(0.75, 0, 3, 0)
			healthBarHolder.SizeOffset = Vector2.new(-4, 0)
			healthBarHolder.ClipsDescendants = false

			local healthBarFrame = Instance.new("Frame")
			healthBarFrame.Name = "HealthBar"
			healthBarFrame.Parent = healthBarHolder
			healthBarFrame.Active = false
			healthBarFrame.BackgroundColor3 = Color3.fromRGB(70, 23, 0)
			healthBarFrame.BackgroundTransparency = 0
			healthBarFrame.BorderSizePixel = 1.000
			healthBarFrame.Position = UDim2.new(0, 0, 0, 0)
			healthBarFrame.Rotation = 180
			healthBarFrame.Size = UDim2.new(1, 0, 1, 0)
			healthBarFrame.ZIndex = 5

			local healthMeterFrame = Instance.new("Frame")
			healthMeterFrame.Name = "HealthMeter"
			healthMeterFrame.Parent = healthBarFrame
			healthMeterFrame.Active = false
			healthMeterFrame.BackgroundColor3 = chosenColor
			healthMeterFrame.BackgroundTransparency = 0
			healthMeterFrame.BorderSizePixel = 0
			healthMeterFrame.Position = UDim2.new(0, 0, 0, 0)
			healthMeterFrame.Rotation = 0
			local CurrentHealth = math.clamp(character.Humanoid.Health / character.Humanoid.MaxHealth, 0, 1)
			healthMeterFrame.Size = UDim2.new(1, 0, CurrentHealth, 0)
			local NewHealth = math.clamp(character.Humanoid.Health / character.Humanoid.MaxHealth, 0, 1)
			local function HealthApply()
				NewHealth = math.clamp(character.Humanoid.Health / character.Humanoid.MaxHealth, 0, 1)
				game.TweenService:Create(healthMeterFrame, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
					Size = UDim2.new(1, 0, NewHealth, 0)
				}):Play()
			end
			character.Humanoid.HealthChanged:connect(HealthApply)
			character.Humanoid:GetPropertyChangedSignal("MaxHealth"):connect(HealthApply)
			HealthApply()
			healthMeterFrame.ZIndex = 5
		end
	end
	game.Workspace.ChildAdded:Connect(function(child)
		if game.Players:FindFirstChild(child.Name) and LocalPlayer.Name ~= child.Name then
			if child:FindFirstChild("Humanoid") and child:FindFirstChild("HumanoidRootPart") then
				playerEspHandle(child,loreplayerEsp,true,Color3.fromRGB(206, 61, 48))
			end
		end
	end)
	for i, childType in pairs(game.Workspace:GetChildren()) do
		if game.Players:FindFirstChild(childType.Name) and LocalPlayer.Name ~= childType.Name then
			if childType:FindFirstChild("Humanoid") and childType:FindFirstChild("HumanoidRootPart") then
				playerEspHandle(childType,loreplayerEsp,true,Color3.fromRGB(206, 61, 48))
			end
		else
			if childType:FindFirstChild("Humanoid") and childType:FindFirstChild("HumanoidRootPart") and not childType:FindFirstChild("StarterCharacter") then
				playerEspHandle(childType,loremobEsp,true,Color3.fromRGB(0, 199, 146))
			end
		end
	end
end

local on = false
local rrspectating
local rroldNamesColors = {}
UserInputService.InputBegan:connect(function(input, gameProcessed)
	if gameProcessed then
		return
	end
	if input.KeyCode == Enum.KeyCode.RightAlt or input.KeyCode == Enum.KeyCode.End then
		if hashiden == false then
			hashiden = true
		end
		HubGui.Enabled = not HubGui.Enabled
		on = HubGui.Enabled
	end
	if input.UserInputType == Enum.UserInputType.MouseButton3 then
		if not LocalPlayer.Character then
			return
		end
		if LocalPlayer.Character then
			local hasTool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
			if hasTool and hasTool.Name == "Artifactus" then
				if CollectionService:HasTag(hasTool, "Used") then
					return
				end
				CollectionService:AddTag(hasTool, "Used")
				task.delay(3.5, function()
					CollectionService:RemoveTag(hasTool, "Used")
				end)
				spawnArtifacts(LocalPlayer.Character)
			end
		end
	end
	if input.UserInputType ~= Enum.UserInputType.MouseButton2  then
		return
	end
	if rogueleaderboardEsp == false then
		return
	end
	if not LocalPlayer:FindFirstChild("PlayerGui") or not LocalPlayer.PlayerGui:FindFirstChild("LeaderboardGui") then
		return
	end

	local leaderboardPlayers = LocalPlayer.PlayerGui.LeaderboardGui.MainFrame.ScrollingFrame:GetChildren()

	local function getHoveredPlayer()
		for i,v in next, leaderboardPlayers do
			if v.TextTransparency ~= 0 then
				return v
			end
		end
	end

	local label = getHoveredPlayer()
	if not label then
		return
	end
	
	local labelTextWithoutSpace = string.gsub(label.Text, "^%s+", "")
	local player = game:GetService("Players"):FindFirstChild(labelTextWithoutSpace:gsub('\226\128\142', ''))
	if not player or not player.Character then
		return
	end

	if player == LocalPlayer then
		rrspectating = player
	end

	for i, v in next, leaderboardPlayers do
		if not rroldNamesColors[v] then
			rroldNamesColors[v] = v.TextColor3
		end

		v.TextColor3 = rroldNamesColors[v]
	end

	if rrspectating ~= player then
		rrspectating = player
		spectatePlayer(player.Name)
		label.TextColor3 = Color3.fromRGB(111, 111, 165)
	else
		rrspectating = nil
		spectatePlayer(LocalPlayer.Name)
	end
end)

local lorecheckingNPCs = false
task.spawn(function()
	task.wait(1)
	while true do
		task.wait(1.75)
		if not game:GetService("CoreGui"):FindFirstChild(HubGui.Name) then
			LocalPlayer:Kick("gui was deleted??")
		end
		if gameName == "Rogue Lineage Copy" then

		end
		if (game.GameId == 4505104344 or game.GameId == 4582120535 or game.GameId == 4602423680) and game.Workspace:FindFirstChild("CapturePoints") then
			--//Forest
			if game.Workspace.CapturePoints.Oresfall.CapturedBy.Value ~= "" then
				ForestCapture.Text = "Forest: <u>"..game.Workspace.CapturePoints.Oresfall.CapturedBy.Value.."</u>"
			else
				ForestCapture.Text = "Forest: <u>No one</u>"
			end
			--//Skycastle
			if game.Workspace.CapturePoints.Skycastle.CapturedBy.Value ~= "" then
				SkycastleCapture.Text = "Skycastle: <u>"..game.Workspace.CapturePoints.Skycastle.CapturedBy.Value.."</u>"
			else
				SkycastleCapture.Text = "Skycastle: <u>No one</u>"
			end
			--//Burial
			if game.Workspace.CapturePoints.Burial.CapturedBy.Value ~= "" then
				BurialCapture.Text = "Burial: <u>"..game.Workspace.CapturePoints.Burial.CapturedBy.Value.."</u>"
			else
				BurialCapture.Text = "Burial: <u>No one</u>"
			end
			--//Shore
			if game.Workspace.CapturePoints.Shore.CapturedBy.Value ~= "" then
				ShoreCapture.Text = "Shore: <u>"..game.Workspace.CapturePoints.Shore.CapturedBy.Value.."</u>"
			else
				ShoreCapture.Text = "Shore: <u>No one</u>"
			end
		end
		if gameName == "VoxlBlade" then
			for i, v in pairs(game.Workspace.NPCS:GetChildren()) do
				if v:FindFirstChild("EnemyviewHolder") then
					if v.Corrupt.Enabled == true or v.Magical.Enabled == true or v.Bloody.Enabled == true or v.Legendary.Enabled == true then
						if v.Corrupt.Enabled == true then
							v.EnemyviewHolder.EnemyView.Text = "Corrupt "..v.Name
							v.EnemyviewHolder.EnemyView.TextColor3 = Color3.fromRGB(140, 0, 255)
							v.EnemyviewHolder.EnemyView.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							v.EnemyviewHolder.EnemyView.TextStrokeTransparency = 0.650
							v.EnemyviewHolder.EnemyView.TextTransparency = 0.250
						elseif v.Magical.Enabled == true then
							v.EnemyviewHolder.EnemyView.Text = "Magical "..v.Name
							v.EnemyviewHolder.EnemyView.TextColor3 = Color3.fromRGB(105, 228, 255)
							v.EnemyviewHolder.EnemyView.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							v.EnemyviewHolder.EnemyView.TextStrokeTransparency = 0.650
							v.EnemyviewHolder.EnemyView.TextTransparency = 0.250
						elseif v.Bloody.Enabled == true then
							v.EnemyviewHolder.EnemyView.Text = "Bloody "..v.Name
							v.EnemyviewHolder.EnemyView.TextColor3 = Color3.fromRGB(255, 29, 29)
							v.EnemyviewHolder.EnemyView.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							v.EnemyviewHolder.EnemyView.TextStrokeTransparency = 0.650
							v.EnemyviewHolder.EnemyView.TextTransparency = 0.250
						elseif v.Legendary.Enabled == true then
							v.EnemyviewHolder.EnemyView.Text = "Legendary "..v.Name
							v.EnemyviewHolder.EnemyView.TextColor3 = Color3.fromRGB(237, 255, 70)
							v.EnemyviewHolder.EnemyView.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
							v.EnemyviewHolder.EnemyView.TextStrokeTransparency = 0.650
							v.EnemyviewHolder.EnemyView.TextTransparency = 0.250
						end
					elseif string.find(v.Name,"Easter") then
						v.EnemyviewHolder.EnemyView.Text = v.Name
						v.EnemyviewHolder.EnemyView.TextColor3 = Color3.fromRGB(212, 144, 189)
						v.EnemyviewHolder.EnemyView.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
						v.EnemyviewHolder.EnemyView.TextStrokeTransparency = 0.650
						v.EnemyviewHolder.EnemyView.TextTransparency = 0.250
					else
						v.EnemyviewHolder.EnemyView.Text = v.Name
						v.EnemyviewHolder.EnemyView.TextColor3 = Color3.fromRGB(255, 255, 255)
						v.EnemyviewHolder.EnemyView.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
						v.EnemyviewHolder.EnemyView.TextStrokeTransparency = 0.900
						v.EnemyviewHolder.EnemyView.TextTransparency = 0.100
					end
					v.EnemyviewHolder.EnemyView.TextSize = 15.000
					v.EnemyviewHolder.EnemyView.TextWrapped = true
				end
			end
		end
		if gameName == "Lore Game" then
			for i, childType in pairs(game.Workspace:GetChildren()) do
				if game.Players:FindFirstChild(childType.Name) and LocalPlayer.Name ~= childType.Name then
					if childType:FindFirstChild("Humanoid") and childType:FindFirstChild("HumanoidRootPart") then
						playerEspHandle(childType,loreplayerEsp,true,Color3.fromRGB(206, 61, 48))
					end
				else
					if childType:FindFirstChild("Humanoid") and childType:FindFirstChild("HumanoidRootPart") and not childType:FindFirstChild("StarterCharacter") then
						playerEspHandle(childType,loremobEsp,true,Color3.fromRGB(0, 199, 146))
					end
				end
			end
			for i, npcType in pairs(game.Workspace.map.NPC:GetDescendants()) do
				if npcType:IsA("Model") and npcType.Parent:IsA("Folder") and npcType.Parent.Parent.Name == "NPC" then
					if npcType:FindFirstChild("Humanoid") and npcType:FindFirstChild("HumanoidRootPart") and npcType:FindFirstChild("Body Colors") then
						if not lorecheckingNPCs then
							lorecheckingNPCs = true
							npcType.ChildAdded:Connect(function(child)
								playerEspHandle(npcType,lorenpcEsp,false,Color3.fromRGB(139, 139, 207))
							end)
						else
							playerEspHandle(npcType,lorenpcEsp,false,Color3.fromRGB(139, 139, 207))
						end
					end
				end
			end
		end
	end
end)
-- Scripts:

--[[local function Draggable1() -- Hold.Drag 
	local script = Instance.new('LocalScript', MainDragFrame)

end
coroutine.wrap(Draggable1)()]]
