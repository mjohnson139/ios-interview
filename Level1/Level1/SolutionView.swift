import SwiftUI
import UIKit

struct SolutionView: View {
    @State var inputField: String = ""

    var body: some View {
        VStack {
            TextField("Input Field", text: self.$inputField)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
        }
    }
}

struct SolutionView_Previews: PreviewProvider {
    static var previews: some View {
        SolutionView()
    }
}
