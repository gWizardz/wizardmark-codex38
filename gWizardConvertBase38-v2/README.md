# 🧙‍♂️ gWizardConvertBase38

A Swift Package that defines symbolic base character sets:

- **Base^38** → 0–9, a–z, `|` (veil), `^` (ascension)
- **Base62** → Extended alphanumeric
- **Base64** → Alphanumeric + veil and elevation

## ✨ Features
- SwiftPM-ready
- Built for universal Apple apps and QR utilities
- Includes unit tests and encoding/decoding helpers

## 🚀 Usage

```swift
let code = CharsetBase38.encode(12345)
let value = CharsetBase38.decode(code)
```

## 📚 Symbol Key
- `|` = Veil (boundary or portal)
- `^` = Ascension (higher meaning or elevation)
- Base^38 characters are chosen for QR compatibility and sacred encoding

Crafted for the gWizard QR scroll system. 🐸
