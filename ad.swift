import UIKit

class LayoutSubview: UIView {
    
    /// Calculates and returns the dimensions of the subview within a given container.
    /// - Parameter containerView: The view in which the dimensions are to be calculated.
    /// - Returns: A tuple containing the width and height of the subview within the container.
    func dimensions(in containerView: UIView) -> (width: CGFloat, height: CGFloat) {
        // Calculate the dimensions based on the container view's bounds and the subview's intrinsic size
        let containerWidth = containerView.bounds.width
        let containerHeight = containerView.bounds.height
        
        let subviewSize = self.intrinsicContentSize
        
        let width = min(containerWidth, subviewSize.width)
        let height = min(containerHeight, subviewSize.height)
        
        return (width, height)
    }
}

// Example usage:
let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
let subview = LayoutSubview()
subview.frame = CGRect(x: 0, y: 0, width: 100, height: 100)

containerView.addSubview(subview)

let dimensions = subview.dimensions(in: containerView)
print("Subview dimensions within container: \(dimensions)")
