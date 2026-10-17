print("[Graphics] Инициализация визуальных эффектов...")

if _G.ApplySky then _G.ApplySky() end
if _G.ApplyEffects then _G.ApplyEffects() end

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Graphics",
    Text = "Космическое небо и неоновый туман включены.",
    Duration = 5
})