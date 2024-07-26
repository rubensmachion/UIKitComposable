import UIKit

public extension UIKitComposableProtocol where Self: UIView {
    
    @discardableResult
    func translatesAutoresizingMaskIntoConstraints(_ value: Bool) -> Self {
        translatesAutoresizingMaskIntoConstraints = value
        return self
    }
    
    @discardableResult
    func cornerRadius(_ value: CGFloat) -> Self {
        layer.cornerRadius = value
        return self
    }
    
    @discardableResult
    func backgroundColor(_ value: UIColor) -> Self {
        backgroundColor = value
        return self
    }
    
    @discardableResult
    func heightSize(_ value: CGFloat) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalToConstant: value).isActive = true
        return self
    }
    
    @discardableResult
    func widthSize(_ value: CGFloat) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: value).isActive = true
        return self
    }
    
    @discardableResult
    func contenMode(_ value: UIView.ContentMode) -> Self {
        self.contentMode = value
        return self
    }
    
    @discardableResult
    func addView(_ value: UIView) -> Self {
        addSubview(value)
        return self
    }
}

public extension UIView {
    
    func centralize(constant xValue: CGFloat = .zero, constant yValue: CGFloat = .zero) {
        guard let superview = superview else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: superview.centerXAnchor, constant: xValue).isActive = true
        centerYAnchor.constraint(equalTo: superview.centerYAnchor, constant: yValue).isActive = true
    }
    
    func leading(constant: CGFloat = .zero) {
        guard let superview = superview else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: constant).isActive = true
    }
    
    func trailing(constant: CGFloat = .zero) {
        guard let superview = superview else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: constant).isActive = true
    }
    
    func bottom(constant: CGFloat = .zero) {
        guard let superview = superview else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: constant).isActive = true
    }
    
    func top(constant: CGFloat = .zero) {
        guard let superview = superview else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview.topAnchor, constant: constant).isActive = true
    }
    
    @discardableResult
    func clipsToBounds(_ value: Bool) -> Self {
        self.clipsToBounds = value
        return self
    }
}
