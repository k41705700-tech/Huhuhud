--[[
    HUHU HUB - SECURE KEY SYSTEM & SCRIPT LOADER
    Theme: Huhu Hub Blue Edition | Key: 261291
]]--

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local CorrectKey = "261291" -- Key chuẩn xác

local function ProtectGui(gui)
    if gethui then
        gui.Parent = gethui()
    else
        gui.Parent = game:GetService("CoreGui")
    end
end

-- ==================== HÀM CHẠY SCRIPT REDZ EMERALD ====================
local function RunOriginalScript()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bloxfruitsnokey/Redz/refs/heads/main/Emerald/script.luau"))()
    end)
end

-- ==================== BẢNG GET KEY (HUHU HUB TÔNG XANH ĐẸP MẮT) ====================
local function LoadKeySystem()
    local KeyGui = Instance.new("ScreenGui")
    KeyGui.Name = "HuhuHub_KeySystem"
    KeyGui.ResetOnSpawn = false
    ProtectGui(KeyGui)

    local KeyFrame = Instance.new("Frame")
    KeyFrame.Parent = KeyGui
    KeyFrame.BackgroundColor3 = Color3.fromRGB(10, 18, 35) -- Xanh đen đậm chất Hub
    KeyFrame.BorderSizePixel = 0
    KeyFrame.Position = UDim2.new(0.5, -210, 0.5, -140)
    KeyFrame.Size = UDim2.new(0, 420, 0, 285)

    local KCorner = Instance.new("UICorner")
    KCorner.CornerRadius = UDim.new(0, 12)
    KCorner.Parent = KeyFrame

    local KStroke = Instance.new("UIStroke")
    KStroke.Color = Color3.fromRGB(30, 144, 255) -- Viền xanh dương sáng nổi bật
    KStroke.Thickness = 1.8
    KStroke.Parent = KeyFrame

    -- Thanh tiêu đề
    local TopBarKey = Instance.new("Frame")
    TopBarKey.Parent = KeyFrame
    TopBarKey.BackgroundColor3 = Color3.fromRGB(6, 12, 24)
    TopBarKey.BorderSizePixel = 0
    TopBarKey.Size = UDim2.new(1, 0, 0, 45)

    local TBKCorner = Instance.new("UICorner")
    TBKCorner.CornerRadius = UDim.new(0, 12)
    TBKCorner.Parent = TopBarKey

    -- Logo Huhu Hub (Vòng tròn xanh chứa chữ H)
    local LogoFrame = Instance.new("Frame")
    LogoFrame.Parent = TopBarKey
    LogoFrame.BackgroundColor3 = Color3.fromRGB(0, 130, 255)
    LogoFrame.Position = UDim2.new(0, 12, 0.5, -14)
    LogoFrame.Size = UDim2.new(0, 28, 0, 28)

    local LFCorner = Instance.new("UICorner")
    LFCorner.CornerRadius = UDim.new(1, 0)
    LFCorner.Parent = LogoFrame

    local LogoText = Instance.new("TextLabel")
    LogoText.Parent = LogoFrame
    LogoText.BackgroundTransparency = 1
    LogoText.Size = UDim2.new(1, 0, 1, 0)
    LogoText.Font = Enum.Font.FredokaOne
    LogoText.Text = "H"
    LogoText.TextColor3 = Color3.fromRGB(255, 255, 255)
    LogoText.TextSize = 16

    -- Tiêu đề Huhu Hub
    local Title = Instance.new("TextLabel")
    Title.Parent = TopBarKey
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0, 50, 0, 0)
    Title.Size = UDim2.new(0, 250, 1, 0)
    Title.Font = Enum.Font.FredokaOne
    Title.Text = "HUHU HUB"
    Title.TextColor3 = Color3.fromRGB(120, 210, 255)
    Title.TextSize = 16
    Title.TextXAlignment = Enum.TextXAlignment.Left

    -- Nút Thoát (X)
    local CloseKeyBtn = Instance.new("TextButton")
    CloseKeyBtn.Parent = TopBarKey
    CloseKeyBtn.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
    CloseKeyBtn.Position = UDim2.new(1, -38, 0.5, -12)
    CloseKeyBtn.Size = UDim2.new(0, 24, 0, 24)
    CloseKeyBtn.Font = Enum.Font.GothamBold
    CloseKeyBtn.Text = "X"
    CloseKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseKeyBtn.TextSize = 11

    local CKRCorner = Instance.new("UICorner")
    CKRCorner.CornerRadius = UDim.new(0, 6)
    CKRCorner.Parent = CloseKeyBtn

    CloseKeyBtn.MouseButton1Click:Connect(function()
        KeyGui:Destroy()
    end)

    -- Ô nhập Key
    local Box = Instance.new("TextBox")
    Box.Parent = KeyFrame
    Box.BackgroundColor3 = Color3.fromRGB(15, 26, 48)
    Box.Position = UDim2.new(0.5, -180, 0, 68)
    Box.Size = UDim2.new(0, 360, 0, 42)
    Box.PlaceholderText = "Nhập Key vào đây..."
    Box.PlaceholderColor3 = Color3.fromRGB(110, 140, 180)
    Box.Text = ""
    Box.TextColor3 = Color3.fromRGB(255, 255, 255)
    Box.Font = Enum.Font.GothamBold
    Box.TextSize = 13

    local BCorner = Instance.new("UICorner")
    BCorner.CornerRadius = UDim.new(0, 8)
    BCorner.Parent = Box

    local BStroke = Instance.new("UIStroke")
    BStroke.Color = Color3.fromRGB(30, 120, 240)
    BStroke.Thickness = 1.2
    BStroke.Parent = Box

    -- Dòng trạng thái
    local StatusLbl = Instance.new("TextLabel")
    StatusLbl.Parent = KeyFrame
    StatusLbl.BackgroundTransparency = 1
    StatusLbl.Position = UDim2.new(0, 30, 0, 122)
    StatusLbl.Size = UDim2.new(1, -60, 0, 20)
    StatusLbl.Font = Enum.Font.GothamMedium
    StatusLbl.Text = "Nhắn TikTok @khiconchoiff để lấy Key."
    StatusLbl.TextColor3 = Color3.fromRGB(160, 190, 230)
    StatusLbl.TextSize = 11

    -- Nút Lấy Key (TikTok)
    local GetKeyBtn = Instance.new("TextButton")
    GetKeyBtn.Parent = KeyFrame
    GetKeyBtn.BackgroundColor3 = Color3.fromRGB(14, 55, 120)
    GetKeyBtn.Position = UDim2.new(0, 30, 0, 160)
    GetKeyBtn.Size = UDim2.new(0, 170, 0, 42)
    GetKeyBtn.Font = Enum.Font.GothamBold
    GetKeyBtn.Text = "Lấy Key (TikTok)"
    GetKeyBtn.TextColor3 = Color3.fromRGB(150, 220, 255)
    GetKeyBtn.TextSize = 13

    local GKCorner = Instance.new("UICorner")
    GKCorner.CornerRadius = UDim.new(0, 8)
    GKCorner.Parent = GetKeyBtn

    -- Nút Xác Nhận Key
    local CheckKeyBtn = Instance.new("TextButton")
    CheckKeyBtn.Parent = KeyFrame
    CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 245)
    CheckKeyBtn.Position = UDim2.new(0, 220, 0, 160)
    CheckKeyBtn.Size = UDim2.new(0, 170, 0, 42)
    CheckKeyBtn.Font = Enum.Font.GothamBold
    CheckKeyBtn.Text = "Xác Nhận Key"
    CheckKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    CheckKeyBtn.TextSize = 13

    local CKCorner = Instance.new("UICorner")
    CKCorner.CornerRadius = UDim.new(0, 8)
    CKCorner.Parent = CheckKeyBtn

    -- Sự kiện bấm nút Lấy Key
    GetKeyBtn.MouseButton1Click:Connect(function()
        pcall(function() setclipboard("https://www.tiktok.com/@khiconchoiff") end)
        GetKeyBtn.Text = "Đã lưu @khiconchoiff!"
        task.wait(1.5)
        GetKeyBtn.Text = "Lấy Key (TikTok)"
    end)

    -- Sự kiện bấm Xác Nhận Key
    CheckKeyBtn.MouseButton1Click:Connect(function()
        local userKey = string.gsub(Box.Text, "%s+", "")
        
        if userKey == CorrectKey then
            StatusLbl.TextColor3 = Color3.fromRGB(80, 255, 160)
            StatusLbl.Text = "Xác nhận thành công! Đang tải script..."
            task.wait(1.5)
            KeyGui:Destroy()
            RunOriginalScript()
        else
            StatusLbl.TextColor3 = Color3.fromRGB(255, 80, 80)
            StatusLbl.Text = "Mã sai hoặc hết hạn!"
            
            -- Hiệu ứng lắc nhẹ khi sai mã
            local originalPos = KeyFrame.Position
            for i = 1, 3 do
                KeyFrame.Position = originalPos + UDim2.new(0, -6, 0, 0)
                task.wait(0.04)
                KeyFrame.Position = originalPos + UDim2.new(0, 6, 0, 0)
                task.wait(0.04)
            end
            KeyFrame.Position = originalPos
        end
    end)
end

LoadKeySystem()
