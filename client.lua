Citizen.CreateThread(function()
    Wait(50)
    while true do
        miid(0.98, 1.480, 1.0,1.0,0.2, "~w~[TVOJE ID] :~r~ ".. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. '', 255, 255, 255, 255)
        Citizen.Wait(1)
    end
end)

function miid(x,y ,width,height,scale, text, r,g,b,a, outline)
    local font = fontId

    RegisterFontFile('russoone') -- název soubory gfx bez koncovky gfx
    fontId = RegisterFontId('Russo One') -- nazev ktery jsme dávali do in.xml

    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(scale, scale)
	SetTextColour( 0,0,0, 255 )
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end