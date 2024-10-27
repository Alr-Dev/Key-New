local validKeys = { "!@$@!@$@#!%#%!#%#@%!%#$!#$!#@!#@!s@!@#@!#!s!@#!$!@$!@$!$@!@$$#¨#%&$%&$&$%yh%$yg$¨&$%&$%&$&" } -- Linktverse key, dont change!
local PaidKeys = {
    'SPJ-REACHPAIDKEY-31G30N-O82E3L-HWJ6RV-296VFQ',
'SPJ-REACHPAIDKEY-7D37Q1-P8RO91-3IEP03-JFVKTJ',
'SPJ-REACHPAIDKEY-9SL3ZK-BY4JY7-QO4BFQ-Q882W1',
'SPJ-REACHPAIDKEY-OZR44C-5A5GF5-LUQFRY-RW93AB',
'SPJ-REACHPAIDKEY-JX0P8U-H1YESI-2S86NR-VFERCR',
'SPJ-REACHPAIDKEY-JB4H45-3QG9N2-DC6YRQ-HLV2CZ',
'SPJ-REACHPAIDKEY-68UYN7-TZP766-7VXC68-KRKCQP',
'SPJ-REACHPAIDKEY-4XXXK1-M53VDF-I5A49C-CUD9XM',
'SPJ-REACHPAIDKEY-YK42R5-26V01A-7S13SC-ISSXNS',
'SPJ-REACHPAIDKEY-XFK1ED-CS1J7W-JW7NAK-O1FT3Y',
'SPJ-REACHPAIDKEY-KPK0ED-BR60B9-Z6W02Z-C8B03X',
'SPJ-REACHPAIDKEY-UEZ54K-1U28ER-OGE9F5-UWJVLF',
'SPJ-REACHPAIDKEY-85D89A-PNQ17Y-7ZZ5S8-42C3R5',
'SPJ-REACHPAIDKEY-DN736F-0599TC-AIO7VI-190933',
'SPJ-REACHPAIDKEY-2V13BO-HDS92F-F9HNUL-CJZZRY',
'SPJ-REACHPAIDKEY-56079P-VROX60-ION3RY-5QWYWL',
'SPJ-REACHPAIDKEY-H3QUB2-89HAE7-BR4LMI-45NQS9',
'SPJ-REACHPAIDKEY-Y4GXCR-0IZ7DB-S0ARVC-25XOGV',
'SPJ-REACHPAIDKEY-A2MBOT-OSI1IH-757YFM-TQ7SE4',
'SPJ-REACHPAIDKEY-5XHRFA-HY3E4K-UUOHJ1-NDU51U',
'SPJ-REACHPAIDKEY-LTYHJQ-M8VPXR-2SBFFE-364AB2',
'SPJ-REACHPAIDKEY-ETMMXT-HSM854-4ULPS1-87LT4F',
'SPJ-REACHPAIDKEY-KGATXI-S9H83Z-30CMB8-Z2WUK4',
'SPJ-REACHPAIDKEY-U6LF47-CTUJQE-6E3GRT-ZMS0GM',
'SPJ-REACHPAIDKEY-875H05-GAKFII-OFNTOY-W0LVVX',
'SPJ-REACHPAIDKEY-WAJQ74-XLNW6E-H7T9YN-LTDUS4',
'SPJ-REACHPAIDKEY-PCIXVC-16NRWX-GS1Z6I-00BNQ1',
'SPJ-REACHPAIDKEY-Y66KXN-RYMKJT-9ZIS75-2021PL',
'SPJ-REACHPAIDKEY-TF02D6-5IRGQ6-47574K-W6P5WD',
'SPJ-REACHPAIDKEY-N9VH8T-M9X5F1-IX7ZMU-QCAWFK',
'SPJ-REACHPAIDKEY-0UY77I-GHCEB3-C6WOB0-JGS4L0',
'SPJ-REACHPAIDKEY-UYSJTB-KH3OKT-XH9NH6-OEB028',
'SPJ-REACHPAIDKEY-XFVW0K-2VO95B-004U8H-A55KDZ',
'SPJ-REACHPAIDKEY-LI00GT-0XXFOP-2JAMIN-DYWEN6',
'SPJ-REACHPAIDKEY-EGH6AA-SK6T7N-0HSN8G-M5E4GU',
'SPJ-REACHPAIDKEY-QTRJ6K-UV5PPB-WBTAEK-O31BTW',
'SPJ-REACHPAIDKEY-9A5N6S-BP8AXX-4EGFBY-GPIBPT'
}

print('========\\//========')
print('==================')
print('Loading Key Verification...')

local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function verifyApiKey(apiKey, callback)
    -- Remove any leading or trailing spaces
    apiKey = apiKey:gsub("^%s*(.-)%s*$", "%1") 

    -- Verifica as validKeys
    for _, key in pairs(validKeys) do
        if key == apiKey then
            callback(true)  
            return
        end
    end
    
    -- Verifica as PaidKeys
    for _, key in pairs(PaidKeys) do
        if key == apiKey then
            callback(true)  
            return
        end
    end

    -- Caso a key não seja válida
    callback(false)
end

local function createKeyGui()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "KeyVerificationGui"
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 150)
    frame.Position = UDim2.new(0.5, -150, 0.5, -75)
    frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    frame.BorderSizePixel = 0
    frame.Parent = screenGui

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Text = "Enter API Key"
    titleLabel.Font = Enum.Font.SourceSansBold
    titleLabel.TextSize = 20
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Size = UDim2.new(1, 0, 0, 30)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Parent = frame

    local textBox = Instance.new("TextBox")
    textBox.PlaceholderText = "Enter your API key here"
    textBox.Font = Enum.Font.SourceSans
    textBox.TextSize = 18
    textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    textBox.Size = UDim2.new(1, -20, 0, 40)
    textBox.Position = UDim2.new(0, 10, 0, 40)
    textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textBox.Parent = frame

    local submitButton = Instance.new("TextButton")
    submitButton.Text = "Submit"
    submitButton.Font = Enum.Font.SourceSansBold
    submitButton.TextSize = 18
    submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    submitButton.Size = UDim2.new(0, 100, 0, 40)
    submitButton.Position = UDim2.new(0.5, -50, 0, 90)
    submitButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
    submitButton.Parent = frame

    submitButton.MouseButton1Click:Connect(function()
        local inputKey = textBox.Text

        verifyApiKey(inputKey, function(isValid)
            if isValid then
                StarterGui:SetCore("SendNotification", {
                    Title = "API Key Valid",
                    Text = "Access Granted. Loading script...",
                    Duration = 2
                })
                screenGui:Destroy()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Alr-Dev/Key-New/refs/heads/main/spjreach.luau", true))()

            else
                StarterGui:SetCore("SendNotification", {
                    Title = "Invalid API Key",
                    Text = "Please try again.",
                    Duration = 2
                })
            end
        end)
    end)
end

createKeyGui()
