import UIKit

public extension UIKitComposableProtocol where Self: UIImageView {
    @discardableResult
    func image(_ value: UIImage?) -> Self {
        self.image = value
        return self
    }
}
