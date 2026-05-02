

--[[
    Key System UI - Compact Version
    Fixed size: smaller, tighter layout
--]]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

--// CONFIGURATION
local CONFIG = {
    MainColor = Color3.fromRGB(15, 15, 20),
    SecondaryColor = Color3.fromRGB(25, 25, 32),
    AccentColor = Color3.fromRGB(157, 78, 255),
    TextColor = Color3.fromRGB(240, 240, 240),
    SubTextColor = Color3.fromRGB(180, 180, 190),
    StrokeColor = Color3.fromRGB(55, 55, 65),
    ShadowColor = Color3.fromRGB(0, 0, 0),
    CornerRadius = UDim.new(0, 12),
    ButtonCornerRadius = UDim.new(0, 8),
    TweenSpeed = 0.25,
    EasingStyle = Enum.EasingStyle.Quart,
    EasingDirection = Enum.EasingDirection.Out
}

--// SETTINGS
local DISCORD_LINK = "https://discord.gg/xTSWM7Jh8"
local VALID_KEYS = {"ArchiveHubKey", "NewMember"}

--// UTILITY FUNCTIONS
local function createTween(instance, properties, duration)
    local tweenInfo = TweenInfo.new(duration or CONFIG.TweenSpeed, CONFIG.EasingStyle, CONFIG.EasingDirection)
    local tween = TweenService:Create(instance, tweenInfo, properties)
    tween:Play()
    return tween
end

local function createUICorner(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = radius or CONFIG.CornerRadius
    corner.Parent = parent
    return corner
end

local function createUIStroke(parent, color, thickness)
    local stroke = Instance.new("UIStroke")
    stroke.Color = color or CONFIG.StrokeColor
    stroke.Thickness = thickness or 1
    stroke.Parent = parent
    return stroke
end

local function createShadow(parent)
    local shadow = Instance.new("ImageLabel")
    shadow.Name = "Shadow"
    shadow.BackgroundTransparency = 1
    shadow.Image = "rbxassetid://1316045217"
    shadow.ImageColor3 = CONFIG.ShadowColor
    shadow.ImageTransparency = 0.6
    shadow.ScaleType = Enum.ScaleType.Slice
    shadow.SliceCenter = Rect.new(10, 10, 118, 118)
    shadow.Size = UDim2.new(1, 30, 1, 30)
    shadow.Position = UDim2.new(0, -15, 0, -15)
    shadow.ZIndex = parent.ZIndex - 1
    shadow.Parent = parent
    return shadow
end

local function makeDraggable(frame, handle)
    handle = handle or frame
    local dragging = false
    local dragInput, dragStart, startPos

    handle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)

    handle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

--// MAIN UI CREATION
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KeySystemUI"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

-- COMPACT SIZE: 340 x 205
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 340, 0, 205)
mainFrame.Position = UDim2.new(0.5, -170, 0.5, -102)
mainFrame.BackgroundColor3 = CONFIG.MainColor
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = false
mainFrame.ZIndex = 10
mainFrame.Parent = screenGui

createUICorner(mainFrame)
createUIStroke(mainFrame)

-- Outer Glow
local outerGlow = Instance.new("ImageLabel")
outerGlow.Name = "OuterGlow"
outerGlow.Size = UDim2.new(1, 60, 1, 60)
outerGlow.Position = UDim2.new(0, -30, 0, -30)
outerGlow.BackgroundTransparency = 1
outerGlow.Image = "rbxassetid://1316045217"
outerGlow.ImageColor3 = Color3.fromRGB(180, 180, 255)
outerGlow.ImageTransparency = 0.92
outerGlow.ScaleType = Enum.ScaleType.Slice
outerGlow.SliceCenter = Rect.new(10, 10, 118, 118)
outerGlow.ZIndex = 8
outerGlow.Parent = mainFrame

createShadow(mainFrame)

--// TOP BAR
local topBar = Instance.new("Frame")
topBar.Name = "TopBar"
topBar.Size = UDim2.new(1, 0, 0, 40)
topBar.BackgroundColor3 = CONFIG.MainColor
topBar.BorderSizePixel = 0
topBar.ZIndex = 11
topBar.Parent = mainFrame

createUICorner(topBar, CONFIG.CornerRadius)

local topBarFix = Instance.new("Frame")
topBarFix.Name = "CornerFix"
topBarFix.Size = UDim2.new(1, 0, 0, 12)
topBarFix.Position = UDim2.new(0, 0, 1, -12)
topBarFix.BackgroundColor3 = topBar.BackgroundColor3
topBarFix.BorderSizePixel = 0
topBarFix.ZIndex = 11
topBarFix.Parent = topBar

-- Title Container
local titleContainer = Instance.new("Frame")
titleContainer.Size = UDim2.new(1, -90, 1, 0)
titleContainer.Position = UDim2.new(0, 14, 0, 0)
titleContainer.BackgroundTransparency = 1
titleContainer.ZIndex = 12
titleContainer.Parent = topBar

local titleLayout = Instance.new("UIListLayout")
titleLayout.FillDirection = Enum.FillDirection.Horizontal
titleLayout.SortOrder = Enum.SortOrder.LayoutOrder
titleLayout.VerticalAlignment = Enum.VerticalAlignment.Center
titleLayout.Padding = UDim.new(0, 8)
titleLayout.Parent = titleContainer

-- Purple Title
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.AutomaticSize = Enum.AutomaticSize.X
titleLabel.Size = UDim2.new(0, 0, 0, 20)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "ArchiveHub Key System"
titleLabel.TextColor3 = Color3.fromRGB(177, 125, 255)
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.GothamBlack
titleLabel.ZIndex = 12
titleLabel.Parent = titleContainer

-- Animated Ping Dot
local pingDot = Instance.new("Frame")
pingDot.Name = "PingDot"
pingDot.Size = UDim2.new(0, 7, 0, 7)
pingDot.BackgroundColor3 = Color3.fromRGB(200, 150, 255)
pingDot.BorderSizePixel = 0
pingDot.ZIndex = 12
pingDot.Parent = titleContainer
createUICorner(pingDot, UDim.new(1, 0))

task.spawn(function()
    while true do
        createTween(pingDot, {BackgroundTransparency = 0.2, Size = UDim2.new(0, 9, 0, 9)}, 0.6)
        task.wait(0.6)
        createTween(pingDot, {BackgroundTransparency = 1, Size = UDim2.new(0, 12, 0, 12)}, 0.6)
        task.wait(0.6)
    end
end)

-- Minimize Button
local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Name = "MinimizeBtn"
minimizeBtn.Size = UDim2.new(0, 30, 0, 30)
minimizeBtn.Position = UDim2.new(1, -70, 0.5, -15)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
minimizeBtn.Text = "-"
minimizeBtn.TextColor3 = CONFIG.TextColor
minimizeBtn.TextSize = 18
minimizeBtn.Font = Enum.Font.GothamBold
minimizeBtn.ZIndex = 12
minimizeBtn.Parent = topBar
createUICorner(minimizeBtn, CONFIG.ButtonCornerRadius)
createUIStroke(minimizeBtn)

-- Close Button
local closeBtn = Instance.new("TextButton")
closeBtn.Name = "CloseBtn"
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -36, 0.5, -15)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
closeBtn.Text = "×"
closeBtn.TextColor3 = CONFIG.TextColor
closeBtn.TextSize = 18
closeBtn.Font = Enum.Font.GothamBold
closeBtn.ZIndex = 12
closeBtn.Parent = topBar
createUICorner(closeBtn, CONFIG.ButtonCornerRadius)

--// CONTENT FRAME
local contentFrame = Instance.new("Frame")
contentFrame.Name = "ContentFrame"
contentFrame.Size = UDim2.new(1, -24, 1, -52)
contentFrame.Position = UDim2.new(0, 12, 0, 46)
contentFrame.BackgroundTransparency = 1
contentFrame.ZIndex = 10
contentFrame.Parent = mainFrame

-- Subtitle
local subtitle = Instance.new("TextLabel")
subtitle.Name = "Subtitle"
subtitle.Size = UDim2.new(1, 0, 0, 18)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Enter your access key below"
subtitle.TextColor3 = CONFIG.SubTextColor
subtitle.TextSize = 12
subtitle.Font = Enum.Font.Gotham
subtitle.ZIndex = 12
subtitle.Parent = contentFrame

--// KEY INPUT BOX
local keyFrame = Instance.new("Frame")
keyFrame.Name = "KeyFrame"
keyFrame.Size = UDim2.new(1, 0, 0, 34)
keyFrame.Position = UDim2.new(0, 0, 0, 22)
keyFrame.BackgroundColor3 = CONFIG.SecondaryColor
keyFrame.BorderSizePixel = 0
keyFrame.ZIndex = 11
keyFrame.Parent = contentFrame

createUICorner(keyFrame, UDim.new(0, 8))
createUIStroke(keyFrame, Color3.fromRGB(60, 60, 75), 1)

local keyBox = Instance.new("TextBox")
keyBox.Name = "KeyBox"
keyBox.Size = UDim2.new(1, -16, 1, -4)
keyBox.Position = UDim2.new(0, 8, 0, 2)
keyBox.BackgroundTransparency = 1
keyBox.Text = ""
keyBox.PlaceholderText = "Enter key..."
keyBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 115)
keyBox.TextColor3 = CONFIG.TextColor
keyBox.TextSize = 13
keyBox.Font = Enum.Font.Gotham
keyBox.ClearTextOnFocus = false
keyBox.ZIndex = 12
keyBox.Parent = keyFrame

--// BUTTONS CONTAINER
local buttonsFrame = Instance.new("Frame")
buttonsFrame.Name = "ButtonsFrame"
buttonsFrame.Size = UDim2.new(1, 0, 0, 32)
buttonsFrame.Position = UDim2.new(0, 0, 0, 64)
buttonsFrame.BackgroundTransparency = 1
buttonsFrame.ZIndex = 11
buttonsFrame.Parent = contentFrame

local buttonsLayout = Instance.new("UIListLayout")
buttonsLayout.FillDirection = Enum.FillDirection.Horizontal
buttonsLayout.SortOrder = Enum.SortOrder.LayoutOrder
buttonsLayout.Padding = UDim.new(0, 8)
buttonsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
buttonsLayout.Parent = buttonsFrame

--// CHECK KEY BUTTON
local checkBtn = Instance.new("TextButton")
checkBtn.Name = "CheckBtn"
checkBtn.Size = UDim2.new(0, 100, 1, 0)
checkBtn.BackgroundColor3 = CONFIG.AccentColor
checkBtn.Text = "Check Key"
checkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
checkBtn.TextSize = 13
checkBtn.Font = Enum.Font.GothamBold
checkBtn.ZIndex = 12
checkBtn.Parent = buttonsFrame
createUICorner(checkBtn, CONFIG.ButtonCornerRadius)

--// COPY DISCORD BUTTON (PURPLE)
local copyBtn = Instance.new("TextButton")
copyBtn.Name = "CopyBtn"
copyBtn.Size = UDim2.new(0, 120, 1, 0)
copyBtn.BackgroundColor3 = Color3.fromRGB(140, 70, 255)
copyBtn.Text = "Copy Discord"
copyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
copyBtn.TextSize = 13
copyBtn.Font = Enum.Font.GothamBold
copyBtn.ZIndex = 12
copyBtn.Parent = buttonsFrame
createUICorner(copyBtn, CONFIG.ButtonCornerRadius)
createUIStroke(copyBtn, Color3.fromRGB(180, 120, 255), 1)

--// STATUS LABEL
local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "Status"
statusLabel.Size = UDim2.new(1, 0, 0, 18)
statusLabel.Position = UDim2.new(0, 0, 0, 102)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = ""
statusLabel.TextColor3 = CONFIG.SubTextColor
statusLabel.TextSize = 12
statusLabel.Font = Enum.Font.GothamSemibold
statusLabel.ZIndex = 12
statusLabel.Parent = contentFrame

--// FUNCTIONALITY
local function setStatus(text, color)
    statusLabel.Text = text
    statusLabel.TextColor3 = color or CONFIG.SubTextColor
end

-- Check Button Hover
checkBtn.MouseEnter:Connect(function()
    createTween(checkBtn, {BackgroundColor3 = Color3.fromRGB(180, 110, 255)}, 0.15)
end)
checkBtn.MouseLeave:Connect(function()
    createTween(checkBtn, {BackgroundColor3 = CONFIG.AccentColor}, 0.15)
end)

-- Check Key Logic
checkBtn.MouseButton1Click:Connect(function()
    createTween(checkBtn, {BackgroundColor3 = Color3.fromRGB(120, 50, 220)}, 0.1)
    task.delay(0.1, function()
        createTween(checkBtn, {BackgroundColor3 = CONFIG.AccentColor}, 0.2)
    end)

    local key = keyBox.Text:gsub("%s+", "")
    if key == "" then
        setStatus("Please enter a key!", Color3.fromRGB(255, 100, 100))
        return
    end

    local valid = false
    for _, k in ipairs(VALID_KEYS) do
        if key:lower() == k:lower() then
            valid = true
            break
        end
    end

    if valid then
        setStatus("Key accepted! Loading...", Color3.fromRGB(100, 255, 150))
        task.wait(1)
        createTween(mainFrame, {Size = UDim2.new(0, 340, 0, 0)}, 0.3)
        task.wait(0.3)
        screenGui:Destroy()
        local SupportedGameID = 77747658251236
local SecretToken = "8f2d-a4e1-9c7b-662f-0e41-b9d3-5a72"

-- Check if the Game ID matches
if game.PlaceId ~= SupportedGameID then
    -- If the game is NOT supported, kick the player
    game:GetService("Players").LocalPlayer:Kick("Not Supported")
    return
end

-- If the code reaches here, the game IS supported
print("Game Supported! Initializing Key System...")

-- [Your Key System UI Logic goes here]

-- After they pass the key, run the main script:
local mainScript = loadstring(game:HttpGet("https://raw.githubusercontent.com/ErrorLovesBugs/ArchiveHub/refs/heads/main/SailorPiece.lua"))
mainScript(SecretToken)
        print("[Key System] Access granted!")
    else
        setStatus("Invalid key! Try again.", Color3.fromRGB(255, 80, 80))
    end
end)

-- Copy Button Hover
copyBtn.MouseEnter:Connect(function()
    createTween(copyBtn, {BackgroundColor3 = Color3.fromRGB(170, 100, 255)}, 0.15)
end)
copyBtn.MouseLeave:Connect(function()
    createTween(copyBtn, {BackgroundColor3 = Color3.fromRGB(140, 70, 255)}, 0.15)
end)

-- Copy Discord Logic
copyBtn.MouseButton1Click:Connect(function()
    createTween(copyBtn, {BackgroundColor3 = Color3.fromRGB(120, 50, 220)}, 0.1)
    task.delay(0.1, function()
        createTween(copyBtn, {BackgroundColor3 = Color3.fromRGB(140, 70, 255)}, 0.2)
    end)

    if setclipboard then
        pcall(setclipboard, DISCORD_LINK)
    end
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Key System",
        Text = "Discord link copied to clipboard!",
        Duration = 3
    })
    setStatus("Discord link copied!", Color3.fromRGB(150, 255, 150))
end)

--// MINIMIZE LOGIC
local isMinimized = false
minimizeBtn.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        minimizeBtn.Text = "+"
        createTween(contentFrame, {Size = UDim2.new(1, -24, 0, 0)}, 0.3)
        createTween(mainFrame, {Size = UDim2.new(0, 340, 0, 40)}, 0.3)
        task.delay(0.3, function() contentFrame.Visible = false end)
    else
        minimizeBtn.Text = "-"
        contentFrame.Visible = true
        createTween(contentFrame, {Size = UDim2.new(1, -24, 1, -52)}, 0.3)
        createTween(mainFrame, {Size = UDim2.new(0, 340, 0, 205)}, 0.3)
    end
end)

--// CLOSE LOGIC
closeBtn.MouseButton1Click:Connect(function()
    createTween(mainFrame, {Position = UDim2.new(mainFrame.Position.X.Scale, mainFrame.Position.X.Offset, 1.2, 0)}, 0.3)
    task.wait(0.3)
    screenGui:Destroy()
end)

--// DRAGGING
makeDraggable(mainFrame, topBar)

--// INTRO ANIMATION
mainFrame.Size = UDim2.new(0, 340, 0, 0)
mainFrame.Position = UDim2.new(0.5, -170, 0.5, -102)

task.delay(0.2, function()
    createTween(mainFrame, {Size = UDim2.new(0, 340, 0, 205)}, 0.4)
end)

print("🔐 Key System loaded!")
task.wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/ErrorLovesBugs/ArchiveHub/refs/heads/main/PL_DETECT.ua"))()
