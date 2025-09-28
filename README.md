# 🎨 VSCode/Cursor Themes Collection

<<<<<<< HEAD
Коллекция тем для VSCode и Cursor редакторов.

## 📁 Структура

```
MY_VSCODE_THEMES/
├── themes/
│   ├── roborobot-authentic/
│   ├── gta4-liberty-city/
│   └── другие темы...
└── README.md
```

## 🚀 Установка тем

### Для VSCode

#### Способ 1: Через Command Palette
1. `Ctrl + Shift + P`
2. `Preferences: Color Theme`
3. Выберите нужную тему из списка

#### Способ 2: Копирование в папку расширений
```powershell
# PowerShell
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.vscode\extensions"
Copy-Item -Path ".\themes\*" -Destination "$env:USERPROFILE\.vscode\extensions\" -Recurse -Force
```

### Для Cursor
=======
Коллекция моих кастомных тем для VS Code и Cursor.

## 🤖 RoboRobot Themes

### RoboRobot Classic Theme
- **Описание**: Темная тема с яркими матричными цветами в стиле киберпанк
- **Цвета**: Зеленый текст на черном фоне, красные акценты
- **Файл**: `roborobot-classic/`

### RoboRobot Authentic Theme  
- **Описание**: Темная тема с аутентичными киберпанк цветами - комфортная для длительной работы
- **Цвета**: Приглушенные серые тона, профессиональный вид
- **Файл**: `roborobot-authentic/`

## 🏙️ GTA IV Liberty City Theme

### GTA IV Liberty City Theme
- **Описание**: Темная тема в стиле Grand Theft Auto IV с атмосферой Liberty City
- **Цвета**: Оранжевые акценты, городские цвета, неоновые подсветки
- **Файл**: `gta4-liberty-city/`

## 📦 Установка

### Локальная установка
1. Откройте VS Code/Cursor
2. Перейдите в Extensions (Ctrl+Shift+X)
3. Нажмите "..." и выберите "Install from VSIX..."
4. Выберите файл `.vsix` из папки темы

## 🚀 Быстрый старт

1. **Выберите тему** из папок выше
2. **Упакуйте тему**: `cd roborobot-classic && vsce package`
3. **Установите**: Через VS Code Extensions → Install from VSIX
4. **Примените**: Ctrl+Shift+P → "Preferences: Color Theme" → выберите тему
MIT License
>>>>>>> cb006c27a1103aeb65884442eb4018d7197e317c

#### Способ 1: Через Command Palette
1. `Ctrl + Shift + P`
2. `Preferences: Color Theme`
3. Выберите нужную тему из списка

#### Способ 2: Копирование в папку расширений
```powershell
# PowerShell
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.cursor\extensions"
Copy-Item -Path ".\themes\*" -Destination "$env:USERPROFILE\.cursor\extensions\" -Recurse -Force
```

#### Способ 3: Через settings.json
```json
{
    "workbench.colorTheme": "theme-name"
}
```

## 🔧 Быстрая установка всех тем

### PowerShell (рекомендуется)
```powershell
# Для VSCode
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.vscode\extensions"
Copy-Item -Path ".\themes\*" -Destination "$env:USERPROFILE\.vscode\extensions\" -Recurse -Force

# Для Cursor
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.cursor\extensions"
Copy-Item -Path ".\themes\*" -Destination "$env:USERPROFILE\.cursor\extensions\" -Recurse -Force

Write-Host "Все темы установлены!" -ForegroundColor Green
```

### Command Prompt
```cmd
# Для VSCode
mkdir "%USERPROFILE%\.vscode\extensions" 2>nul
xcopy ".\themes\*" "%USERPROFILE%\.vscode\extensions\" /E /I /Y

# Для Cursor
mkdir "%USERPROFILE%\.cursor\extensions" 2>nul
xcopy ".\themes\*" "%USERPROFILE%\.cursor\extensions\" /E /I /Y

echo Все темы установлены!
```

## 📋 Доступные темы

- **roborobot-authentic** - Аутентичная робот-тема
- **gta4-liberty-city** - Тема в стиле GTA IV
- *Добавьте другие темы по мере необходимости*

## 🔄 После установки

1. Перезапустите редактор
2. `Ctrl + Shift + P` → `Developer: Reload Window`
3. `Ctrl + Shift + P` → `Preferences: Color Theme`
4. Выберите нужную тему

## ⚠️ Важно

- Убедитесь, что у вас есть права на запись в папки расширений
- Сделайте бэкап существующих тем перед установкой
- Проверьте, что в папке темы есть файл `package.json`

## 🛠️ Troubleshooting

### Тема не появляется в списке
1. Проверьте структуру папки темы (должен быть `package.json`)
2. Перезапустите редактор
3. Проверьте права доступа к папке расширений

### Ошибки при копировании
1. Запустите PowerShell/CMD от имени администратора
2. Проверьте пути к папкам
3. Убедитесь, что папки существуют

## 📝 Добавление новых тем

1. Создайте папку с именем темы в `themes/`
2. Добавьте файлы темы (`package.json`, `themes/*.json`)
3. Обновите этот README
4. Запушьте изменения в репозиторий

## 🔄 Обновление репозитория

```bash
git add .
git commit -m "Add VSCode/Cursor themes collection"
git push origin main
```