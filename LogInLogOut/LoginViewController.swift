//
//  ViewController.swift
//  LogInLogOut
//
//  Created by Вячеслав Горбатенко on 06.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: - viewDIDLoad

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    
    @IBAction func forgotUsernameButtonTapped() {
        showForgotAlert(title: "Forgot your username?", message: "Don't worry! Your username is", actionTitle: "Use your username", pasteTo: usernameTF, pasteValue: "slava")
    }
    
    @IBAction func forgotPassowrdButtonTapped() {
        showForgotAlert(title: "Forgot your password?", message: "Don't worry! Your password is", actionTitle: "Use your password", pasteTo: passwordTF, pasteValue: "qwerty2022")
    }
    
    // MARK: - Segue: prepare and unwind
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        if usernameTF.text!.isEmpty && passwordTF.text!.isEmpty {
            showAlert(title: "Username and password are empty", message: "Please, fill in your username and password. If you forgot them, please use appropriate buttons.")
            return
        } else if usernameTF.text!.isEmpty {
            showAlert(title: "Username is empty", message: "Plese enter your username. In case you don't remember it, use 'Forgot username?' button.")
            return
        } else if passwordTF.text!.isEmpty {
            showAlert(title: "Password is empty", message: "Plese enter your password. In case you don't remember it, use 'Forgot passowrd?' button.")
            return
        }
        
        if (usernameTF.text != "slava") || (passwordTF.text != "qwerty2022") {
            showAlert(title: "Incorrect username or password", message: """
            Either username or password are incorrect. Please try again.
            
            If you forgot them, please use appropriate buttons.
            """)
            return
        }
        
        welcomeVC.username = usernameTF.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Hide keyboard when screen touched
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
}

// MARK: - UIAlertControllers

extension LoginViewController {
    private func showForgotAlert(title: String, message: String, actionTitle: String, pasteTo textField: UITextField, pasteValue: String) {
        let fullMessage = message + ": " + pasteValue
        let alert = UIAlertController(title: title, message: fullMessage, preferredStyle: .alert)
        let paste = UIAlertAction(title: actionTitle, style: .default) { _ in
            textField.text = pasteValue
        }
        alert.addAction(paste)
        present(alert, animated: true)
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
}