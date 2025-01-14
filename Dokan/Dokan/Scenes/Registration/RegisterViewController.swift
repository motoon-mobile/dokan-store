//
//  RegisterViewController.swift
//  Dokan
//
//  Created by heba isaa on 05/07/2022.
//

import UIKit

class RegisterViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet private weak var signInButton: UIButton!
    @IBOutlet private weak var emailOrPhoneTextField: UITextField!
    @IBOutlet private weak var continueButton: UIButton!

    // MARK: - Properties

    private let viewModel: RegisterViewModelType

    // MARK: - initializer

    init(viewModel: RegisterViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        bindEmailOrPhoneText()
        bindContinueButton()
        bindViewModel()
        bindSigninButton()
    }
}

// MARK: - Binding

private extension RegisterViewController {

    func bindEmailOrPhoneText() {
        emailOrPhoneTextField.addTarget(self, action: #selector(emailOrPhoneTextChanged), for: .editingChanged)
    }

    func bindContinueButton() {
        continueButton.addTarget(self, action: #selector(buttonWasTapped), for: .touchUpInside)
    }

    func bindSigninButton() {
        signInButton.addTarget(self, action: #selector(buttonWasTapped), for: .touchUpInside)
    }

    func bindViewModel() {
        viewModel.ConfigureButtonEnabled { [weak self] onEnabled in
            self?.continueButton.isEnabled = onEnabled
        }
    }
}

// MARK: - Actions

private extension RegisterViewController {

    @objc func emailOrPhoneTextChanged(_ sender: UITextField) {
        viewModel.updatePhoneOrEmail(input: sender.text ?? "")
    }

    @objc func buttonWasTapped(_ sender: UIButton) {
        switch sender {
        case signInButton:
            print("")
        // navigate to signin screen
        default:
            guard let _ = emailOrPhoneTextField.text else { return }
            // navigate to verification screen
        }
    }
}
