import UIKit

public extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { view in
            self.addSubview(view)
        }
    }
    
    func anchorsFromLRTB(
        parent: UIView,
        isAnchoredToLeft: Bool? = true, left: CGFloat? = 0, leftEqualTo : NSLayoutXAxisAnchor? = nil,
        isAnchoredToRight: Bool? = true, right: CGFloat? = 0, rightEqualTo: NSLayoutXAxisAnchor? = nil,
        isAnchoredToTop: Bool? = true, top: CGFloat? = 0, topEqualTo: NSLayoutYAxisAnchor? = nil,
        isAnchoredToBottom: Bool? = true, bottom: CGFloat? = 0, bottomEqualTo: NSLayoutYAxisAnchor? = nil) {

        let leftAnchor = leftEqualTo ?? parent.leftAnchor
        let rightAnchor = rightEqualTo ?? parent.rightAnchor
        let topAnchor = topEqualTo ?? parent.topAnchor
        let bottomAnchor = bottomEqualTo ?? parent.bottomAnchor

        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.leftAnchor.constraint(equalTo: leftAnchor, constant: left!).isActive = isAnchoredToLeft!
        self.rightAnchor.constraint(equalTo: rightAnchor, constant: right!).isActive = isAnchoredToRight!
        self.topAnchor.constraint(equalTo: topAnchor, constant: top!).isActive = isAnchoredToTop!
        self.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottom!).isActive = isAnchoredToBottom!
    }
    
    func widthEqualTo(_ parent: UIView){
        self.widthAnchor.constraint(equalTo: parent.widthAnchor).isActive = true
    }
}
