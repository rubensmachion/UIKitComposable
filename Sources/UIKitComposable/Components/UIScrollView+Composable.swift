import UIKit

public extension UIKitComposableProtocol where Self: UIScrollView {
    
    @discardableResult
    func alwaysBounceVertical(_ value: Bool) -> Self {
        alwaysBounceVertical = value
        return self
    }
    
    @discardableResult
    func alwaysBounceHorizontal(_ value: Bool) -> Self {
        alwaysBounceHorizontal = value
        return self
    }
    
    @discardableResult
    func contentInset(_ value: UIEdgeInsets) -> Self {
        self.contentInset = value
        return self
    }

    @discardableResult
    func isPagingEnabled(_ value: Bool) -> Self {
        self.isPagingEnabled = value
        return self
    }
}
