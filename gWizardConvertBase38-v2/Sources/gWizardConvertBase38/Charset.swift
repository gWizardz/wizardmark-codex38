// Base^conversion^universal^apple^app

/// Custom charset for symbolic Base^38 encoding
/// The `^` is treated as a contextual wildcard, shifting meaning skyward or sacred
struct CharsetBase38 {
    static let charset = "01234567890abcdefghijklmnopqrstuvxyz|^"

    static let characters: [Character] = Array(charset)
    static let lookup: [Character: Int] = {
        var map = [Character: Int]()
        for (i, c) in characters.enumerated() {
            map[c] = i
        }
        return map
    }()

    static func encode(_ value: Int) -> String {
        var result = ""
        var num = value
        repeat {
            result = String(characters[num % 38]) + result
            num /= 38
        } while num > 0
        return result
    }

    static func decode(_ string: String) -> Int? {
        var result = 0
        for c in string {
            guard let digit = lookup[c] else { return nil }
            result = result * 38 + digit
        }
        return result
    }
}

/// Standard Base62 encoding (lowercase is greater than uppercase)
struct CharsetBase62 {
    static let charset = "01234567890ABCDEFGHIJKLMNOPQRSTUVXTZabcdefghijklmnopqrstuvxyz"
}

/// Extended Base64 encoding, combining Base62 with veil and elevation symbols
struct CharsetBase64 {
    static let charset = "01234567890ABCDEFGHIJKLMNOPQRSTUVXTZabcdefghijklmnopqrstuvxyz|^"
}
