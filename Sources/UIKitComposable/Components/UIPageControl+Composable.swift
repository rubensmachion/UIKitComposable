import UIKit

public extension UIKitComposableProtocol where Self: UIPageControl {
    
    @discardableResult
    func numberOfPages(_ value: Int) -> Self {
        self.numberOfPages = value
        return self
    }

    @discardableResult
    func currentPageIndicatorTintColor(_ value: UIColor) -> Self {
        self.currentPageIndicatorTintColor = value
        return self
    }

    @discardableResult
    func pageIndicatorTintColor(_ value: UIColor) -> Self {
        self.pageIndicatorTintColor = value
        return self
    }
}
