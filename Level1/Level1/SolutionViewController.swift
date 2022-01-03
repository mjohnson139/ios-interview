import SwiftUI
import UIKit

class SolutionViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let inputTextField = UITextField()
        inputTextField.placeholder = "Input Field"
        inputTextField.borderStyle = .roundedRect

        let stackView = UIStackView(arrangedSubviews: [
            inputTextField,
        ])

        stackView.axis = .vertical
        stackView.spacing = UIStackView.spacingUseSystem
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
        ])
    }
}

struct SolutionViewController_Previews: PreviewProvider {
    static var previews: some View {
        ToSwiftUIView {
            SolutionViewController()
        }
    }
}
