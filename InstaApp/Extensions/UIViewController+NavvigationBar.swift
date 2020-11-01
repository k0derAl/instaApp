
import UIKit

extension UIViewController {
    func configureNavigationBar(smallFont: UIFont,
                                largeFont: UIFont,
                                title: String?,
                                textColor: UIColor,
                                barColor: UIColor) {
        let smallAttributes: [NSAttributedString.Key : Any]  = [
            NSAttributedString.Key.foregroundColor : textColor,
            NSAttributedString.Key.font : smallFont,
            NSAttributedString.Key.strokeColor : textColor
        ]
        let largeAttributes: [NSAttributedString.Key : Any]  = [
            NSAttributedString.Key.foregroundColor : textColor,
            NSAttributedString.Key.font : largeFont,
            NSAttributedString.Key.strokeColor : textColor
        ]

        navigationItem.title = title
        navigationController?.navigationBar.isTranslucent = true

        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.largeTitleDisplayMode = .never
        if #available(iOS 13.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.titleTextAttributes = smallAttributes
            navBarAppearance.largeTitleTextAttributes = largeAttributes
            navBarAppearance.backgroundColor = barColor
            navBarAppearance.shadowColor = .white
            navBarAppearance.shadowImage = UIImage()
            navBarAppearance.backgroundImage = UIImage()
            navBarAppearance.shadowColor = .clear

            navigationController?.navigationBar.standardAppearance = navBarAppearance
            navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        } else {
            navigationController?.navigationBar.barTintColor = barColor
            navigationController?.navigationBar.tintColor = barColor
            navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
            navigationController?.navigationBar.shadowImage = UIImage()
            navigationController?.navigationBar.isTranslucent = true
        }
    }
}
