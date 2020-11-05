import UIKit

public protocol AlertControllerDelegate {
    func onCancelClicked()
}

public class ResultDialog: UIAlertController {
    
    private let parentVC: UIViewController
    private let resultMessage: String
    private let backgroundColor: UIColor
    
    private init(parent: UIViewController, message: String, backgroundColor: UIColor){
        self.parentVC = parent
        self.resultMessage = message
        self.backgroundColor = backgroundColor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        message = resultMessage
        view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = backgroundColor.withAlphaComponent(0.7)
        let cancelAction = UIAlertAction(title: "Zamknij", style: .cancel)
        addAction(cancelAction)

    }
        
    public static func show(from: UIViewController, message: String, backgroundColor: UIColor) {
        let alert = ResultDialog(parent: from, message: message, backgroundColor: backgroundColor)
        from.present(alert, animated: true, completion: nil)
    }
}

extension ResultDialog: AlertControllerDelegate {
    public func onCancelClicked() {
        dismiss(animated: true, completion: nil)
    }
}
