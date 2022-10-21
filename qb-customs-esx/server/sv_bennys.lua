-----------------------
----   Variables   ----
-----------------------
ESX = exports['es_extended']:getSharedObject()
local RepairCosts = {}

-----------------------
----   Functions   ----
-----------------------

local function IsVehicleOwned(plate)
    local retval = false
    local result = MySQL.Sync.fetchScalar('SELECT plate FROM owned_vehicles WHERE plate = ?', {plate})
    if result then retval = true end
    return retval
end

-----------------------
----   Threads     ----
-----------------------

-----------------------
---- Server Events ----
-----------------------

AddEventHandler("playerDropped", function()
	local source = source
    RepairCosts[source] = nil
end)

RegisterNetEvent('qb-customs-esx:server:attemptPurchase', function(type, upgradeLevel, location)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local moneyType = Config.MoneyType
    local balance = xPlayer.getAccount('bank').money
    if type == "repair" then
        local repairCost = RepairCosts[source] or 600
        moneyType = Config.RepairMoneyType
        balance = xPlayer.getAccount('bank').money
        if balance >= repairCost then
            xPlayer.removeAccountMoney('bank', repairCost)
            TriggerClientEvent('qb-customs-esx:client:purchaseSuccessful', source)
        else
            TriggerClientEvent('qb-customs-esx:client:purchaseFailed', source)
        end
    elseif type == "performance"  then
        if balance >= vehicleCustomisationPrices[type].prices[upgradeLevel] then
            TriggerClientEvent('qb-customs-esx:client:purchaseSuccessful', source)
            xPlayer.removeAccountMoney('bank', vehicleCustomisationPrices[type].prices[upgradeLevel])
        else
            TriggerClientEvent('qb-customs-esx:client:purchaseFailed', source)
        end
    else
        if balance >= vehicleCustomisationPrices[type].price then
            TriggerClientEvent('qb-customs-esx:client:purchaseSuccessful', source)
            xPlayer.removeAccountMoney('bank', vehicleCustomisationPrices[type].price)
	
        else
            TriggerClientEvent('qb-customs-esx:client:purchaseFailed', source)
        end
    end
end)


RegisterNetEvent('qb-customs-esx:server:updateRepairCost', function(cost)
    local source = source
    RepairCosts[source] = cost
end)

RegisterNetEvent("qb-customs-esx:server:updateVehicle", function(myCar)
    if IsVehicleOwned(myCar.plate) then
        MySQL.Async.execute('UPDATE owned_vehicles SET mods = ? WHERE plate = ?', {json.encode(myCar), myCar.plate})
    end
end)

-- Use somthing like this to dynamically enable/disable a location. Can be used to change anything at a location.
-- TriggerEvent('qb-customs-esx:server:UpdateLocation', 'Hayes', 'settings', 'enabled', test)

RegisterNetEvent('qb-customs-esx:server:UpdateLocation', function(location, type, key, value)
    Config.Locations[location][type][key] = value
    TriggerClientEvent('qb-customs-esx:client:UpdateLocation', -1, location, type, key, value)
end)

ESX.RegisterServerCallback('qb-customs-esx:server:GetLocations', function(source, cb)
	cb(Config.Locations)
end)
