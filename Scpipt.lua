--[[
    HUHU HUB - SECURE KEY SYSTEM & SCRIPT LOADER (OPTIMIZED)
    Theme: Huhu Hub Blue Edition | Key: 261291
]]--

local CorrectKey = "261291"

local function ProtectGui(gui)
    gui.Parent = (gethui and gethui()) or game:GetService("CoreGui")
end

local function RunOriginalScript()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Emerald/script.luau"))()
    end)
end

local function Create(className, parent, props)
    local instance = Instance.new(className)
    for k, v in pairs(props) do
        instance[k] = v
    end
    instance.Parent = parent
    return instance
end

local KeyGui = Create("ScreenGui", nil, {Name = "HuhuHub_KeySystem", ResetOnSpawn = false})
ProtectGui(KeyGui)

local KeyFrame = Create("Frame", KeyGui, {
    BackgroundColor3 = Color3.fromRGB(10, 18, 35),
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, -210, 0.5, -140),
    Size = UDim2.new(0, 420, 0, 285)
})
Create("UICorner", KeyFrame, {CornerRadius = UDim.new(0, 12)})
Create("UIStroke", KeyFrame, {Color = Color3.fromRGB(30, 144, 255), Thickness = 1.8})

local TopBarKey = Create("Frame", KeyFrame, {
    BackgroundColor3 = Color3.fromRGB(6, 12, 24),
    BorderSizePixel = 0,
    Size = UDim2.new(1, 0, 0, 45)
})
Create("UICorner", TopBarKey, {CornerRadius = UDim.new(0, 12)})

local LogoFrame = Create("Frame", TopBarKey, {
    BackgroundColor3 = Color3.fromRGB(0, 130, 255),
    Position = UDim2.new(0, 12, 0.5, -14),
    Size = UDim2.new(0, 28, 0, 28)
})
Create("UICorner", LogoFrame, {CornerRadius = UDim.new(1, 0)})
Create("TextLabel", LogoFrame, {
    BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0),
    Font = Enum.Font.FredokaOne, Text = "H", TextColor3 = Color3.new(1, 1, 1), TextSize = 16
})

Create("TextLabel", TopBarKey, {
    BackgroundTransparency = 1, Position = UDim2.new(0, 50, 0, 0), Size = UDim2.new(0, 250, 1, 0),
    Font = Enum.Font.FredokaOne, Text = "HUHU HUB", TextColor3 = Color3.fromRGB(120, 210, 255), TextSize = 16, TextXAlignment = Enum.TextXAlignment.Left
})

local CloseKeyBtn = Create("TextButton", TopBarKey, {
    BackgroundColor3 = Color3.fromRGB(220, 50, 50), Position = UDim2.new(1, -38, 0.5, -12), Size = UDim2.new(0, 24, 0, 24),
    Font = Enum.Font.GothamBold, Text = "X", TextColor3 = Color3.new(1, 1, 1), TextSize = 11
})
Create("UICorner", CloseKeyBtn, {CornerRadius = UDim.new(0, 6)})
CloseKeyBtn.MouseButton1Click:Connect(function() KeyGui:Destroy() end)

local Box = Create("TextBox", KeyFrame, {
    BackgroundColor3 = Color3.fromRGB(15, 26, 48), Position = UDim2.new(0.5, -180, 0, 68), Size = UDim2.new(0, 360, 0, 42),
    PlaceholderText = "Nhập Key vào đây...", PlaceholderColor3 = Color3.fromRGB(110, 140, 180),
    Text = "", TextColor3 = Color3.new(1, 1, 1), Font = Enum.Font.GothamBold, TextSize = 13
})
Create("UICorner", Box, {CornerRadius = UDim.new(0, 8)})
Create("UIStroke", Box, {Color = Color3.fromRGB(30, 120, 240), Thickness = 1.2})

local StatusLbl = Create("TextLabel", KeyFrame, {
    BackgroundTransparency = 1, Position = UDim2.new(0, 30, 0, 122), Size = UDim2.new(1, -60, 0, 20),
    Font = Enum.Font.GothamMedium, Text = "Nhắn TikTok @khiconchoiff để lấy Key.", TextColor3 = Color3.fromRGB(160, 190, 230), TextSize = 11
})

local GetKeyBtn = Create("TextButton", KeyFrame, {
    BackgroundColor3 = Color3.fromRGB(14, 55, 120), Position = UDim2.new(0, 30, 0, 160), Size = UDim2.new(0, 170, 0, 42),
    Font = Enum.Font.GothamBold, Text = "Lấy Key (TikTok)", TextColor3 = Color3.fromRGB(150, 220, 255), TextSize = 13
})
Create("UICorner", GetKeyBtn, {CornerRadius = UDim.new(0, 8)})

local CheckKeyBtn = Create("TextButton", KeyFrame, {
    BackgroundColor3 = Color3.fromRGB(0, 120, 245), Position = UDim2.new(0, 220, 0, 160), Size = UDim2.new(0, 170, 0, 42),
    Font = Enum.Font.GothamBold, Text = "Xác Nhận Key", TextColor3 = Color3.new(1, 1, 1), TextSize = 13
})
Create("UICorner", CheckKeyBtn, {CornerRadius = UDim.new(0, 8)})

GetKeyBtn.MouseButton1Click:Connect(function()
    pcall(function() setclipboard("https://www.tiktok.com/@khiconchoiff") end)
    GetKeyBtn.Text = "Đã lưu @khiconchoiff!"
    task.wait(1.5)
    GetKeyBtn.Text = "Lấy Key (TikTok)"
end)

CheckKeyBtn.MouseButton1Click:Connect(function()
    if string.gsub(Box.Text, "%s+", "") == CorrectKey then
        StatusLbl.TextColor3 = Color3.fromRGB(80, 255, 160)
        StatusLbl.Text = "Xác nhận thành công! Đang tải script..."
        task.wait(1.5)
        KeyGui:Destroy()
        RunOriginalScript()
    else
        StatusLbl.TextColor3 = Color3.fromRGB(255, 80, 80)
        StatusLbl.Text = "Mã sai hoặc hết hạn!"
        local origPos = KeyFrame.Position
        for _ = 1, 3 do
            KeyFrame.Position = origPos + UDim2.new(0, -6, 0, 0)
            task.wait(0.04)
            KeyFrame.Position = origPos + UDim2.new(0, 6, 0, 0)
            task.wait(0.04)
        end
        KeyFrame.Position = origPos
    end
end)
