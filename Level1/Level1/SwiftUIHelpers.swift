import SwiftUI

struct ToSwiftUIView: UIViewControllerRepresentable {
    let viewController: () -> UIViewController

    init(_ viewController: @escaping () -> UIViewController) {
        self.viewController = viewController
    }

    typealias UIViewControllerType = UIViewController

    func makeUIViewController(context _: Context) -> UIViewController {
        viewController()
    }

    func updateUIViewController(_: UIViewController, context _: Context) {}
}
