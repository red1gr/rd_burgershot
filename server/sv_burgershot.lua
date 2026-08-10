local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('rd_burgershot:server:makeBleeder', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("burger-lettuce", 1)
    Player.Functions.RemoveItem("burger-raw", 1)
    Player.Functions.RemoveItem("burger-bun", 1)
    Player.Functions.RemoveItem("burger-tomato", 1)
    Player.Functions.AddItem("burger-bleeder", 3)
end)

RegisterNetEvent('rd_burgershot:server:makeMoneyshot', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("burger-lettuce", 1)
    Player.Functions.RemoveItem("burger-raw", 1)
    Player.Functions.RemoveItem("burger-bun", 1)
    Player.Functions.RemoveItem("burger-tomato", 1)
    Player.Functions.AddItem("burger-moneyshot", 3)
end)

RegisterNetEvent('rd_burgershot:server:makeTorpedo', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("burger-raw", 1)
    Player.Functions.RemoveItem("burger-bun", 1)
    Player.Functions.AddItem("burger-torpedo", 3)
end)

RegisterNetEvent('rd_burgershot:server:makeHeartstopper', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("burger-lettuce", 1)
    Player.Functions.RemoveItem("burger-raw", 1)
    Player.Functions.RemoveItem("burger-bun", 1)
    Player.Functions.RemoveItem("burger-tomato", 1)
    Player.Functions.AddItem("burger-heartstopper", 3)
end)

RegisterNetEvent('rd_burgershot:server:makeMeatfree', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("burger-lettuce", 1)
    Player.Functions.RemoveItem("burger-bun", 1)
    Player.Functions.RemoveItem("burger-tomato", 1)
    Player.Functions.AddItem("burger-meatfree", 3)
end)

RegisterNetEvent('rd_burgershot:server:makeFries', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("burger-potato", 2)
    Player.Functions.AddItem("burger-fries", 4)
end)

RegisterNetEvent('rd_burgershot:server:makeSoda', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("burger-sodasyrup", 1)
    Player.Functions.AddItem("burger-softdrink", 1)
end)

RegisterNetEvent('rd_burgershot:server:makeShake', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("burger-mshakeformula", 1)
    Player.Functions.AddItem("burger-mshake", 1)
end)

QBCore.Functions.CreateUseableItem("burger-softdrink", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("rd_burgershot:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-mshake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("rd_burgershot:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-bleeder", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("rd_burgershot:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-moneyshot", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("rd_burgershot:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-torpedo", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("rd_burgershot:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-heartstopper", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("rd_burgershot:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-meatfree", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("rd_burgershot:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-fries", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("rd_burgershot:client:Eat", source, item.name)
    end
end)

function FormWebhook(message)
    local embed = {}
    embed = {
        {
            ["color"] = 16776960, -- GREEN = 65280 --- RED = 16711680
            ["title"] = "RD",
            ["description"] = "" .. message ..  "",
            ["footer"] = {
                ["icon_url"] = "https://cdn.discordapp.com/avatars/1317955936513429667/d16c4799b2f0253eb0960e34da56bf00.png?size=1024",
                ["text"] = 'RDSTORE',
            },
        }
    }
    PerformHttpRequest("", 
    function(err, text, headers) end, 'POST', json.encode({username = 'MASTERS', embeds = embed}), { ['Content-Type'] = 'application/json' })
end
RegisterNetEvent("rd_burgershot:server:billPlayer", function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    local source = source
    local identifiers = GetPlayerIdentifiers(source)
    local identifiers1 = GetPlayerIdentifiers(billed)
    local discord
    for k, v in ipairs(identifiers) do
        if string.match(v, 'discord') then
            playerDiscordTag = '<@' .. string.gsub(v, "discord:", "") .. '>'
        end    
    end
    for k, v in ipairs(identifiers1) do
        if string.match(v, 'discord') then
            playerDiscordTag1 = '<@' .. string.gsub(v, "discord:", "") .. '>'
        end    
    end
    if biller.PlayerData.job.name == 'burgershot' then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                billed.Functions.RemoveMoney('bank', amount)
                TriggerClientEvent('QBCore:Notify', source, 'You charged a customer.', 'success')
                TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'You have been charged $'..amount..' for your order at Burgershot.')
                -- exports['qb-banking']:AddMoney('burgershot', amount)
                exports['qb-management']:AddMoney('burgershot', amount)
                FormWebhook("BILLER"..playerDiscordTag .."9TE3"..amount.."MN CLIENT"..playerDiscordTag1.."")
                else
                    TriggerClientEvent('QBCore:Notify', source, 'Must be a valid amount above 0.', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'You cannot bill yourself.', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'Player not online', 'error')
        end
    end
end)
