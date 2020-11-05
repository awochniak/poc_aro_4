import UIKit

public class UIRoundedActionButton: UIButton {
    public required init(title: String) {
        super.init(frame: .zero)
        setupButtonWith(title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButtonWith(_ title: String) {
        heightAnchor.constraint(equalToConstant: 40).isActive = true
        layer.cornerRadius = 16
        backgroundColor = UIColor(red: 0, green: 89/255, blue: 133/255, alpha: 1.0)
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(title, for: .normal)
    }
}
