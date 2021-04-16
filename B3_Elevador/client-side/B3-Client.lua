-----------------------------------------------------------------------------------------------------------------------------
-- [https://discord.gg/ppVjYQKT2r في حال واجهت اي مشاكل حياك الدعم الفني B3-Team جميع الحقوق محفوظة الى ]      	           --
-- [المصعد يتسع حتى تسع طوابق و يمكن تعطيل اي طابق و عند تعديل اي احداثية لا تنسى تحطها مرتين مثل ما وضح بالاسفل ]           --
-----------------------------------------------------------------------------------------------------------------------------

local menuactive = false
function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		TransitionToBlurred(1000)
		SendNUIMessage({ showmenu = true })
		TriggerEvent("hideHud")
	else
		SetNuiFocus(false)
		TransitionFromBlurred(1000)
		SendNUIMessage({ hidemenu = true })
		TriggerEvent("showHud")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
--[ القوائم ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	local ped = PlayerPedId()
	if data == "-1andar" then
		DoScreenFadeOut(1000)
		ToggleActionMenu()
		SetTimeout(1400,function()
			SetEntityCoords(ped,341.0583190918,-580.9287109375,28.796863555908,0,0,0,0)    -- في حال غيرت اي احداثية بالاسفل بدل نفس الاحداثية هنا
			SetEntityHeading(ped,32.76)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			DoScreenFadeIn(1000)
		end)

	elseif data == "-2andar" then
		DoScreenFadeOut(1000)
		ToggleActionMenu()
		SetTimeout(1400,function()
			SetEntityCoords(ped,332.17782592773,-595.53277587891,43.284103393555,0,0,0,0)    -- في حال غيرت اي احداثية بالاسفل بدل نفس الاحداثية هنا
			SetEntityHeading(ped,32.76)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			DoScreenFadeIn(1000)
		end)

	elseif data == "-3andar" then
		DoScreenFadeOut(1000)
		ToggleActionMenu()
		SetTimeout(1400,function()
			SetEntityCoords(ped,344.57272338867,-586.31140136719,28.796838760376,0,0,0,0)    -- في حال غيرت اي احداثية بالاسفل بدل نفس الاحداثية هنا
			SetEntityHeading(ped,32.76)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			DoScreenFadeIn(1000)
		end)

	elseif data == "terreo" then
		DoScreenFadeOut(1000)
		ToggleActionMenu()
		SetTimeout(1400,function()
			SetEntityCoords(ped,339.77185058594,-584.65423583984,28.796836853027,0,0,0,0)    -- في حال غيرت اي احداثية بالاسفل بدل نفس الاحداثية هنا
			SetEntityHeading(ped,32.76)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			DoScreenFadeIn(1000)
		end)

	elseif data == "3andar" then
		DoScreenFadeOut(1000)
		ToggleActionMenu()
		SetTimeout(1400,function()
			SetEntityCoords(ped,330.18417358398,-600.98809814453,43.28405380249,0,0,0,0)    -- في حال غيرت اي احداثية بالاسفل بدل نفس الاحداثية هنا
			SetEntityHeading(ped,32.76)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			DoScreenFadeIn(1000)
		end)

	elseif data == "4andar" then
		DoScreenFadeOut(1000)
		ToggleActionMenu()
		SetTimeout(1400,function()
			SetEntityCoords(ped,327.18295288086,-603.63818359375,43.28405380249,0,0,0,0)    -- في حال غيرت اي احداثية بالاسفل بدل نفس الاحداثية هنا
			SetEntityHeading(ped,32.76)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			DoScreenFadeIn(1000)
		end)

	elseif data == "5andar" then
		DoScreenFadeOut(1000)
		ToggleActionMenu()
		SetTimeout(1400,function()
			SetEntityCoords(ped,351.01123046875,-588.36206054688,28.796834945679,0,0,0,0)    -- في حال غيرت اي احداثية بالاسفل بدل نفس الاحداثية هنا
			SetEntityHeading(ped,32.76)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			DoScreenFadeIn(1000)
		end)

	elseif data == "heli" then
		DoScreenFadeOut(1000)
		ToggleActionMenu()
		SetTimeout(1400,function()
			SetEntityCoords(ped,338.89300537109,-583.95642089844,74.161697387695,0,0,0,0)    -- في حال غيرت اي احداثية بالاسفل بدل نفس الاحداثية هنا
			SetEntityHeading(ped,32.76)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			DoScreenFadeIn(1000)
		end)
		
	elseif data == "nothing" then
		TriggerEvent("Notify","ﺽﻮﻓﺮﻣ",".ﻞﻄﻌﻣ ﺭﺯ")
	
	elseif data == "fechar" then
		ToggleActionMenu()
	
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ احداثيات ]---------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local elevator = {
	{ ['x'] = 341.0583190918, ['y'] = -580.9287109375, ['z'] = 28.796863555908 }, -- -1  في حال بدلت اي احداثية هنا لا تنسى تبدله بالنظير حقها فوق

	{ ['x'] = 332.17782592773, ['y'] = -595.53277587891, ['z'] = 43.284103393555 }, -- -2  في حال بدلت اي احداثية هنا لا تنسى تبدله بالنظير حقها فوق

	{ ['x'] = 344.57272338867, ['y'] = -586.31140136719, ['z'] = 28.796838760376 }, -- -3   في حال بدلت اي احداثية هنا لا تنسى تبدله بالنظير حقها فوق

	{ ['x'] = 339.77185058594, ['y'] = -584.65423583984, ['z'] = 28.796836853027 }, -- T  في حال بدلت اي احداثية هنا لا تنسى تبدله بالنظير حقها فوق

	{ ['x'] = 330.18417358398, ['y'] = -600.98809814453, ['z'] = 43.28405380249 }, -- 3  في حال بدلت اي احداثية هنا لا تنسى تبدله بالنظير حقها فوق

	{ ['x'] = 327.18295288086, ['y'] = -603.63818359375, ['z'] = 43.28405380249 }, -- 4  في حال بدلت اي احداثية هنا لا تنسى تبدله بالنظير حقها فوق

	{ ['x'] = 351.011230468754, ['y'] = -588.36206054688, ['z'] = 28.796834945679 }, -- 5   في حال بدلت اي احداثية هنا لا تنسى تبدله بالنظير حقها فوق

	{ ['x'] = 338.89300537109, ['y'] = -583.95642089844, ['z'] = 74.161697387695 }, -- HELI   في حال بدلت اي احداثية هنا لا تنسى تبدله بالنظير حقها فوق
}
-----------------------------------------------------------------------------------------------------------------------------------------
--[ القائمة ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	while true do
		local sleep = 1000

		for k,v in pairs(elevator) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
			local distance = GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true)
			local elevator = elevator[k]

			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), elevator.x, elevator.y, elevator.z, true ) <= 2 then
				sleep = 5
				DrawText3D(elevator.x, elevator.y, elevator.z, "<FONT FACE = 'A9eelsh'>"..'[~g~E~w~] ﻂﻐﺿﺍ ﺪﻌﺼﻤﻟﺍ ﻡﺍﺪﺨﺘﺳﻻ')
			end
			
			if distance <= 15 then
				sleep = 5
				DrawMarker(30, elevator.x, elevator.y, elevator.z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,0,140,255,90,0,0,0,1)
				if distance <= 2.3 then
					if IsControlJustPressed(0,38) then
						ToggleActionMenu()
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ فنكشين ]-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.40, 0.40)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end

-- Updates
        print("^4"..GetCurrentResourceName() .."^7 is on the ^2newest ^7version!^7")