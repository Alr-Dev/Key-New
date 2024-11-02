local allowed = {'fars39o', 'DEDEDEDEDFG0', 'Madaratrror'}
if game.Players.LocalPlayer.Name == allowed then
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
	apiKey = apiKey:gsub("^%s*(.-)%s*$", "%1") 

	for _, key in pairs(validKeys) do
		if key == apiKey then
			callback(true)  
			return
		end
	end

	for _, key in pairs(PaidKeys) do
		if key == apiKey then
			callback(true)  
			return
		end
	end

	callback(false) 
end

local function createLoadingScreen()
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "LoadingScreenGui"
	screenGui.Parent = player:WaitForChild("PlayerGui")

	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0.698, 0, 0.643, 0)
	frame.Position = UDim2.new(0.142, 0, 0.177, 0)
	frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	frame.BorderSizePixel = 0
	frame.Parent = screenGui


	local loadingLabel = Instance.new("TextLabel")
	loadingLabel.Text = "SPJ Reach"
	loadingLabel.Font = Enum.Font.Gotham
	loadingLabel.TextSize = 40
	loadingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	loadingLabel.Position = UDim2.new(0.5, -150, 0.5, -40)
	loadingLabel.Size = UDim2.new(0, 300, 0, 40)
	loadingLabel.BackgroundTransparency = 1
	loadingLabel.Parent = frame

	local loadingSubLabel = Instance.new("TextLabel")
	loadingSubLabel.Text = "Loading System..."
	loadingSubLabel.Font = Enum.Font.Gotham
	loadingSubLabel.TextSize = 20
	loadingSubLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	loadingSubLabel.Position = UDim2.new(0.5, -100, 0.5, 0)
	loadingSubLabel.Size = UDim2.new(0, 200, 0, 30)
	loadingSubLabel.BackgroundTransparency = 1
	loadingSubLabel.Parent = frame


	local loadingBarBackground = Instance.new("Frame")
	loadingBarBackground.Size = UDim2.new(0, 577, 0, 10)  
	loadingBarBackground.Position = UDim2.new(0.5, -288, 0.75, 0)  
	loadingBarBackground.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	loadingBarBackground.BorderSizePixel = 0
	loadingBarBackground.Parent = frame

	local loadingBar = Instance.new("Frame")
	loadingBar.Size = UDim2.new(0, 0, 1, 0)  
	loadingBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	loadingBar.BorderSizePixel = 0
	loadingBar.Parent = loadingBarBackground

	local loadingBarCorner = Instance.new("UICorner")
	loadingBarCorner.CornerRadius = UDim.new(0, 5)
	loadingBarCorner.Parent = loadingBar

	local function updateLoadingBar()
		for i = 1, 100 do
			loadingBar:TweenSize(UDim2.new(i / 100, 0, 1, 0), "Out", "Linear", 0.05)
			wait(0.05)
		end
	end

	updateLoadingBar()


	local skipButton = Instance.new("TextButton")
	skipButton.Text = "Skip Loading"
	skipButton.Font = Enum.Font.Gotham
	skipButton.TextSize = 18
	skipButton.TextColor3 = Color3.fromRGB(200, 200, 200)
	skipButton.Size = UDim2.new(0, 150, 0, 30)
	skipButton.Position = UDim2.new(0.5, -75, 0.85, 0)
	skipButton.BackgroundTransparency = 1
	skipButton.Parent = frame

	skipButton.MouseButton1Click:Connect(function()
		screenGui:Destroy()

	end)

	if screenGui == nil then

	end

end
local function createKeyGui()
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "KeyVerificationGui"
	screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0, 350, 0, 152)
	frame.Position = UDim2.new(0.5, -175, 0.5, -76) 
	frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
	frame.BorderSizePixel = 0
	frame.Parent = screenGui

	local frameCorner = Instance.new("UICorner")
	frameCorner.CornerRadius = UDim.new(0, 9)
	frameCorner.Parent = frame

	local titleLabel = Instance.new("TextLabel")
	titleLabel.Text = "Enter API Key"
	titleLabel.Font = Enum.Font.Gotham 
	titleLabel.TextSize = 24 
	titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	titleLabel.Size = UDim2.new(1, 0, 0, 40)
	titleLabel.BackgroundTransparency = 1
	titleLabel.Parent = frame

	local textBox = Instance.new("TextBox")
	textBox.PlaceholderText = "Enter your API key here"
	textBox.Font = Enum.Font.Gotham 
	textBox.TextSize = 18
	textBox.TextColor3 = Color3.fromRGB(255, 255, 255) 
	textBox.PlaceholderColor3 = Color3.fromRGB(200, 200, 200) 
	textBox.Size = UDim2.new(1, -30, 0, 40)
	textBox.Position = UDim2.new(0, 15, 0, 40)
	textBox.BackgroundColor3 = Color3.fromRGB(16, 16, 16) 
	textBox.BorderSizePixel = 0
	textBox.Parent = frame

	local textBoxCorner = Instance.new("UICorner")
	textBoxCorner.CornerRadius = UDim.new(0, 8)
	textBoxCorner.Parent = textBox

	local submitButton = Instance.new("TextButton")
	submitButton.Text = "Submit"
	submitButton.Font = Enum.Font.Gotham
	submitButton.TextSize = 18
	submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	submitButton.Size = UDim2.new(0, 100, 0, 40)
	submitButton.Position = UDim2.new(0.25, -50, 0, 90)
	submitButton.BackgroundColor3 = Color3.fromRGB(17, 16, 16) 
	submitButton.Parent = frame

	local submitButtonCorner = Instance.new("UICorner")
	submitButtonCorner.CornerRadius = UDim.new(0, 8)
	submitButtonCorner.Parent = submitButton

	local copyButton = Instance.new("TextButton")
	copyButton.Text = "Copy Key discord server"
	copyButton.Font = Enum.Font.Gotham
	copyButton.TextSize = 18
	copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	copyButton.Size = UDim2.new(0, 130, 0, 40)
	copyButton.Position = UDim2.new(0.75, -65, 0, 90)
	copyButton.BackgroundColor3 = Color3.fromRGB(17, 16, 16)
	copyButton.Parent = frame

	local copyButtonCorner = Instance.new("UICorner")
	copyButtonCorner.CornerRadius = UDim.new(0, 8)
	copyButtonCorner.Parent = copyButton

	submitButton.MouseButton1Click:Connect(function()
		local inputKey = textBox.Text

		verifyApiKey(inputKey, function(isValid)
			if isValid then
				game.StarterGui:SetCore("SendNotification", {
					Title = "API Key Valid",
					Text = "Access Granted. Loading script...",
					Duration = 2
				})
				screenGui:Destroy()
				createLoadingScreen()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Alr-Dev/Key-New/refs/heads/main/spjreach.luau", true))()
					
			else
				game.StarterGui:SetCore("SendNotification", {
					Title = "Invalid API Key",
					Text = "Please try again.",
					Duration = 2
				})
			end
		end)
	end)

	copyButton.MouseButton1Click:Connect(function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Link Copied",
			Text = "Link was sucessfull copied.",
			Duration = 2
		})
		setclipboard('https://discord.gg/eS9Xk3amVM')
	end)
end
createKeyGui()
else
print('Ur not allowed')
end
