import UIKit

public extension UIViewController {
    func presentFullScreenController(_ vc: UIViewController){
        let nav =  UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true, completion: nil)
    }
}
