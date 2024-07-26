import UIKit

extension UIKitComposableProtocol where Self: UIControl {
    
    @available(iOS 14.0, *)
    @discardableResult
    func action(_ value: (() -> Void)?, event: UIControl.Event = .touchUpInside) -> Self {
        let identifier = UIAction.Identifier(String(describing: event.rawValue))
        let action = UIAction(identifier: identifier) { _ in
            value?()
        }
        
        self.removeAction(identifiedBy: identifier, for: event)
        self.addAction(action, for: event)
        
        return self
    }
}
