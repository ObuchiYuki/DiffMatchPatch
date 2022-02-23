// 'Swifty' API wrapper for ObjC diff_match_patch module

import diff_match_patch

public struct Difference {
    public let operation: DiffOperation
    public let text: String

    init(diff: Diff) {
        self.operation = diff.operation
        self.text = diff.text
    }
}

extension DiffOperation: CustomStringConvertible {
    public var description: String {
        switch self {
        case .delete: return "delete"
        case .insert: return "insert"
        case .equal: return "equal"
        @unknown default: return "unkown"
        }
    }
}

public enum TextCheckOperation {
    case characters
    case words
    case lines
}

public enum TextDifferenceChecker {

    private static let diffMatchPatch = DiffMatchPatch()

    public static func compare(_ a: String, _ b: String, operation: TextCheckOperation) -> [Difference] {
        switch operation {
        case .characters:
            let diff = diffMatchPatch.diff_main(ofOldString: a, andNewString: b)
            diffMatchPatch.diff_cleanupSemantic(diff)
            return (diff as! [Diff]).map{ Difference(diff: $0) }
        case .words:
            let d3 = diffMatchPatch.diff_wordsToChars(forFirstString: a, andSecondString: b)
            let diff = diffMatchPatch.diff_main(ofOldString: (d3![0] as! String), andNewString: (d3![1] as! String))!
            diffMatchPatch.diff_chars((diff as! [Any]), toLines: (d3![2] as! [Any]))
            return (diff as! [Diff]).map{ Difference(diff: $0) }
        case .lines:
            let d3 = diffMatchPatch.diff_linesToChars(forFirstString: a, andSecondString: b)
            let diff = diffMatchPatch.diff_main(ofOldString: (d3![0] as! String), andNewString: (d3![1] as! String))
            diffMatchPatch.diff_chars((diff as! [Any]), toLines: (d3![2] as! [Any]))
            return (diff as! [Diff]).map{ Difference(diff: $0) }
        }
    }
}

