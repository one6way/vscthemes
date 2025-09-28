# GTA IV Liberty City Theme Installer
# Устанавливает тему GTA IV в VS Code/Cursor

Write-Host "🏙️ Installing GTA IV Liberty City Theme..." -ForegroundColor Orange

# Путь к файлу темы
$themeFile = "gta4-liberty-city-theme-1.0.0.vsix"

# Проверяем, существует ли файл темы
if (Test-Path $themeFile) {
    Write-Host "✅ Theme file found: $themeFile" -ForegroundColor Green
    
    # Пытаемся установить через code (VS Code)
    try {
        Write-Host "📦 Installing theme in VS Code..." -ForegroundColor Yellow
        code --install-extension $themeFile
        Write-Host "✅ Theme installed in VS Code!" -ForegroundColor Green
    }
    catch {
        Write-Host "⚠️ VS Code not found or installation failed" -ForegroundColor Yellow
    }
    
    # Пытаемся установить через cursor (Cursor IDE)
    try {
        Write-Host "📦 Installing theme in Cursor..." -ForegroundColor Yellow
        cursor --install-extension $themeFile
        Write-Host "✅ Theme installed in Cursor!" -ForegroundColor Green
    }
    catch {
        Write-Host "⚠️ Cursor not found or installation failed" -ForegroundColor Yellow
    }
    
    Write-Host ""
    Write-Host "🎮 GTA IV Liberty City Theme Installation Complete!" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "📋 Next steps:" -ForegroundColor White
    Write-Host "1. Open VS Code or Cursor" -ForegroundColor Gray
    Write-Host "2. Press Ctrl+Shift+P (or Cmd+Shift+P on Mac)" -ForegroundColor Gray
    Write-Host "3. Type 'Preferences: Color Theme'" -ForegroundColor Gray
    Write-Host "4. Select 'GTA IV Liberty City' from the list" -ForegroundColor Gray
    Write-Host ""
    Write-Host "🏙️ Welcome to Liberty City! 🚗" -ForegroundColor Orange
}
else {
    Write-Host "❌ Theme file not found: $themeFile" -ForegroundColor Red
    Write-Host "Please run 'vsce package' first to create the theme file." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")



