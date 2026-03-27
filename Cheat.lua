-- Ссылка на библиотеку
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

-- Создаем функцию для ввода ключа
local function promptKey()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "KeyPrompt"
    ScreenGui.Parent = game:GetService("CoreGui") -- Обязательно в CoreGui

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 300, 0, 150)
    Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
    Frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    Frame.Parent = ScreenGui

    local TextBox = Instance.new("TextBox")
    TextBox.Size = UDim2.new(1, -20, 0, 50)
    TextBox.Position = UDim2.new(0, 10, 0, 20)
    TextBox.PlaceholderText = "Введите ключ"
    TextBox.Parent = Frame

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1, -20, 0, 40)
    Button.Position = UDim2.new(0, 10, 0, 80)
    Button.Text = "Подтвердить"
    Button.Parent = Frame

    local enteredKey = nil
    local done = false

    Button.MouseButton1Click:Connect(function()
        enteredKey = TextBox.Text
        ScreenGui:Destroy()
        done = true
    end)

    -- Ждем, пока пользователь не введет ключ
    while not done do
        wait()
    end

    return enteredKey
end

local key = promptKey()

if key == "VHS" then
    -- Создаем окно
    local ThemeName = "RJTheme3" -- или другая тема
    local Window = Library.CreateLib("VHSCRIPT", ThemeName)

    -- Создаем вкладки и разделы
    local Tab = Window:NewTab("MyCheats")
    local Section = Tab:NewSection("Cheats")

    -- Добавляем кнопки
    Section:NewButton("SAF2", "ButtonInfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xbomber228/Cheat.SAF2/refs/heads/main/Cheat.lua"))()
    end)
    Section:NewButton("Crazy Multiverse Timeline", "ButtonInfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xbomber228/CrazyMultiverseTimeline.cheat/refs/heads/main/Cheat.lua"))()
    end)
    Section:NewButton("SOB", "ButtonInfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xcopert25/cheat-Sod/refs/heads/main/WNewcheat.lua"))()
    end)

    -- Другие разделы
    local Tab2 = Window:NewTab("OtherCheats")
    local Section2 = Tab2:NewSection("NotmyScript")

    Section2:NewButton("InifinityYierld", "ButtonInfo", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)
    Section2:NewButton("Dex", "ButtonInfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/UltraFEmotes/im-bored/refs/heads/main/dexnoapi.lua"))()
    end)
    Section2:NewButton("AntiAfk", "ButtonInfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/AntiAfk2.lua"))()
    end)
    Section2:NewButton("GodMode", "ButtonInfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Rawbr10/Roblox-Scripts/refs/heads/main/God%20Mode%20Script%20Universal"))()
    end)
    Section2:NewButton("BABFT", "ButtonInfo", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealAsu/BABFT/refs/heads/main/Loader.lua'))()
    end)
else
    print("Неверный ключ")
end
