# 🎨 VSCode/Cursor Themes Collection

Коллекция тем для VSCode и Cursor редакторов.

## 📁 Структура

```
MY_VSCODE_THEMES/
├── themes/
│   ├── roborobot-authentic/
│   ├── theme-name-1/
│   └── theme-name-2/
└── README.md
```

## 🚀 Установка тем

### Для VSCode

#### Способ 1: Через Command Palette
1. `Ctrl + Shift + P`
2. `Preferences: Color Theme`
3. Выберите нужную тему из списка

#### Способ 2: Через Extensions
1. `Ctrl + Shift + X`
2. `Extensions: Install from VSIX...`
3. Выберите файл `.vsix` из папки темы

#### Способ 3: Копирование в папку расширений
```powershell
# PowerShell
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.vscode\extensions"
Copy-Item -Path ".\themes\*" -Destination "$env:USERPROFILE\.vscode\extensions\" -Recurse -Force
```

### Для Cursor

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

## 🎯 Проверка установленных тем

### VSCode
```powershell
Get-ChildItem "$env:USERPROFILE\.vscode\extensions" | Select-Object Name
```

### Cursor
```powershell
Get-ChildItem "$env:USERPROFILE\.cursor\extensions" | Select-Object Name
```

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