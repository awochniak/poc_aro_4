import UIKit

public class TextInputLayout: UIView {
    
    public let label: UILabel
    public let textField: UITextField
    
    public required init(title: String, defaultValue: String = "") {
        self.label = {
            let label = UILabel()
            label.text = title
            label.font = .boldSystemFont(ofSize: 14)
            return label
        }()
        
        self.textField = {
            let textField = UITextField()
            textField.font = .systemFont(ofSize: 16)
            textField.placeholder = title
            textField.text = defaultValue
            return textField
        }()
        
        super.init(frame: .zero)
        setupAppearance()
    }
    
    private func setupAppearance() {
        addSubviews([label, textField])
        label.anchorsFromLRTB(parent: self, isAnchoredToBottom: false)
        textField.anchorsFromLRTB(parent: self, left: 8, top: 16, topEqualTo: label.bottomAnchor, bottom: -16)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public extension TextInputLayout {
    func string() -> String? {
        return self.textField.text
    }
    func int() -> Int? {
        return Int(self.textField.text ?? "")
    }
}
