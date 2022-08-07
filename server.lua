ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



function RandomItem()
   return Config.Items[math.random(#Config.Items)]
end




ESX.RegisterUsableItem('box', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)


  xPlayer.removeInventoryItem('box', 1)
  
  xPlayer.addInventoryItem(RandomItem(), 1)
  xPlayer.addInventoryItem(RandomItem(), 1)
  xPlayer.addInventoryItem(RandomItem(), 1)
  xPlayer.addInventoryItem(RandomItem(), 1)
end)




