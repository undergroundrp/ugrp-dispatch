Citizen.CreateThread(function()

  while (true) do

    Citizen.Wait(0)

      -- WANTED LEVEL ----------------------------------------------------------

        -- Toggle player wanted level
        if Config.playerWantedLevel == false then
          -- Player wanted level
          -- See: https://runtime.fivem.net/doc/natives/#_0x39FF19C64EF7DA5B
          SetPlayerWantedLevel(PlayerId(), 0, false)

          -- Player wanted level current
          -- See: https://runtime.fivem.net/doc/natives/#_0xE0A7D1E497FFCD6F
          SetPlayerWantedLevelNow(PlayerId() ,false)

          -- Player wanted level change
          -- See: https://runtime.fivem.net/doc/natives/#_0x340E61DE7F471565
          SetPlayerWantedLevelNoDrop(PlayerId(), 0, false)
        end

      -- DISPATCH SERVICES -----------------------------------------------------

        -- Toggle dispatch services
        -- See: https://runtime.fivem.net/doc/natives/#_0xDC0F817884CDD856
        if Config.dispatch.police           == false then EnableDispatchService( 1, false) end
        if Config.dispatch.policeWaiting    == false then EnableDispatchService( 9, false) end
        if Config.dispatch.policeCruising   == false then EnableDispatchService(10, false) end
        if Config.dispatch.policeBackup     == false then EnableDispatchService( 7, false) end
        if Config.dispatch.policeRoadblock  == false then EnableDispatchService( 8, false) end
        if Config.dispatch.policeHelicopter == false then EnableDispatchService( 2, false) end
        if Config.dispatch.policeMotorcycle == false then EnableDispatchService( 6, false) end
        if Config.dispatch.policeBoat       == false then EnableDispatchService(13, false) end
        if Config.dispatch.swat             == false then EnableDispatchService( 4, false) end
        if Config.dispatch.swatHelicopter   == false then EnableDispatchService(12, false) end
        if Config.dispatch.fire             == false then EnableDispatchService( 3, false) end
        if Config.dispatch.medical          == false then EnableDispatchService( 5, false) end
        if Config.dispatch.army             == false then EnableDispatchService(14, false) end
        if Config.dispatch.gangs            == false then EnableDispatchService(11, false) end
        if Config.dispatch.bokes            == false then EnableDispatchService(15, false) end

  end

end)
