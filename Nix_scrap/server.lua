-- Created by Nix
-- Created by Nix
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPclient = Tunnel.getInterface("vRP", "Nixs_ringpd") 
vRP = Proxy.getInterface("vRP")

RegisterNetEvent("salgafscrap")
AddEventHandler("salgafscrap", function(coords)
    local user_id = vRP.getUserId({source})
    local penge = math.random(100,400)

    if vRP.hasInventoryItem({user_id, "scrap", 1, false}) then
        vRP.tryGetInventoryItem({user_id,"scrap",1})
        vRP.giveMoney({user_id, penge})
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = ' Du modtog '..penge..' Penge ', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke noget srap på dig', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
    end
end)

RegisterNetEvent("fortem")
AddEventHandler("fortem", function(coords)
    local user_id = vRP.getUserId({source})
    local penge = math.random(100,300)
    local runner = true
    if runner == true then
        vRP.giveInventoryItem({user_id,"scrap",1,true})
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = ' Du fandt noget scrap ', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } })
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Runner er ikke aktiv', length = 2500, style = { ['background-color'] = '#dc1313', ['color'] = '#ffffff' } })
    end
end)

vRP.defInventoryItem({"scrap","Scrap","Kan sælges", 0.5})
