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