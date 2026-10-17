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