
import AppKit

public extension NSView {
    ///
    /// - Note:
    ///     You cannot deinstall constraints once installed by this method.
    ///
    func constrainToFillSuperview() {
        precondition(superview != nil)
        precondition(!translatesAutoresizingMaskIntoConstraints, "This view is not set to use Auto Layout mode.")
        guard let sv = superview else { return }
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: sv.leadingAnchor),
            trailingAnchor.constraint(equalTo: sv.trailingAnchor),
            topAnchor.constraint(equalTo: sv.topAnchor),
            bottomAnchor.constraint(equalTo: sv.bottomAnchor),
        ])
    }
}
