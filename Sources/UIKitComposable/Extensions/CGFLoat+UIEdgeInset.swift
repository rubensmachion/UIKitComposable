import UIKit

public extension CGFloat {
    var edgeInsets: UIEdgeInsets {
        .init(top: self, left: self, bottom: self, right: self)
    }
}

public extension Double {
    var edgeInsets: UIEdgeInsets {
        .init(top: self, left: self, bottom: self, right: self)
    }
}
