
import UIKit

extension UIView {
    public func setRoundShadow(color: UIColor,
                               radius: CGFloat = 10,
                               offset: CGSize =
                                CGSize(width: 0, height: 15),
                               opacity: Float = 0.3) {
        layer.masksToBounds = false
        layer.shadowOffset = offset
        layer.shadowColor = color.cgColor
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity
        let backgroundCGColor = backgroundColor?.cgColor
        backgroundColor = nil
        layer.backgroundColor =  backgroundCGColor
    }
}
