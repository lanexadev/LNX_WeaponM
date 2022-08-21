TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
  while true do
    for k, v in pairs(Config.pos) do
      local plypos = GetEntityCoords(PlayerPedId())
      local pos = Config.pos
      local dst = GetDistanceBetweenCoords(plypos, pos[k], true)
      local wait = 1

      if dst > 5 then
        wait = 750
      else
        wait = 1
        DrawMarker(24, pos[k].x, pos[k].y, pos[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 255, 255, 255, 0, 0, 1, 0, nil, nil, nil)

        if dst < 1 then
          RageUI.Text({ message="Appuyez sur ~y~[~g~E~y~] ~w~pour fabriquer des armes.", time_display = 1 })

          if IsControlJustPressed(1, 38) then
            CraftWeaponBM()
          end
        end
      end
    end
    Citizen.Wait(wait)
  end
end)