import UIKit

public extension UIStackView {
    
    /// Initialize UIStackView with a view sequence
    convenience init(_ sequence: UIView...) {
        self.init(arrangedSubviews: sequence)
    }
    
    /// Initialize UIStackView with a view array
    convenience init(_ array: [UIView]) {
        self.init(arrangedSubviews: array)
    }
    
    func removeAllViews() {
        subviews.forEach { $0.removeFromSuperview() }
    }
}

public extension UIKitComposableProtocol where Self: UIStackView {
    
    @discardableResult
    func axis(_ value: NSLayoutConstraint.Axis) -> Self {
        self.axis = value
        return self
    }
    
    @discardableResult
    func aligment(_ value: UIStackView.Alignment) -> Self {
        self.alignment = value
        return self
    }
    
    @discardableResult
    func spacing(_ value: CGFloat) -> Self {
        self.spacing = value
        return self
    }
    
    @discardableResult
    func distribution(_ value: UIStackView.Distribution) -> Self {
        self.distribution = value
        return self
    }
    
    @discardableResult
    func addView(_ value: UIView) -> Self {
        self.addArrangedSubview(value)
        return self
    }
    
    @discardableResult
    func addViews(_ value: [UIView]) -> Self {
        value.forEach { self.addArrangedSubview($0) }
        return self
    }
    @discardableResult
    func margin(_ value: UIEdgeInsets) -> Self {
        self.isLayoutMarginsRelativeArrangement = true
        self.layoutMargins = value
        return self
    }
}

public func VStackView(
    alignment: UIStackView.Alignment = .fill,
    spacing: CGFloat = .zero,
    _ content: [UIView]? = nil
) -> UIStackView {
    
    UIStackView()
        .translatesAutoresizingMaskIntoConstraints(false)
        .axis(.vertical)
        .aligment(alignment)
        .spacing(spacing)
        .addViews(content?.compactMap { $0 } ?? [])
}

public func HStackView(
    alignment: UIStackView.Alignment = .fill,
    spacing: CGFloat = .zero,
    _ content: [UIView]? = nil
) -> UIStackView {
    
    UIStackView()
        .translatesAutoresizingMaskIntoConstraints(false)
        .axis(.horizontal)
        .aligment(alignment)
        .spacing(spacing)
        .addViews(content?.compactMap { $0 } ?? [])
}
