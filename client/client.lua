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
          ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour fabriquer des armes")

          if IsControlJustPressed(1, 38) then
            CraftWeaponBM()
          end
        end
      end
    end
    Citizen.Wait(wait)
  end
end)

function CraftWeaponBM()
  local CraftMenu = RageUI.CreateMenu("Crafting d'armes", " ")

  CraftMenu.Closed = function()
    menu = false
  end
  if menu then
    menu = false
    RageUI.Visible(CraftMenu, false)
    return
  else
    menu = true
    RageUI.Visible(CraftMenu, true)

    Citizen.CreateThread(function()
      while menu do
        RageUI.IsVisible(CraftMenu, function()
          RageUI.Separator("___________")
          RageUI.ButtonWithStyle("Pistol", " ", {RightLabel = ">"}, true, function(hovered, active, Selected)
            if Selected then
              print("bnite")
            end
          end)
          if PlayerPedId() then
            GiveWeaponToPed(PlayerPedId(), Weapon_pistol, 250, false, false)
          end
        end)
        Citizen.Wait(0)
      end
    end)
  end
end
