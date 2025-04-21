import XCTest
@testable import gWizardConvertBase38

final class CharsetTests: XCTestCase {
    func testBase38Has38Characters() {
        XCTAssertEqual(CharsetBase38.charset.count, 38)
    }

    func testContainsCaretSymbol() {
        XCTAssertTrue(CharsetBase38.charset.contains("^"))
    }

    func testEncodingAndDecoding() {
        let original = 123456
        let encoded = CharsetBase38.encode(original)
        let decoded = CharsetBase38.decode(encoded)
        XCTAssertEqual(decoded, original)
    }

    func testDecodingInvalidCharacter() {
        XCTAssertNil(CharsetBase38.decode("!@#"))
    }
}
