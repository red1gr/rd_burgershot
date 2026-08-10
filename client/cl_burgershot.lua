local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

CreateThread(function()
    BurgerShot = AddBlipForCoord(-1197.32, -897.655, 13.995)
    SetBlipSprite (BurgerShot, 106)
    SetBlipDisplay(BurgerShot, 4)
    SetBlipScale  (BurgerShot, 1.5)
    SetBlipAsShortRange(BurgerShot, true)
    SetBlipColour(BurgerShot, 75)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("BurgerShot")
    EndTextCommandSetBlipName(BurgerShot)
end) 

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        PlayerJob = QBCore.Functions.GetPlayerData().job
        BurgerZones()
    end
end)

AddEventHandler('onResourceStop', function(resourceName) 
    if GetCurrentResourceName() == resourceName then
        for k, v in pairs(Config.Zones) do
            exports['qb-target']:RemoveZone("burgershot"..k)
        end
        DeletePed(jobPed)
    end 
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
    BurgerZones()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    for k, v in pairs(Config.Zones) do
        exports['qb-target']:RemoveZone("burgershot"..k)
    end
    DeletePed(jobPed)
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(0)
    end
end

function BurgerZones()
    for k, v in pairs(Config.Zones) do
        exports['qb-target']:AddCircleZone("burgershot"..k, v.coords, v.radius, {
            name = "burgershot"..k,
            debugPoly = false,
            useZ=true,
        }, {
            options = {
                {
                    type = "client",
                    event = v.event,
                    icon = v.icon,
                    label = v.label,
                    job = v.job,
                },
            },
            distance = 1.5
        })
    end
    if not DoesEntityExist(jobPed) then

	RequestModel(Config.GaragePed) while not HasModelLoaded(Config.GaragePed) do Wait(0) end

	jobPed = CreatePed(0, Config.GaragePed, Config.PedLocation, false, false)

	SetEntityAsMissionEntity(jobPed, true, true)
	SetPedFleeAttributes(jobPed, 0, 0)
	SetBlockingOfNonTemporaryEvents(jobPed, true)
	SetEntityInvincible(jobPed, true)
	FreezeEntityPosition(jobPed, true)
	loadAnimDict("timetable@ron@ig_3_couch")        
	TaskPlayAnim(jobPed, "timetable@ron@ig_3_couch", "base", 8.0, 1.0, -1, 01, 0, 0, 0, 0)

	exports['qb-target']:AddTargetEntity(jobPed, { 
	    options = {
		{ 
		    type = "client",
		    event = "rd_burgershot:client:jobGarage",
		    icon = "fa-solid fa-clipboard-check",
		    label = "JBED TONOBIL",
		    job = "burgershot"
		},
		{ 
		    type = "client",
		    event = "rd_burgershot:client:storeGarage",
		    icon = "fa-solid fa-clipboard-check",
		    label = "DKHAL TONOBIL",
		    job = "burgershot"
		},
	    }, 
	    distance = 1.5, 
	})
    end
end

CreateThread(function()
    DecorRegister("bs_vehicle", 1)
end)

RegisterNetEvent('rd_burgershot:client:jobGarage', function(vehicle)
    local vehicle = Config.Vehicle
    local coords = Config.VehicleSpawn
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "BURG"..tostring(math.random(1000, 9999)))
        DecorSetFloat(veh, "bs_vehicle", 1)
        SetEntityAsMissionEntity(veh, true, true)
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
        CurrentPlate = QBCore.Functions.GetPlate(veh)
        SetVehicleFuelLevel(veh, 100.0)
    end, coords, true)
end)

RegisterNetEvent('rd_burgershot:client:storeGarage', function()
    local veh = QBCore.Functions.GetClosestVehicle()
    if DecorExistOn((veh), "bs_vehicle") then
        QBCore.Functions.DeleteVehicle(veh)
        exports['okokNotify']:Alert('L3ECHRANE SYSTEM', "RAK RADITI TONOBIL", 5000, 'success', false)
    else
        exports['okokNotify']:Alert('L3ECHRANE SYSTEM', "HADI MACH TONOBIL LKHEDMA", 5000, 'error', false)
    end
end)
    
RegisterNetEvent("rd_burgershot:client:frontTray", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsfoodtray")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsfoodtray", {
        maxweight = 30000,
        slots = 12,
    })
end)

RegisterNetEvent("rd_burgershot:client:frontTray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsfoodtray2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsfoodtray2", {
        maxweight = 30000,
        slots = 12,
    })
end)
RegisterNetEvent("rd_burgershot:client:frontTray3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsfoodtray3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsfoodtray3", {
        maxweight = 30000,
        slots = 12,
    })
end)
RegisterNetEvent("rd_burgershot:client:frontTray4", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsfoodtray4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsfoodtray4", {
        maxweight = 30000,
        slots = 12,
    })
end)


RegisterNetEvent("rd_burgershot:client:passThrough", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsBigTray")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsBigTray", {
        maxweight = 300000,
        slots = 15,
    })
end)

RegisterNetEvent("rd_burgershot:client:jobFridge", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bsFridge")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bsFridge", {
        maxweight = 3000000,
        slots = 30,
    })
end)

RegisterNetEvent("rd_burgershot:client:ingredientStore", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "burgershot", Config.Items)
end)

RegisterNetEvent('rd_burgershot:clientToggleDuty', function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("rd_burgershot:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "L3 | BURGERSHOT",
		submitText = "Charge",
        inputs = {
            {
                text = "Server ID(#)",
				name = "citizenid", 
                type = "text", 
                isRequired = true --
            },
            {
                text = "   Bill Price ($)",
                name = "billprice", 
                type = "number",
                isRequired = false
            }
			
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("rd_burgershot:server:billPlayer", bill.citizenid, bill.billprice)
    end
end)

