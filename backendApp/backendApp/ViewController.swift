//
//  ViewController.swift
//  backendApp
//  https://youtu.be/UY2xq9L9YJA
//  Created by Uri on 4/2/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet private weak var userTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgottenPasswordButton: UIButton!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    fileprivate func setupView() {
    }
    
    // MARK: - Button actions
    
    @IBAction private func loginButtonAction(_ sender: Any) {
    }
    
    @IBAction private func forgottenPasswordButtonAction(_ sender: Any) {
    }
}

