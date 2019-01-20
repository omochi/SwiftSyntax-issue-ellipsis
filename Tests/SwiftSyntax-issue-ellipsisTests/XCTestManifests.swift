import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SwiftSyntax_issue_ellipsisTests.allTests),
    ]
}
#endif