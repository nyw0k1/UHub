--UHub

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() --Библиотека чтобы было удобно

local plr = game.Players.LocalPlayer --Игрок (в начале без plr писал и указывал игрока на прямую)

local Window = OrionLib:MakeWindow({Name = "UHub", HidePremium = false, SaveConfig = true, ConfigFolder = "uhubcfg", IntroEnabled = true, IntroText = "UHub by Interput"}) --Создает главное окно
--[[
Name - название окна
HidePremium - забей
SaveConfig - сохранять конфиг или нет(чтобы например один раз указать цвет какой-нибудь херни)
ConfigFolder - название папки с конфигами
IntroEnabled, IntroText - забей
]]

local LocalPlayer_tab = Window:MakeTab({  --Создает вкладку
	Name = "LocalPlayer",                 --имя вкладки
	Icon = "rbxassetid://11422154787",    --Иконка вкладки
	PremiumOnly = false                   --забей
})

local Movement_section = LocalPlayer_tab:AddSection({  --создает разделялку
	Name = "Movement"                                  --думаю сам поймешь
})

LocalPlayer_tab:AddSlider({   --создает ползунок
	Name = "Walkspeed",       --сам поймешь
	Min = 1,                  --минималка ползунка
	Max = 500,                --максималка соответственно
	Default = 16,             --стандартное значение ползунка
	Color = Color3.fromRGB(0,0,204),  --цвет
	Increment = 1,                    --хз че это, но вроде бы деление
	ValueName = "wsValue",            --типа ID
	Callback = function(Value)        --функция ползунка
		game.Players.LocalPlayer.Character.Humanoid.Walkspeed = Value  --меняет скорость игрока
	end    --завершает функцию
})

LocalPlayer_tab:AddSlider({  --все так же как в прошлом ползунке
	Name = "Jump power",
	Min = 1,
	Max = 900,
	Default = 50,
	Color = Color3.fromRGB(0,0,204),
	Increment = 1,
	ValueName = "jpValue", 
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value  --меняет силу прыжка
	end    
})

if game.Players.LocalPlayer.Name = MoonsparksHave or sigord_valhala or IGROray1YT or CAXAPOK2024_19 then --если ник игрока мой или твой то скрипт создает секретную вкладочку
	local Dev_tab = Window:MakeTab({
		Name = "Dev",
		Icon = "rbxassetid://11422154787",
		PremiumOnly = false
	})
	
	Tab:AddButton({             --создает кнопку
		Name = "Блитси я люблю тебя",
		Callback = function()   --функция кнопки
			local DevWindow = OrionLib:MakeWindow({Name = "Мое очко", HidePremium = false, SaveConfig = false, ConfigFolder = "nil", IntroEnabled = true, IntroText = "ЗАЛУПА ХУЙ"}) --создает окно

			local Showcase = Window:MakeTab({
				Name = "Кнопочки",
				Icon = "rbxassetid://18848110916",
				PremiumOnly = false
			})
		  end    
	})
end




OrionLib:Init()
