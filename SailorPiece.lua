local passedToken = ...
if passedToken ~= "8f2d-a4e1-9c7b-662f-0e41-b9d3-5a72" then
    game:GetService("Players").LocalPlayer:Kick("Unauthorized")
    return
end


-- Your Actual Script Content:
print("Authenticated. Enjoy!")

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Stats = game:GetService("Stats")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

--// CONFIGURATION
local CONFIG = {
    MainColor = Color3.fromRGB(15, 15, 20),
    SecondaryColor = Color3.fromRGB(15, 15, 20),
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

local GAMEPASS_ID = "1818667088"
local SCRIPT_VERSION = "v1.0.4"

--// SCRIPT DATA
local SCRIPTS = {
    {
        name = "Lumin Hub",
        description = "Key required",
        keyType = "key",
        isBest = true,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("http://luminon.top/loader.lua"))()
        end
    },
        {
        name = "Hybrid Hub",
        description = "Keyless",
        keyType = "keyless",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/HybridE3/HybridE3/refs/heads/main/Sailor%20Piece"))()
        end
    },
    {
        name = "Express Hub",
        description = "Keyless",
        keyType = "keyless",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua"))()
        end
    },
    {
        name = "Void Hub",
        description = "Keyless",
        keyType = "keyless",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidDeveloper67/Void-Hub/refs/heads/main/VoidHub.lua", true))()
        end
    },
    {
        name = "Zen Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Itz-Npg/Roblox-Script/main/mainloader.lua", true))()
        end
    },
    {
        name = "Arvyn Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Itz-Npg/Roblox-Script/main/mainloader.lua", true))()
        end
    },
    {
        name = "Mola Hub",
        description = "Keyless",
        keyType = "keyless",
        isBest = true,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Andrazx23/molahub/refs/heads/main/main.lua"))()
        end
    },
    {
        name = "Next Hub",
        description = "Keyless",
        keyType = "keyless",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://nexthub-script.up.railway.app/script/loader.lua"))()
        end
    },
    {
        name = "Nix Hub",
        description = "Keyless",
        keyType = "keyless",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/kirsia-dev/NixHub/refs/heads/main/loader.luau"))()
        end
    },
    {
        name = "Ajjans Hub",
        description = "Keyless",
        keyType = "keyless",
        isBest = true,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/3fcb385d3c782d11837cb680ae2a3ea4.lua"))()
        end
    },
    {
        name = "Midgard Hub",
        description = "Keyless",
        keyType = "keyless",
        isBest = true,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/matheusmerigo/midgard/refs/heads/main/sailorpiece-main.lua"))()
        end
    },
    {
        name = "Polluted hub",
        description = "Keyless",
        keyType = "keyless",
        isBest = true,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/b1f30331e1af9ab6e96fc80cd00b20a9.lua"))()
        end
    },
    {
        name = "NS hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/sh/refs/heads/main/a"))()
        end
    },
    {
        name = "Rc hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://vss.pandadevelopment.net/virtual/file/2768ea6419cb4d73"))()
        end
    },
    {
        name = "Axel hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/lostinnowheres/Loader/refs/heads/main/Loader.Lua"))()
        end
    },
    {
        name = "Taolao Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/52d7bb3829a25a2f9b476d1eb84c8d1d4271fda532b61574b926dd7cd2e9d3e9/download"))()
        end
    },
    {
        name = "Lume Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dusadeephenginx-sudo/roblox/main/uploads/sailor.lua"))()
        end
    },
    {
        name = "Aeonic Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/mazino45/main/refs/heads/main/MainScript.lua"))()
        end
    },
    {
        name = "IMP Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34824c86db1eba5e5e39c7c2d6d7fdfe.lua"))()
        end
    },
    {
        name = "OMG Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
        end
    },
    {
        name = "Trigon Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://scripts.projectsindex.space/"))()
        end
    },
    {
        name = "Lucid Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/b7fcc785d0e8ed057192db5f7827f773dac5022059958fe6c503bf95cc8e76ff/download"))()
        end
    },
    {
        name = "Dead Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DeadScripter/Deadhub/refs/heads/main/DeadLoader.lua"))()
        end
    },
    {
        name = "Solix Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/meobeo8/a/a/a"))()
        end
    },
    {
        name = "Alchemy Hub",
        description = "Key required",
        keyType = "key",
        isBest = true,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://getalchemy.net/r"))()
        end
    },
    {
        name = "Wis Hub",
        description = "Keyless",
        keyType = "keyless",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dy1zn4t/WisHubX/refs/heads/main/loader"))()
        end
    },
    {
        name = "Rift Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://rifton.top/loader.lua"))()
        end
    },
    {
        name = "Glua Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/gevriel66/Gev/refs/heads/main/GTrial.lua"))()
        end
    },
    {
        name = "Nicuse Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://loader.nicuse.xyz"))()
        end
    },
    {
        name = "Twvz Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ZhangJunZ84/twvzyyds/refs/heads/main/sailorpiece.lua"))()
        end
    },
    {
        name = "Vora Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Andrazx23/vorahub/refs/heads/main/SailorPiece.lua"))()
        end
    },
    {
        name = "Chiyo Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
        end
    },
    {
        name = "Spectrum Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/xZPUHigh/Spectrum-Cloud/main/Loader.lua'))()
        end
    },
    {
        name = "Airflow Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://airflowscript.com/loader"))()
        end
    },
    {
        name = "Speed Hub",
        description = "Key required",
        keyType = "key",
        isBest = true,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
        end
    },
    {
        name = "Nemesis Hub",
        description = "Key required",
        keyType = "key",
        isBest = true,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/x2zu/loader/main/freeloader.lua", true))()
        end
    },
    {
        name = "Sondubai Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/canhongson/CanHongSon/refs/heads/main/loader.lua"))()
        end
    },
    {
        name = "Copernix Hub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://gitlab.com/phantomreal1/CopernixHub/-/raw/main/api.lua?ref_type=heads"))()
        end
    },
    {
        name = "Atherhub",
        description = "Key required",
        keyType = "key",
        isBest = false,
        isOutdated = true,
        code = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))()
        end
    },
    {
        name = "Forge Hub",
        description = "Keyless",
        keyType = "keyless",
        isBest = true,
        isOutdated = false,
        code = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d5ed1fbd4301b1d18d75153c5b47181d.lua"))()
        end
    }
}

--// UTILITY FUNCTIONS
local function createTween(instance, properties, duration)
    local tweenInfo = TweenInfo.new(
        duration or CONFIG.TweenSpeed,
        CONFIG.EasingStyle,
        CONFIG.EasingDirection
    )
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

--// DRAGGABLE FUNCTION
local function makeDraggable(frame, handle)
    handle = handle or frame
    local dragging = false
    local dragInput, dragStart, startPos

    handle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or 
           input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    handle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or 
           input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                startPos.X.Scale, 
                startPos.X.Offset + delta.X,
                startPos.Y.Scale, 
                startPos.Y.Offset + delta.Y
            )
        end
    end)
end

--// MAIN UI CREATION
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AchieveHubUI"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 380, 0, 460)
mainFrame.Position = UDim2.new(0.5, -190, 0.5, -230)
mainFrame.BackgroundColor3 = CONFIG.MainColor
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = false
mainFrame.ZIndex = 10
mainFrame.Parent = screenGui

createUICorner(mainFrame)
createUIStroke(mainFrame)

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

-- Top Bar
local topBar = Instance.new("Frame")
topBar.Name = "TopBar"
topBar.Size = UDim2.new(1, 0, 0, 44)
topBar.BackgroundColor3 = CONFIG.SecondaryColor
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
titleContainer.Name = "TitleContainer"
titleContainer.Size = UDim2.new(1, -100, 1, 0)
titleContainer.Position = UDim2.new(0, 16, 0, 0)
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
titleLabel.Size = UDim2.new(0, 0, 0, 22)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "ArchiveHub|Sailorpiece "
titleLabel.TextColor3 = Color3.fromRGB(177, 125, 255)
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.GothamBlack
titleLabel.ZIndex = 12
titleLabel.Parent = titleContainer

-- Ping dot
local pingDot = Instance.new("Frame")
pingDot.Name = "PingDot"
pingDot.Size = UDim2.new(0, 8, 0, 8)
pingDot.BackgroundColor3 = Color3.fromRGB(200, 150, 255)
pingDot.BorderSizePixel = 0
pingDot.ZIndex = 12
pingDot.Parent = titleContainer
createUICorner(pingDot, UDim.new(1, 0))

task.spawn(function()
    while true do
        createTween(pingDot, {BackgroundTransparency = 0.2, Size = UDim2.new(0, 10, 0, 10)}, 0.6)
        task.wait(0.6)
        createTween(pingDot, {BackgroundTransparency = 1, Size = UDim2.new(0, 14, 0, 14)}, 0.6)
        task.wait(0.6)
    end
end)

-- Discord copy button
local discordBtn = Instance.new("TextButton")
discordBtn.Name = "DiscordBtn"
discordBtn.Size = UDim2.new(0, 38, 0, 20)
discordBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 75)
discordBtn.Text = "copy"
discordBtn.TextColor3 = Color3.fromRGB(220, 220, 255)
discordBtn.TextSize = 10
discordBtn.Font = Enum.Font.GothamBold
discordBtn.ZIndex = 12
discordBtn.Parent = titleContainer

createUICorner(discordBtn, UDim.new(0, 4))
createUIStroke(discordBtn, Color3.fromRGB(80, 80, 120), 1)

discordBtn.MouseEnter:Connect(function()
    createTween(discordBtn, {BackgroundColor3 = Color3.fromRGB(70, 70, 105)}, 0.15)
end)
discordBtn.MouseLeave:Connect(function()
    createTween(discordBtn, {BackgroundColor3 = Color3.fromRGB(50, 50, 75)}, 0.15)
end)

discordBtn.MouseButton1Click:Connect(function()
    local link = "https://discord.gg/TzJTyKpjg"
    if setclipboard then
        pcall(setclipboard, link)
    end
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Archive Hub - Sailor piece",
        Text = "Discord link copied to clipboard!",
        Duration = 3
    })
end)

-- Minimize Button
local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Name = "MinimizeBtn"
minimizeBtn.Size = UDim2.new(0, 32, 0, 32)
minimizeBtn.Position = UDim2.new(1, -76, 0.5, -16)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
minimizeBtn.Text = "-"
minimizeBtn.TextColor3 = CONFIG.TextColor
minimizeBtn.TextSize = 20
minimizeBtn.Font = Enum.Font.GothamBold
minimizeBtn.ZIndex = 12
minimizeBtn.Parent = topBar

createUICorner(minimizeBtn, CONFIG.ButtonCornerRadius)
createUIStroke(minimizeBtn)

-- Close Button
local closeBtn = Instance.new("TextButton")
closeBtn.Name = "CloseBtn"
closeBtn.Size = UDim2.new(0, 32, 0, 32)
closeBtn.Position = UDim2.new(1, -40, 0.5, -16)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
closeBtn.Text = "×"
closeBtn.TextColor3 = CONFIG.TextColor
closeBtn.TextSize = 20
closeBtn.Font = Enum.Font.GothamBold
closeBtn.ZIndex = 12
closeBtn.Parent = topBar

createUICorner(closeBtn, CONFIG.ButtonCornerRadius)

-- Content Frame
local contentFrame = Instance.new("Frame")
contentFrame.Name = "ContentFrame"
contentFrame.Size = UDim2.new(1, -24, 1, -100)
contentFrame.Position = UDim2.new(0, 12, 0, 50)
contentFrame.BackgroundTransparency = 1
contentFrame.ZIndex = 10
contentFrame.Parent = mainFrame

--// SEARCH BAR
local searchFrame = Instance.new("Frame")
searchFrame.Name = "SearchFrame"
searchFrame.Size = UDim2.new(1, 0, 0, 32)
searchFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 32)
searchFrame.BorderSizePixel = 0
searchFrame.ZIndex = 11
searchFrame.Parent = contentFrame

createUICorner(searchFrame, UDim.new(0, 8))
createUIStroke(searchFrame, Color3.fromRGB(60, 60, 75), 1)

local searchIcon = Instance.new("TextLabel")
searchIcon.Name = "SearchIcon"
searchIcon.Size = UDim2.new(0, 28, 1, 0)
searchIcon.Position = UDim2.new(0, 8, 0, 0)
searchIcon.BackgroundTransparency = 1
searchIcon.Text = "🔍"
searchIcon.TextColor3 = CONFIG.SubTextColor
searchIcon.TextSize = 14
searchIcon.Font = Enum.Font.Gotham
searchIcon.ZIndex = 12
searchIcon.Parent = searchFrame

local searchBox = Instance.new("TextBox")
searchBox.Name = "SearchBox"
searchBox.Size = UDim2.new(1, -44, 1, -4)
searchBox.Position = UDim2.new(0, 36, 0, 2)
searchBox.BackgroundTransparency = 1
searchBox.Text = ""
searchBox.PlaceholderText = "Search scripts..."
searchBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 115)
searchBox.TextColor3 = CONFIG.TextColor
searchBox.TextSize = 13
searchBox.Font = Enum.Font.Gotham
searchBox.ClearTextOnFocus = false
searchBox.ZIndex = 12
searchBox.Parent = searchFrame

--// FILTER BAR
local filterFrame = Instance.new("Frame")
filterFrame.Name = "FilterFrame"
filterFrame.Size = UDim2.new(1, 0, 0, 36)
filterFrame.Position = UDim2.new(0, 0, 0, 38)
filterFrame.BackgroundTransparency = 1
filterFrame.ZIndex = 10
filterFrame.Parent = contentFrame

local filterLayout = Instance.new("UIListLayout")
filterLayout.FillDirection = Enum.FillDirection.Horizontal
filterLayout.SortOrder = Enum.SortOrder.LayoutOrder
filterLayout.Padding = UDim.new(0, 6)
filterLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
filterLayout.Parent = filterFrame

local createdButtons = {}
local activeFilter = "all"
local searchQuery = ""

local function matchesSearch(scriptName, query)
    if query == "" then return true end
    return string.find(string.lower(scriptName), string.lower(query), 1, true) ~= nil
end

local function applyFilter(filterType, query)
    activeFilter = filterType
    searchQuery = query or searchBox.Text or ""
    
    for _, data in ipairs(createdButtons) do
        local matchesFilter = false
        
        if filterType == "all" then
            matchesFilter = true
        elseif filterType == "key" and data.keyType == "key" then
            matchesFilter = true
        elseif filterType == "keyless" and data.keyType == "keyless" then
            matchesFilter = true
        elseif filterType == "best" and data.isBest then
            matchesFilter = true
        end
        
        local matchesSearchText = matchesSearch(data.name, searchQuery)
        data.frame.Visible = matchesFilter and matchesSearchText
    end
end

local function createFilterButton(name, filterType)
    local btn = Instance.new("TextButton")
    btn.Name = name .. "Filter"
    btn.Size = UDim2.new(0, 72, 1, 0)
    btn.BackgroundColor3 = (filterType == "all") and CONFIG.AccentColor or CONFIG.SecondaryColor
    btn.Text = name
    btn.TextColor3 = CONFIG.TextColor
    btn.TextSize = 13
    btn.Font = Enum.Font.GothamSemibold
    btn.ZIndex = 11
    btn.Parent = filterFrame

    createUICorner(btn, CONFIG.ButtonCornerRadius)
    createUIStroke(btn)

    btn.MouseButton1Click:Connect(function()
        for _, child in ipairs(filterFrame:GetChildren()) do
            if child:IsA("TextButton") then
                createTween(child, {BackgroundColor3 = CONFIG.SecondaryColor}, 0.15)
            end
        end
        createTween(btn, {BackgroundColor3 = CONFIG.AccentColor}, 0.15)
        applyFilter(filterType)
    end)

    return btn
end

createFilterButton("All", "all")
createFilterButton("Key", "key")
createFilterButton("Keyless", "keyless")
createFilterButton("Best", "best")

-- Search typing logic
searchBox:GetPropertyChangedSignal("Text"):Connect(function()
    applyFilter(activeFilter, searchBox.Text)
end)

--// SCROLLING SCRIPTS LIST (FIXED - NO OVERFLOW)
local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Name = "ScrollFrame"
scrollFrame.Size = UDim2.new(1, 0, 1, -80)
scrollFrame.Position = UDim2.new(0, 0, 0, 78)
scrollFrame.BackgroundTransparency = 1
scrollFrame.BorderSizePixel = 0
scrollFrame.ScrollBarThickness = 4
scrollFrame.ScrollBarImageColor3 = CONFIG.AccentColor
scrollBarImageTransparency = 0.3
scrollFrame.ScrollingDirection = Enum.ScrollingDirection.Y
scrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollFrame.ClipsDescendants = true
scrollFrame.ZIndex = 10
scrollFrame.Parent = contentFrame

local listLayout = Instance.new("UIListLayout")
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding = UDim.new(0, 10)
listLayout.Parent = scrollFrame

local scrollPadding = Instance.new("UIPadding")
scrollPadding.PaddingTop = UDim.new(0, 4)
scrollPadding.PaddingBottom = UDim.new(0, 12)
scrollPadding.PaddingLeft = UDim.new(0, 4)
scrollPadding.PaddingRight = UDim.new(0, 4)
scrollPadding.Parent = scrollFrame

--// CREATE SCRIPT BUTTON WITH BADGES
local function createScriptButton(data)
    local buttonFrame = Instance.new("Frame")
    buttonFrame.Name = data.name .. "Frame"
    buttonFrame.Size = UDim2.new(1, 0, 0, 64)
    buttonFrame.BackgroundColor3 = CONFIG.SecondaryColor
    buttonFrame.BorderSizePixel = 0
    buttonFrame.ZIndex = 10
    buttonFrame.LayoutOrder = #createdButtons + 1
    buttonFrame.Parent = scrollFrame

    createUICorner(buttonFrame, CONFIG.ButtonCornerRadius)
    createUIStroke(buttonFrame)

    local btn = Instance.new("TextButton")
    btn.Name = data.name .. "Btn"
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.BackgroundTransparency = 1
    btn.Text = ""
    btn.ZIndex = 11
    btn.Parent = buttonFrame

    local btnTitle = Instance.new("TextLabel")
    btnTitle.Name = "Title"
    btnTitle.Size = UDim2.new(1, -80, 0, 22)
    btnTitle.Position = UDim2.new(0, 14, 0, 8)
    btnTitle.BackgroundTransparency = 1
    btnTitle.Text = data.name
    btnTitle.TextColor3 = CONFIG.TextColor
    btnTitle.TextSize = 15
    btnTitle.Font = Enum.Font.GothamBold
    btnTitle.TextXAlignment = Enum.TextXAlignment.Left
    btnTitle.ZIndex = 12
    btnTitle.Parent = buttonFrame

    local btnDesc = Instance.new("TextLabel")
    btnDesc.Name = "Description"
    btnDesc.Size = UDim2.new(1, -80, 0, 18)
    btnDesc.Position = UDim2.new(0, 14, 0, 32)
    btnDesc.BackgroundTransparency = 1
    btnDesc.Text = data.description
    btnDesc.TextColor3 = CONFIG.SubTextColor
    btnDesc.TextSize = 13
    btnDesc.Font = Enum.Font.Gotham
    btnDesc.TextXAlignment = Enum.TextXAlignment.Left
    btnDesc.ZIndex = 12
    btnDesc.Parent = buttonFrame

    -- KEY / FREE Badge (Top Right)
    local keyBadge = Instance.new("TextLabel")
    keyBadge.Name = "KeyBadge"
    keyBadge.Size = UDim2.new(0, 50, 0, 20)
    keyBadge.Position = UDim2.new(1, -62, 0, 8)
    keyBadge.BackgroundColor3 = (data.keyType == "keyless") and Color3.fromRGB(0, 212, 255) or Color3.fromRGB(255, 183, 50)
    keyBadge.Text = (data.keyType == "keyless") and "FREE" or "KEY"
    keyBadge.TextColor3 = Color3.fromRGB(25, 25, 25)
    keyBadge.TextSize = 11
    keyBadge.Font = Enum.Font.GothamBold
    keyBadge.ZIndex = 12
    keyBadge.Parent = buttonFrame
    createUICorner(keyBadge, UDim.new(0, 4))

    -- STATUS Badge (Middle Right) - BEST or OUTDATED
    if data.isBest or data.isOutdated then
        local statusBadge = Instance.new("TextLabel")
        statusBadge.Name = "StatusBadge"
        statusBadge.Size = UDim2.new(0, 50, 0, 18)
        statusBadge.Position = UDim2.new(1, -62, 0, 32)
        statusBadge.BackgroundColor3 = data.isOutdated and Color3.fromRGB(220, 60, 60) or Color3.fromRGB(157, 78, 255)
        statusBadge.Text = data.isOutdated and "OLD" or "BEST"
        statusBadge.TextColor3 = Color3.fromRGB(255, 255, 255)
        statusBadge.TextSize = 10
        statusBadge.Font = Enum.Font.GothamBold
        statusBadge.ZIndex = 12
        statusBadge.Parent = buttonFrame
        createUICorner(statusBadge, UDim.new(0, 4))
    end

    -- Hover & Click
    btn.MouseEnter:Connect(function()
        createTween(buttonFrame, {BackgroundColor3 = Color3.fromRGB(30, 30, 38)}, 0.15)
    end)

    btn.MouseLeave:Connect(function()
        createTween(buttonFrame, {BackgroundColor3 = CONFIG.SecondaryColor}, 0.15)
    end)

    btn.MouseButton1Click:Connect(function()
        createTween(buttonFrame, {BackgroundColor3 = CONFIG.AccentColor}, 0.1)
        task.delay(0.1, function()
            createTween(buttonFrame, {BackgroundColor3 = Color3.fromRGB(30, 30, 38)}, 0.2)
        end)
        
        local success, err = pcall(data.code)
        if not success then
            warn("[Achieve Hub] Error executing '" .. data.name .. "': " .. tostring(err))
        end
    end)

    table.insert(createdButtons, {
        frame = buttonFrame,
        name = data.name,
        keyType = data.keyType,
        isBest = data.isBest
    })
end

for _, scriptData in ipairs(SCRIPTS) do
    createScriptButton(scriptData)
end

--// STATUS FOOTER BAR
local footerFrame = Instance.new("Frame")
footerFrame.Name = "FooterFrame"
footerFrame.Size = UDim2.new(1, -24, 0, 38)
footerFrame.Position = UDim2.new(0, 12, 1, -46)
footerFrame.BackgroundColor3 = CONFIG.SecondaryColor
footerFrame.BorderSizePixel = 0
footerFrame.ZIndex = 11
footerFrame.Parent = mainFrame

createUICorner(footerFrame, UDim.new(0, 8))
createUIStroke(footerFrame)

-- LEFT SIDE: Player Profile + Version
local leftFrame = Instance.new("Frame")
leftFrame.Name = "LeftFrame"
leftFrame.Size = UDim2.new(0.5, -6, 1, -8)
leftFrame.Position = UDim2.new(0, 6, 0, 4)
leftFrame.BackgroundTransparency = 1
leftFrame.ZIndex = 12
leftFrame.Parent = footerFrame

local leftLayout = Instance.new("UIListLayout")
leftLayout.FillDirection = Enum.FillDirection.Horizontal
leftLayout.SortOrder = Enum.SortOrder.LayoutOrder
leftLayout.VerticalAlignment = Enum.VerticalAlignment.Center
leftLayout.Padding = UDim.new(0, 8)
leftLayout.Parent = leftFrame

-- Player headshot
local headshotImage = Instance.new("ImageLabel")
headshotImage.Name = "Headshot"
headshotImage.Size = UDim2.new(0, 22, 0, 22)
headshotImage.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
headshotImage.Image = ""
headshotImage.ZIndex = 13
headshotImage.Parent = leftFrame
createUICorner(headshotImage, UDim.new(1, 0))
createUIStroke(headshotImage, CONFIG.AccentColor, 1)

local success, thumb = pcall(function()
    return Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
end)
if success and thumb then
    headshotImage.Image = thumb
end

-- Player name
local playerNameLabel = Instance.new("TextLabel")
playerNameLabel.Name = "PlayerName"
playerNameLabel.AutomaticSize = Enum.AutomaticSize.X
playerNameLabel.Size = UDim2.new(0, 0, 0, 18)
playerNameLabel.BackgroundTransparency = 1
playerNameLabel.Text = player.DisplayName
playerNameLabel.TextColor3 = CONFIG.TextColor
playerNameLabel.TextSize = 12
playerNameLabel.Font = Enum.Font.GothamBold
playerNameLabel.TextXAlignment = Enum.TextXAlignment.Left
playerNameLabel.ZIndex = 13
playerNameLabel.Parent = leftFrame

-- Separator
local separator = Instance.new("TextLabel")
separator.Name = "Separator"
separator.Size = UDim2.new(0, 10, 0, 18)
separator.BackgroundTransparency = 1
separator.Text = "|"
separator.TextColor3 = CONFIG.SubTextColor
separator.TextSize = 12
separator.Font = Enum.Font.Gotham
separator.ZIndex = 13
separator.Parent = leftFrame

-- Version
local versionLabel = Instance.new("TextLabel")
versionLabel.Name = "Version"
versionLabel.AutomaticSize = Enum.AutomaticSize.X
versionLabel.Size = UDim2.new(0, 0, 0, 18)
versionLabel.BackgroundTransparency = 1
versionLabel.Text = SCRIPT_VERSION
versionLabel.TextColor3 = CONFIG.SubTextColor
versionLabel.TextSize = 11
versionLabel.Font = Enum.Font.Gotham
versionLabel.TextXAlignment = Enum.TextXAlignment.Left
versionLabel.ZIndex = 13
versionLabel.Parent = leftFrame

-- RIGHT SIDE: Ping/FPS
local rightFrame = Instance.new("Frame")
rightFrame.Name = "RightFrame"
rightFrame.Size = UDim2.new(0.5, -6, 1, -8)
rightFrame.Position = UDim2.new(0.5, 0, 0, 4)
rightFrame.BackgroundTransparency = 1
rightFrame.ZIndex = 12
rightFrame.Parent = footerFrame

local rightLayout = Instance.new("UIListLayout")
rightLayout.FillDirection = Enum.FillDirection.Horizontal
rightLayout.SortOrder = Enum.SortOrder.LayoutOrder
rightLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
rightLayout.VerticalAlignment = Enum.VerticalAlignment.Center
rightLayout.Padding = UDim.new(0, 6)
rightLayout.Parent = rightFrame

-- Ping/FPS label
local statsLabel = Instance.new("TextLabel")
statsLabel.Name = "Stats"
statsLabel.AutomaticSize = Enum.AutomaticSize.X
statsLabel.Size = UDim2.new(0, 0, 0, 18)
statsLabel.BackgroundTransparency = 1
statsLabel.Text = "0 FPS | 0ms"
statsLabel.TextColor3 = Color3.fromRGB(150, 255, 150)
statsLabel.TextSize = 11
statsLabel.Font = Enum.Font.GothamBold
statsLabel.TextXAlignment = Enum.TextXAlignment.Right
statsLabel.ZIndex = 13
statsLabel.Parent = rightFrame

-- Live FPS/Ping updater
local fps = 0
local lastTick = tick()

RunService.RenderStepped:Connect(function()
    fps = fps + 1
    local now = tick()
    if now - lastTick >= 1 then
        lastTick = now
        local ping = 0
        pcall(function()
            ping = Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
        end)
        statsLabel.Text = string.format("%d FPS | %.0fms", fps, ping)
        if ping < 50 then
            statsLabel.TextColor3 = Color3.fromRGB(150, 255, 150)
        elseif ping < 100 then
            statsLabel.TextColor3 = Color3.fromRGB(255, 220, 100)
        else
            statsLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        end
        fps = 0
    end
end)

--// TOGGLE BUTTON (ICON ONLY, BIGGER, DRAGGABLE)
local toggleBtn = Instance.new("ImageButton")
toggleBtn.Name = "ToggleBtn"
toggleBtn.Size = UDim2.new(0, 64, 0, 64)
toggleBtn.AnchorPoint = Vector2.new(0.5, 0.5)
toggleBtn.Position = UDim2.new(0, 52, 0.5, 0)
toggleBtn.BackgroundTransparency = 1
toggleBtn.Image = "rbxthumb://type=GamePass&id=" .. GAMEPASS_ID .. "&w=150&h=150"
toggleBtn.ImageColor3 = Color3.new(1, 1, 1)
toggleBtn.ScaleType = Enum.ScaleType.Crop
toggleBtn.ZIndex = 5
toggleBtn.Parent = screenGui

createUICorner(toggleBtn, UDim.new(1, 0))

local toggleRing = Instance.new("ImageLabel")
toggleRing.Name = "Ring"
toggleRing.Size = UDim2.new(1, 12, 1, 12)
toggleRing.Position = UDim2.new(0, -6, 0, -6)
toggleRing.BackgroundTransparency = 1
toggleRing.Image = "rbxassetid://1316045217"
toggleRing.ImageColor3 = CONFIG.AccentColor
toggleRing.ImageTransparency = 0.85
toggleRing.ScaleType = Enum.ScaleType.Slice
toggleRing.SliceCenter = Rect.new(10, 10, 118, 118)
toggleRing.ZIndex = 4
toggleRing.Parent = toggleBtn

local toggleShadow = createShadow(toggleBtn)
toggleShadow.ImageTransparency = 0.7

makeDraggable(toggleBtn)

toggleBtn.MouseEnter:Connect(function()
    createTween(toggleBtn, {Size = UDim2.new(0, 70, 0, 70)}, 0.15)
    createTween(toggleRing, {ImageTransparency = 0.7}, 0.15)
end)

toggleBtn.MouseLeave:Connect(function()
    createTween(toggleBtn, {Size = UDim2.new(0, 64, 0, 64)}, 0.15)
    createTween(toggleRing, {ImageTransparency = 0.85}, 0.15)
end)

--// DRAG MAIN UI
makeDraggable(mainFrame, topBar)

--// MINIMIZE LOGIC
local isMinimized = false

minimizeBtn.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    
    if isMinimized then
        minimizeBtn.Text = "+"
        createTween(contentFrame, {Size = UDim2.new(1, -24, 0, 0)}, 0.3)
        createTween(footerFrame, {Position = UDim2.new(0, 12, 1, 0)}, 0.3)
        createTween(mainFrame, {Size = UDim2.new(0, 380, 0, 44)}, 0.3)
        task.delay(0.3, function()
            contentFrame.Visible = false
            footerFrame.Visible = false
        end)
    else
        minimizeBtn.Text = "-"
        contentFrame.Visible = true
        footerFrame.Visible = true
        createTween(contentFrame, {Size = UDim2.new(1, -24, 1, -100)}, 0.3)
        createTween(footerFrame, {Position = UDim2.new(0, 12, 1, -46)}, 0.3)
        createTween(mainFrame, {Size = UDim2.new(0, 380, 0, 460)}, 0.3)
    end
end)

--// CLOSE LOGIC
closeBtn.MouseButton1Click:Connect(function()
    createTween(mainFrame, {Position = UDim2.new(mainFrame.Position.X.Scale, mainFrame.Position.X.Offset, 1.2, 0)}, 0.3)
    task.wait(0.3)
    mainFrame.Visible = false
end)

--// TOGGLE BUTTON LOGIC
local isVisible = true

toggleBtn.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    
    if isVisible then
        mainFrame.Visible = true
        createTween(mainFrame, {Position = UDim2.new(0.5, -190, 0.5, -230)}, 0.3)
        createTween(toggleRing, {ImageColor3 = CONFIG.AccentColor}, 0.2)
    else
        createTween(mainFrame, {Position = UDim2.new(mainFrame.Position.X.Scale, mainFrame.Position.X.Offset, 1.5, 0)}, 0.3)
        task.wait(0.3)
        mainFrame.Visible = false
        createTween(toggleRing, {ImageColor3 = Color3.fromRGB(60, 60, 80)}, 0.2)
    end
end)

--// INTRO ANIMATION
mainFrame.Size = UDim2.new(0, 380, 0, 0)
mainFrame.Position = UDim2.new(0.5, -190, 0.5, -230)

task.delay(0.2, function()
    createTween(mainFrame, {Size = UDim2.new(0, 380, 0, 460)}, 0.4)
end)

print("🚀 Archive Hub loaded! Scrollable list with status badges.")
