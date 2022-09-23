ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



function RandomItem()
  return Config.Items[math.random(#Config.Items)]
end

local used = false
local counter = 1 
local _source 

ESX.RegisterUsableItem('box', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)

  used = true 
  _source = source
  xPlayer.removeInventoryItem('box', 1)

end)




Citizen.CreateThread(function()
  while true do 
    
  if used == true then 
  local xPlayer = ESX.GetPlayerFromId(_source)

    if counter <= Config.howmanyitems then 
      counter = counter + 1
      xPlayer.addInventoryItem(RandomItem(), 1)
    else
      used = false
      counter = 1
    end

  end
    Citizen.Wait(0)
  end
end)






