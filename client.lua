local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     {title="Los Santos Customs", colour=0, id=72, x = -347.291, y = -133.370, z = 38.009},
     {title="Los Santos Customs", colour=0, id=72, x = 1174.86, y = 2640.36, z = 37.75},
     {title="Los Santos Customs", colour=0, id=72, x = -1152.76, y = -2002.34, z = 12.32},
     {title="Los Santos Customs", colour=0, id=72, x = 731.8, y = -1086.13, z = 21.31},
     {title="Los Santos Customs", colour=0, id=72, x = 111.5, y = 6626.25, z = 30.92},
     {title="Bank", colour=2, id=108, x = 260.130, y = 204.308, z = 109.287}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)

      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)

	    BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)