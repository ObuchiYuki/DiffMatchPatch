// 'Swifty' API wrapper for ObjC diff_match_patch module

import diff_match_patch

public struct Difference {
    public let operation: Operation
    public let text: String

    init(diff: Diff) {
        self.operation = diff.operation
        self.text = diff.text
        
        diff.
    }
}

public enum TextCheckOperation {
    case characters
    case words
    case lines
}

//public enum TextDifferenceChecker {
//
//    private static let diffMatchPatch = __DiffMatchPatch()
//
//    public static func compare(_ a: String, _ b: String, operation: TextCheckOperation) -> [Difference] {
//        switch operation {
//        case .characters:
//            let diff = diffMatchPatch.diff_main(ofOldString: a, andNewString: b)
//            diffMatchPatch.diff_cleanupSemantic(diff)
//            return diff.map{ Difference(__diff: $0) }
//        case .words:
//            diffMatchPatch.diff_main(ofOldString: <#T##String#>, andNewString: <#T##String#>, checkLines: <#T##Bool#>)
//            let d3 = diffMatchPatch.diff_wordsToChars(forFirstString: a, andSecondString: b)
//            let diff = diffMatchPatch.diff_main(ofOldString: (d3![0] as! String), andNewString: (d3![1] as! String))
//            diffMatchPatch.diff_chars((diff as! [Any]), toLines: (d3![2] as! [Any]))
//            return diff!
//        case .lines:
//            <#code#>
//        }
//    }
//}
//
//func computeDiff(a: String?, b: String?, checklines: Bool = true) -> [__Diff] {
//    if let a = a, let b = b {
//        return dmp.diff_main(ofOldString: a, andNewString: b, checkLines: checklines)
//    } else {
//        return [__Diff]()
//    }
//}
//
//if getDiffMode() == .characters {
//
//}
//
//if getDiffMode() == .words {
//
//}
//
//if getDiffMode() == .lines {
//  let d3 = dmp.diff_linesToChars(forFirstString: input1, andSecondString: input2)
//  let diff = dmp.diff_main(ofOldString: (d3![0] as! String), andNewString: (d3![1] as! String))
//  dmp.diff_chars((diff as! [Any]), toLines: (d3![2] as! [Any]))
//  return diff!
//}
