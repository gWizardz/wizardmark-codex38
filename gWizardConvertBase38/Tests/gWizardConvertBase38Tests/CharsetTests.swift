import XCTest
@testable import gWizardConvertBase38

final class CharsetTests: XCTestCase {
    func testBase38Has38Characters() {
        XCTAssertEqual(CharsetBase38.charset.count, 38)
    }

    func testContainsCaretSymbol() {
        XCTAssertTrue(CharsetBase38.charset.contains("^"))
    }
}
