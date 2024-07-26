#if os(iOS)
import Foundation

/// A view code protocol that will help creating views and view controllers in code
public protocol ViewCodable {

    /// Should be called at init method
    func setupView()

    /// Should contains all the operations to add subviews in the view
    func buildHierarchy()

    /// Should contains all the methods to set constraints
    func setupConstraints()

    /// May be used to do some configurations after all the view setup
    func applyAdditionalChanges()
}

public extension ViewCodable {

    func setupView() {
        buildHierarchy()
        setupConstraints()
        applyAdditionalChanges()
    }

    func buildHierarchy() {}

    func setupConstraints() {}

    func applyAdditionalChanges() {}
}
#endif
