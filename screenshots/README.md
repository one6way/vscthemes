# Theme Screenshots

This directory contains preview images of all themes in the collection.

## How to Create Screenshots

1. **Install a theme** in VS Code/Cursor
2. **Open a sample file** (JavaScript, Python, or any code file)
3. **Apply the theme** via Command Palette
4. **Take a screenshot** of the editor
5. **Save as PNG** with the theme name

## Required Screenshots

- `roborobot-classic.png` - RoboRobot Classic theme preview
- `roborobot-authentic.png` - RoboRobot Authentic theme preview  
- `gta4-liberty-city.png` - GTA IV Liberty City theme preview

## Screenshot Guidelines

- **Resolution**: 1920x1080 or higher
- **Format**: PNG
- **Content**: Show code editor with syntax highlighting
- **Quality**: High resolution, clear text
- **Style**: Professional, clean presentation

## Sample Code for Screenshots

Use this sample code to showcase theme features:

```javascript
// RoboRobot / GTA IV Theme Demo
class ThemeDemo {
  constructor(name, colors) {
    this.name = name;
    this.colors = colors;
    this.isActive = false;
  }

  activate() {
    console.log(`Activating ${this.name} theme...`);
    this.isActive = true;
    return this;
  }

  getColorPalette() {
    return {
      background: this.colors.bg,
      text: this.colors.text,
      accent: this.colors.accent
    };
  }
}

const themes = [
  new ThemeDemo("RoboRobot Classic", {
    bg: "#0a0a0a",
    text: "#00ff00", 
    accent: "#ff0000"
  }),
  new ThemeDemo("GTA IV Liberty City", {
    bg: "#0a0a0a",
    text: "#e0e0e0",
    accent: "#ff6b35"
  })
];

// Activate first theme
themes[0].activate();
```

This code showcases:
- Syntax highlighting
- String literals
- Comments
- Keywords
- Function definitions
- Object properties
- Array operations
