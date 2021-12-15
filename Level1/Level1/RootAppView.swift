import SwiftUI

struct RootAppView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: SolutionView(),
                    label: {
                        Text("SwiftUI Solution")
                    }
                )
                NavigationLink(
                    destination: ToSwiftUIView { SolutionViewController()
                    },
                    label: {
                        Text("UIKit Solution")
                    }
                )
            }
            .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
        }

    }
}

struct RootAppView_Previews: PreviewProvider {
    static var previews: some View {
        RootAppView()
    }
}
