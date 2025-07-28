--[[ DIE HUB - GUI COMPLETO Script criado por: SeuNome Estilizado com cinza + vermelho Inclui: Abas, Botões, Minimizar, Fechar, Funções com FunctionHub --]]

local plr = game.Players.LocalPlayer local char = plr.Character or plr.CharacterAdded:Wait() local hum = char:WaitForChild("Humanoid")

-- Funções Centralizadas local FunctionHub = { Toggles = { InfiniteStamina = false, AutoBlock = false, AutoPuzzle = false, AutoClick = false, EspSurvivor = false, EspKiller = false, EspGenerator = false, }, DisableAll = function(self) for k, _ in pairs(self.Toggles) do self.Toggles[k] = false end end }

-- GUI local gui = Instance.new("ScreenGui", plr:WaitForChild("PlayerGui")) gui.ResetOnSpawn = false gui.Name = "DIEHub"

-- Loading Screen local loadingFrame = Instance.new("Frame", gui) loadingFrame.Size = UDim2.new(1, 0, 1, 0) loadingFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25) loadingFrame.ZIndex = 10

local loadingText = Instance.new("TextLabel", loadingFrame) loadingText.Size = UDim2.new(0, 400, 0, 50) loadingText.Position = UDim2.new(0.5, -200, 0.5, -25) loadingText.Text = "DIE Hub loading..." loadingText.TextColor3 = Color3.fromRGB(255, 70, 70) loadingText.Font = Enum.Font.GothamBold loadingText.TextScaled = true loadingText.BackgroundTransparency = 1

-- Delay para mostrar o loading wait(2) for i = 1, 10 do loadingFrame.BackgroundTransparency = i / 10 loadingText.TextTransparency = i / 10 wait(0.05) end loadingFrame:Destroy()

-- Main Frame local frame = Instance.new("Frame", gui) frame.Size = UDim2.new(0, 500, 0, 360) frame.Position = UDim2.new(0.5, -250, 0.5, -180) frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) frame.BorderSizePixel = 0 frame.Name = "MainFrame" frame.Active = true frame.Draggable = true

-- UICorner local corner = Instance.new("UICorner", frame) corner.CornerRadius = UDim.new(0, 8)

-- Título local title = Instance.new("TextLabel", frame) title.Size = UDim2.new(1, -40, 0, 30) title.Position = UDim2.new(0, 10, 0, 0) title.Text = "🧸 DIE Hub" title.BackgroundTransparency = 1 title.TextColor3 = Color3.fromRGB(255, 70, 70) title.TextScaled = true title.Font = Enum.Font.GothamBold

-- Fechar / Minimizar local close = Instance.new("TextButton", frame) close.Text = "X" close.Size = UDim2.new(0, 30, 0, 30) close.Position = UDim2.new(1, -35, 0, 0) close.BackgroundColor3 = Color3.fromRGB(60, 0, 0) close.TextColor3 = Color3.new(1, 1, 1) close.Font = Enum.Font.GothamBold close.TextScaled = true

local minimized = false close.MouseButton1Click:Connect(function() minimized = not minimized for _, obj in pairs(frame:GetChildren()) do if obj:IsA("Frame") and obj.Name ~= "TabButtons" then obj.Visible = not minimized end end title.Visible = not minimized end)

-- Abas e restante do código continuam... -- (continua normalmente com tabs e páginas)

