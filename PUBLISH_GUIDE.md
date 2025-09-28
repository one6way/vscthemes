# RoboRobot Themes - Publishing Guide

## Шаги для публикации в VS Code Marketplace

### 1. Регистрация Publisher ID

1. Перейдите на https://marketplace.visualstudio.com/manage
2. Войдите через Microsoft Account
3. Создайте новый Publisher ID (например: `your-username` или `roborobot-themes`)
4. Запомните этот ID - он понадобится для package.json

### 2. Создание Personal Access Token

1. Перейдите на https://dev.azure.com/
2. Войдите в свой аккаунт
3. Перейдите в User Settings → Personal Access Tokens
4. Создайте новый токен с правами:
   - **Scopes**: Custom defined
   - **Marketplace**: Manage
5. Скопируйте токен - он понадобится для входа

### 3. Обновление package.json

Замените `YOUR_PUBLISHER_ID` в файлах:
- `roborobot-classic/package.json`
- `roborobot-authentic/package.json`

На ваш реальный Publisher ID.

### 4. Вход в vsce

```bash
vsce login YOUR_PUBLISHER_ID
```

Введите Personal Access Token когда попросят.

### 5. Упаковка тем

```bash
# Классическая тема
cd roborobot-classic
vsce package

# Аутентичная тема
cd ../roborobot-authentic
vsce package
```

### 6. Публикация

```bash
# Публикация классической темы
cd roborobot-classic
vsce publish

# Публикация аутентичной темы
cd ../roborobot-authentic
vsce publish
```

### 7. Обновление темы

Для обновления темы:
1. Измените версию в package.json (например, с 1.0.0 на 1.0.1)
2. Запустите `vsce publish` снова

## Важные моменты

- **Publisher ID** должен быть уникальным в Marketplace
- **Версия** должна увеличиваться при каждом обновлении
- **Описание** должно быть информативным
- **Ключевые слова** помогут найти тему в поиске

## Готовые команды

После получения Publisher ID, выполните:

```bash
# Обновить Publisher ID
(Get-Content "roborobot-classic/package.json") -replace "YOUR_PUBLISHER_ID", "ваш-publisher-id" | Set-Content "roborobot-classic/package.json"
(Get-Content "roborobot-authentic/package.json") -replace "YOUR_PUBLISHER_ID", "ваш-publisher-id" | Set-Content "roborobot-authentic/package.json"

# Войти в vsce
vsce login ваш-publisher-id

# Упаковать и опубликовать
cd roborobot-classic && vsce publish
cd ../roborobot-authentic && vsce publish
```

Удачи с публикацией! 🚀
