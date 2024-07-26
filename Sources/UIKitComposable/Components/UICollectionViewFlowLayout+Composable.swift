import UIKit

public extension UIKitComposableProtocol where Self: UICollectionViewFlowLayout {
    
    @discardableResult
    func scrollDirection(_ value: UICollectionView.ScrollDirection) -> Self {
        self.scrollDirection = value
        return self
    }
    
    @discardableResult
    func minimumInteritemSpacing(_ value: CGFloat) -> Self {
        self.minimumLineSpacing = value
        return self
    }
    
    @discardableResult
    func sectionInset(_ value: UIEdgeInsets) -> Self {
        self.sectionInset = value
        return self
    }
    
    @discardableResult
    func itemSize(_ value: CGSize) -> Self {
        self.itemSize = value
        return self
    }
}
