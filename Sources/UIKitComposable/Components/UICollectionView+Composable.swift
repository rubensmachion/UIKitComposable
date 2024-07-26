import UIKit

public extension UIKitComposableProtocol where Self: UICollectionView {
    
    @discardableResult
    func register(_ value: AnyClass, for cellWithReuseIdentifier: String? = nil) -> Self {
        guard let cellWithReuseIdentifier = cellWithReuseIdentifier else {
            let identifier = String(describing: value)
            register(value, forCellWithReuseIdentifier: identifier)
            return self
        }
        register(value, forCellWithReuseIdentifier: cellWithReuseIdentifier)
        return self
    }
    
    @discardableResult
    func delegate(_ value: UICollectionViewDelegate?) -> Self {
        self.delegate = value
        return self
    }
    
    @discardableResult
    func dataSource(_ value: UICollectionViewDataSource?) -> Self {
        self.dataSource = value
        return self
    }
    
    @discardableResult
    func showsHorizontalScrollIndicator(_ value: Bool) -> Self {
        self.showsHorizontalScrollIndicator = value
        return self
    }
    
    @discardableResult
    func showsVerticalScrollIndicator(_ value: Bool) -> Self {
        self.showsVerticalScrollIndicator = value
        return self
    }
}
