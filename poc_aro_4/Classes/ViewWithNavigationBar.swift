import SwiftUI

public struct ViewWithNavigationBar<Content: View> : View {
    
    var onCancel: () -> ()
    var content: () -> Content
    
    public init(onCancel: @escaping () -> (), content: @escaping () -> Content){
        self.onCancel = onCancel
        self.content = content
    }
    
    public var body: some View {
        content()
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(
                leading: Button(action: { self.onCancel() })
                { Text("Powrót") }
            )
    }
}
