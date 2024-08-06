import UIKit

public extension UIKitComposableProtocol where Self: UIActivityIndicatorView {
    @discardableResult
    func hidesWhenStopped(_ value: Bool) -> Self {
        self.hidesWhenStopped = value
        return self
    }
}
