// Base^conversion^universal^apple^app

/// Custom charset for symbolic Base^38 encoding
/// The `^` is treated as a contextual wildcard, shifting meaning skyward or sacred
struct CharsetBase38 {
    static let charset = "01234567890abcdefghijklmnopqrstuvxyz|^"
}

/// Standard Base62 encoding (lowercase is greater than uppercase)
struct CharsetBase62 {
    static let charset = "01234567890ABCDEFGHIJKLMNOPQRSTUVXTZabcdefghijklmnopqrstuvxyz"
}

/// Extended Base64 encoding, combining Base62 with veil and elevation symbols
struct CharsetBase64 {
    static let charset = "01234567890ABCDEFGHIJKLMNOPQRSTUVXTZabcdefghijklmnopqrstuvxyz|^"
}
