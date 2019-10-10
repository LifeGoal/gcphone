--====================================================================================
-- #Author: Olle Strand | Cünter#1634
-- #Version 0.1
--====================================================================================

RegisterNetEvent("gcPhone:mdt_login")
AddEventHandler("gcPhone:mdt_login", function(username, password, work, id, adminlevel)
  print("Reached client Stuff")
  TriggerServerEvent("serverlog", "Admin:" .. adminlevel)
  SendNUIMessage({
    event = 'mdt_login',
      username = username,
      password = password,
      work = work,
      id = id,
      adminlevel = adminlevel
  })
end)

--====================================================================================
-- #NUI Callbacks
--====================================================================================

RegisterNUICallback('mdt_loginRequest', function(data, cb)
  -- print('PhoneAPI Post: Username: ' + username + ', Password: ' + password)
  TriggerServerEvent('gcPhone:mdt_loginRequest', data.username, data.password)

end)
