import UIKit

public extension UIViewController {
    func customNavigationBar(backButtonLabel: String, title: String){
       navigationItem.leftBarButtonItem = UIBarButtonItem(customView: makeBackButton(backButtonLabel, title))
       navigationItem.title = title
    }
    
    private func makeBackButton(_ label: String, _ title: String) -> UIButton {
       let backButton = UIButton(type: .custom)
       backButton.setImage(UIImage(), for: .normal)
        backButton.setTitle(label, for: .normal)
       backButton.setTitleColor(.label, for: .normal)
       backButton.addTarget(self, action: #selector(self.backButtonPressed), for: .touchUpInside)
       return backButton
    }
    
    @objc private func backButtonPressed() {
        dismiss(animated: true){}
    }
}
