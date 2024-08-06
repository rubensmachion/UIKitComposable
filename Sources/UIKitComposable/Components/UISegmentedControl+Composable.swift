import UIKit

public extension UIKitComposableProtocol where Self: UISegmentedControl {
    @discardableResult
    func selectedSegmentIndex(_ value: Int) -> Self {
        self.selectedSegmentIndex = value
        return self
    }
}
