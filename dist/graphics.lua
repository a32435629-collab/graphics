_G.ApplySky = function()
    local Lighting = game:GetService("Lighting")
    
    -- Удаляем старое небо, если есть
    for _, v in pairs(Lighting:GetChildren()) do
        if v:IsA("Sky") or v:IsA("Atmosphere") then
            v:Destroy()
        end
    end

    -- Создаем наше неоновое небо
    local sky = Instance.new("Sky")
    sky.SkyboxBk = "rbxassetid://159454299"
    sky.SkyboxDn = "rbxassetid://159454296"
    sky.SkyboxFt = "rbxassetid://159454293"
    sky.SkyboxLf = "rbxassetid://159454286"
    sky.SkyboxRt = "rbxassetid://159454300"
    sky.SkyboxUp = "rbxassetid://159454288"
    sky.Parent = Lighting
    
    print("[Graphics] Небо установлено.")
end 
_G.ApplyEffects = function()
    local Lighting = game:GetService("Lighting")
    
    -- Настраиваем атмосферный туман (фиолетовый закат)
    Lighting.FogColor = Color3.fromRGB(120, 50, 200)
    Lighting.FogStart = 0
    Lighting.FogEnd = 600 -- Туман на средней дистанции
    
    -- Добавляем свечение (Bloom)
    local bloom = Instance.new("BloomEffect")
    bloom.Intensity = 1.2
    bloom.Size = 32
    bloom.Threshold = 0.8
    bloom.Parent = Lighting
    
    -- Делаем цвета более насыщенными (Киберпанк)
    local cc = Instance.new("ColorCorrectionEffect")
    cc.TintColor = Color3.fromRGB(180, 150, 255) -- Легкий фиолетовый оттенок
    cc.Saturation = 0.4
    cc.Contrast = 0.2
    cc.Parent = Lighting
    
    print("[Graphics] Эффекты освещения установлены.")
end 
print("[Graphics] Инициализация визуальных эффектов...")

if _G.ApplySky then _G.ApplySky() end
if _G.ApplyEffects then _G.ApplyEffects() end

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Graphics",
    Text = "Космическое небо и неоновый туман включены.",
    Duration = 5
})