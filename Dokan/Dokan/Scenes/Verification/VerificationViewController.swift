//
//  VerificationViewController.swift
//  Dokan
//
//  Created by Ahmed Nagy on 08/07/2022.
//

import UIDokan
import UIKit

class VerificationViewController: UIViewController {

    // MARK: Outlets

    @IBOutlet weak var codeTextField: OTCTextField!

    // MARK: Properties

    private let viewModel: VerificationViewModelType

    // MARK: Init

    init(viewModel: VerificationViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        codeTextField.configure()
        codeTextField.didEnterLastDigit = { code in
            print(code)
            // TODO: - Handle the textField upon being filled
        }
    }
}

// MARK: - Actions

extension VerificationViewController {

    @IBAction func resendVerificationCode(_ sender: Any) {
        // send verification code again to user
    }

    @IBAction func confirmVerificationCode(_ sender: Any) {
        // show error message if code number wrong
        // navigate to home page if right code number
    }
}

// MARK: - Configurations

extension VerificationViewController {}

// MARK: - Private Handlers

private extension VerificationViewController {}
