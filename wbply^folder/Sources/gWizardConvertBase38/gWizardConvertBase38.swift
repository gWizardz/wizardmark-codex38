
struct Base38 {
    static let alphabet = "0123456789abcdefghijklmnopqrstuvwxyz|^"
    static func encode(_ value: Int) -> String {
        var result = ""
        var val = value
        repeat {
            result = String(alphabet[alphabet.index(alphabet.startIndex, offsetBy: val % 38)]) + result
            val /= 38
        } while val > 0
        return result
    }

    static func decode(_ string: String) -> Int? {
        var value = 0
        for char in string {
            guard let index = alphabet.firstIndex(of: char) else { return nil }
            value = value * 38 + alphabet.distance(from: alphabet.startIndex, to: index)
        }
        return value
    }
}
