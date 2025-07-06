-- Tigrinho Mods - UI Flutuante com Speed e ESPs

local Players = game:GetService("Players") local player = Players.LocalPlayer local PlayerGui = player:WaitForChild("PlayerGui")

local speed = 16 -- Valor inicial do WalkSpeed local espBox, espLine, espNome, espAlerta = false, false, false, false

local screenGui = Instance.new("ScreenGui") screenGui.Name = "TigrinhoMods" screenGui.Parent = PlayerGui

local frame = Instance.new("Frame") frame.Size = UDim2.new(0, 300, 0, 400) frame.Position = UDim2.new(0.5, -150, 0.5, -200) frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20) frame.Active = true frame.Draggable = true frame.Parent = screenGui

local title = Instance.new("TextLabel") title.Size = UDim2.new(1, 0, 0, 50) title.BackgroundTransparency = 1 title.Text = "Tigrinho Mods" title.TextColor3 = Color3.fromRGB(255, 255, 0) title.Font = Enum.Font.SourceSansBold title.TextSize = 24 title.Parent = frame

local speedLabel = Instance.new("TextLabel") speedLabel.Position = UDim2.new(0, 10, 0, 60) speedLabel.Size = UDim2.new(0, 280, 0, 20) speedLabel.BackgroundTransparency = 1 speedLabel.TextColor3 = Color3.fromRGB(255, 255, 255) speedLabel.Text = "Speed: " .. speed speedLabel.Parent = frame

local speedInput = Instance.new("TextBox") speedInput.Position = UDim2.new(0, 10, 0, 90) speedInput.Size = UDim2.new(0, 280, 0, 30) speedInput.Text = tostring(speed) speedInput.TextColor3 = Color3.fromRGB(0, 0, 0) speedInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255) speedInput.Parent = frame

speedInput.FocusLost:Connect(function() local value = tonumber(speedInput.Text) if value and value >= 0 and value <= 9000 then speed = value speedLabel.Text = "Speed: " .. speed player.Character.Humanoid.WalkSpeed = speed else speedInput.Text = tostring(speed) end end)

local function createCheck(y, label, callback) local btn = Instance.new("TextButton") btn.Position = UDim2.new(0, 10, 0, y) btn.Size = UDim2.new(0, 280, 0, 30) btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50) btn.TextColor3 = Color3.fromRGB(255, 255, 255) btn.Text = "[ ] " .. label btn.Parent = frame

local active = false
btn.MouseButton1Click:Connect(function()
    active = not active
    btn.Text = active and "[X] " .. label or "[ ] " .. label
    callback(active)
end)

end

createCheck(140, "ESP Box", function(v) espBox = v end) createCheck(180, "ESP Line", function(v) espLine = v end) createCheck(220, "ESP Nome", function(v) espNome = v end) createCheck(260, "ESP Alerta", function(v) espAlerta = v end)

while true do task.wait(1) if espBox then -- Código para ESP Box end if espLine then -- Código para ESP Line end if espNome then -- Código para ESP Nome end if espAlerta then -- Código para ESP Alerta end end
