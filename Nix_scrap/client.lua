vRP = Proxy.getInterface("vRP")
HT = nil
Citizen.CreateThread(function()
    while HT == nil do
        TriggerEvent('HT_base:getBaseObjects', function(obj) HT = obj end)
        Citizen.Wait(0)
    end
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Ped = GetPlayerPed(-1)
        if GetDistanceBetweenCoords(GetEntityCoords(Ped),-484.01455688477,-1730.6354980469,19.549257278442,true) <= 20 then
            DrawMarker(20, -484.01455688477,-1730.6354980469,19.549257278442, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5001, 26, 213, 51, 200, 0, 0, 0, 50)
            if GetDistanceBetweenCoords(GetEntityCoords(Ped),-484.01455688477,-1730.6354980469,19.549257278442,true) <= 2 then
                DrawText3Ds(-484.01455688477,-1730.6354980469,19.549257278442, "~g~E~w~ - Sælg scrap")
                if IsControlJustPressed(1, 38) then
                    TriggerServerEvent('salgafscrap')
                    DeleteEntity(carseat)
                    DeleteEntity(tv)
                    DeleteEntity(cardoor)
                    DeleteEntity(wheel)
                    ClearPedTasks(Ped)
                end
                end
            end
        end
    end)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1)
            local Ped = GetPlayerPed(-1)
                if GetDistanceBetweenCoords(GetEntityCoords(Ped),-479.9250793457,-1744.8565673828,18.585384368896,true) <= 20 then
                    DrawMarker(20, -479.9250793457,-1744.8565673828,18.585384368896, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5001, 0, 41, 245, 200, 0, 0, 0, 50)
                        if GetDistanceBetweenCoords(GetEntityCoords(Ped),-479.9250793457,-1744.8565673828,18.585384368896,true) <= 2 then
                            DrawText3Ds(-479.9250793457,-1744.8565673828,18.585384368896, "~b~E~w~ -Søg i genstande")
                            if IsControlJustPressed(1, 38) then
                            scrap()
                            Citizen.Wait(120000)
                        end
                    end
                end
            end
        end)
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(1)
                local Ped = GetPlayerPed(-1)
                    if GetDistanceBetweenCoords(GetEntityCoords(Ped),-490.51565551758,-1756.0740966797,18.253499984741,true) <= 20 then
                        DrawMarker(20, -490.51565551758,-1756.0740966797,18.253499984741, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5001, 0, 41, 245, 200, 0, 0, 0, 50)
                            if GetDistanceBetweenCoords(GetEntityCoords(Ped),-490.51565551758,-1756.0740966797,18.253499984741,true) <= 2 then
                                DrawText3Ds(-490.51565551758,-1756.0740966797,18.253499984741, "~b~E~w~ -Søg i genstande")
                                if IsControlJustPressed(1, 38) then
                                scrap()
                                Citizen.Wait(120000)
                            end
                        end
                    end
                end
            end)
            Citizen.CreateThread(function()
                while true do
                    Citizen.Wait(1)
                    local Ped = GetPlayerPed(-1)
                    if GetDistanceBetweenCoords(GetEntityCoords(Ped),-495.54861450195,-1750.0783691406,18.431945800781,true) <= 20 then
                        DrawMarker(20, -495.54861450195,-1750.0783691406,18.431945800781, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5001, 0, 41, 245, 200, 0, 0, 0, 50)
                        if GetDistanceBetweenCoords(GetEntityCoords(Ped),-495.54861450195,-1750.0783691406,18.431945800781,true) <= 2 then
                            DrawText3Ds(-495.54861450195,-1750.0783691406,18.431945800781, "~b~E~w~ -Søg i genstande")
                            if IsControlJustPressed(1, 38) then
                                scrap()
                                Citizen.Wait(120000)
                            end
                            end
                        end
                    end
                end)
            Citizen.CreateThread(function()
                while true do
                    Citizen.Wait(1)
                    local Ped = GetPlayerPed(-1)
                    if GetDistanceBetweenCoords(GetEntityCoords(Ped),-486.69192504883,-1750.0402832031,18.439483642578,true) <= 20 then
                        DrawMarker(20, -486.69192504883,-1750.0402832031,18.439483642578, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5001, 0, 41, 245, 200, 0, 0, 0, 50)
                        if GetDistanceBetweenCoords(GetEntityCoords(Ped),-486.69192504883,-1750.0402832031,18.439483642578,true) <= 2 then
                            DrawText3Ds(-486.69192504883,-1750.0402832031,18.439483642578, "~b~E~w~ -Søg i genstande")
                            if IsControlJustPressed(1, 38) then
                                scrap()
                                Citizen.Wait(120000)
                            end
                            end
                        end
                    end
                end)
function scrap()
    Citizen.CreateThread(function()
        local impacts = 0
        local ped = GetPlayerPed(-1)
        local PedCoords = GetEntityCoords(GetPlayerPed(-1))
        local time = math.random(1,4)
        while impacts < 3 do
            Citizen.Wait(1)
            RequestAnimDict("anim@gangops@facility@servers@bodysearch@")
              Citizen.Wait(100)
              TaskPlayAnim(ped, 'anim@gangops@facility@servers@bodysearch@', 'player_search', 8.0, -8.0, -1, 48, 0)
              FreezeEntityPosition(ped, true)
              exports['progressBars']:startUI(5000, "Søger.....")
              Citizen.Wait(5000)
              ClearPedTasks(ped)
              impacts = impacts+1
              print('search loop->',impacts)
            if impacts == 3 then
               impacts = 0
               TriggerServerEvent('fortem')
               FreezeEntityPosition(ped, false)
               break
            end   
        end
        if time == 1 then
           cardoor = CreateObject(GetHashKey('prop_car_door_01'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
	       AttachEntityToEntity(cardoor , GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 60309),  0.025, 0.00, 0.355, -75.0, 470.0, 0.0, true, true, false, true, 1, true)
	       RequestAnimDict('anim@heists@box_carry@')
           Citizen.Wait(100)
	       TaskPlayAnim(ped, 'anim@heists@box_carry@', "idle", 3.0, -8, -1, 63, 0, 0, 0, 0 )
           Citizen.Wait(9000)
        elseif time == 2 then
           tv = CreateObject(GetHashKey('prop_rub_monitor'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
	       AttachEntityToEntity(tv , GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 60309),  0.020, 0.00, 0.255, -70.0, 470.0, 0.0, true, true, false, true, 1, true)
	       RequestAnimDict('anim@heists@box_carry@')
           Citizen.Wait(100)
	       TaskPlayAnim(ped, 'anim@heists@box_carry@', "idle", 3.0, -8, -1, 63, 0, 0, 0, 0 )
           Citizen.Wait(9000)
        elseif time == 3 then
           carseat = CreateObject(GetHashKey('prop_car_seat'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
	       AttachEntityToEntity(carseat , GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 60309),  0.020, 0.00, 0.255, -70.0, 470.0, 0.0, true, true, false, true, 1, true)
	       RequestAnimDict('anim@heists@box_carry@')
           Citizen.Wait(100)
	       TaskPlayAnim(ped, 'anim@heists@box_carry@', "idle", 3.0, -8, -1, 63, 0, 0, 0, 0 )
           Citizen.Wait(9000)
        else
          wheel = CreateObject(GetHashKey('prop_rub_tyre_03'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
	      AttachEntityToEntity(wheel , GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 60309),  0.30, 0.35, 0.365, -045.0, 480.0, 0.0, true, true, false, true, 1, true)
	      RequestAnimDict('anim@heists@box_carry@')
          Citizen.Wait(100)
	      TaskPlayAnim(ped, 'anim@heists@box_carry@', "idle", 3.0, -8, -1, 63, 0, 0, 0, 0 )
          Citizen.Wait(9000)
        end
    end)
    if IsEntityPlayingAnim(ped, "anim@gangops@facility@servers@bodysearch@", "player_search", 3) then
       DisableAllControlActions(0)
	end
end
local npc = {
    {-483.31455688477,-1730.6354980469,18.549257278442,"sælger",110.15406799316,0xD7DA9E99,"s_m_y_construct_01"},
  }
  Citizen.CreateThread(function()
    for k,v in pairs(npc) do
      RequestModel(GetHashKey(v[7]))
      while not HasModelLoaded(GetHashKey(v[7])) do
        Wait(1)
      end
      RequestAnimDict("rcmnigel1cnmt_1c")
      while not HasAnimDictLoaded("rcmnigel1cnmt_1c") do
        Wait(1)
      end
      ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"rcmnigel1cnmt_1c","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
  end)
  RegisterCommand("KS:getCoordsH", function(source,args)
      print(GetEntityCoords(PlayerPedId()).." "..GetEntityHeading(PlayerPedId()))
  end)
  function DrawText3Ds(x,y,z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())

	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 370
	DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 20, 20, 20, 150)
end

