import XCTest
@testable import DiffMatchPatch
//
//// Tests for the 'swifty' API wrapper around the ObjC diff_patch_match module
//
class SwiftWrapperTests: XCTestCase {
    
    func test_computeDiff() {
        let diffs = TextDifferenceChecker.compare("hello world", "foobar", operation: .characters)
        
        print(diffs)
    }

    static var allTests : [(String, (SwiftWrapperTests) -> () throws -> Void)] {
        return [
            ("test_computeDiff", test_computeDiff),
        ]
    }
}
