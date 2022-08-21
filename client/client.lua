TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
  while true do
    for k, v in pairs(Config.pos) do
      local plypos = GetEntityCoords(PlayerPedId())
      local pos = Config.pos
      local dst = GetDistanceBetweenCoords(plypos, pos[k], true)
    end
  end
end)