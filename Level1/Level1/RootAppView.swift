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
                NavigationLink(
                    destination: ToSwiftUIView {
                        let storyboard = UIStoryboard(name: "Solution", bundle: nil)
                        return storyboard.instantiateInitialViewController()!
                    },
                    label: {
                        Text("UIKit w/Storyboard Solution")
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
