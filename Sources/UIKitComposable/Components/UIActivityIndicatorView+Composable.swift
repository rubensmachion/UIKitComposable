import UIKit

public extension UIKitComposableProtocol where Self: UIActivityIndicatorView {
    @discardableResult
    func hidesWhenStopped(_ value: Bool) -> Self {
        self.hidesWhenStopped = value
        return self
    }

    @discardableResult
    func indicatorColor(_ value: UIColor) -> Self {
        self.color = value
        return self
    }
}
