import UIKit

public protocol UIKitComposableProtocol {}

extension UIView: UIKitComposableProtocol {}

extension UIKitComposableProtocol {
    
    public func setup(_ setup: (inout Self) -> Void) -> Self {
        var mutableSelf = self
        setup(&mutableSelf)
        return mutableSelf
    }
}
