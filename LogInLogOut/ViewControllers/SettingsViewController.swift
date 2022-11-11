//
//  SettingsViewController.swift
//  LogInLogOut
//
//  Created by Вячеслав Горбатенко on 09.11.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var newUsername: UITextField!
    @IBOutlet weak var newPassword: UITextField!
    
    // MARK: - Public Properties
    
    var user: User!
    
    // MARK: - Override methods
    
    // Hide the keyboard when a screen is touched
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    
    @IBAction func saveButtonTapped() {
        if newUsername.text!.isEmpty && newPassword.text!.isEmpty {
            showAlert(title: "Missing new values",
                      message: "Please enter either a new username or password.",
                      actionTitle: "OK")
            return
        } else if newPassword.text!.isEmpty && !newUsername.text!.isEmpty {
            user.username = newUsername.text!
            newUsername.text = ""
            showAlert(title: "Success!",
                      message: "Username was successfuly updated.",
                      actionTitle: "OK")
            return
        } else if newUsername.text!.isEmpty && !newPassword.text!.isEmpty {
            user.password = newPassword.text!
            newPassword.text = ""
            showAlert(title: "Success!",
                      message: "Password was successfuly updated.",
                      actionTitle: "OK")
            return
        }
        
        user.username = newUsername.text!
        user.password = newPassword.text!
        newUsername.text = ""
        newPassword.text = ""
        showAlert(title: "Success!",
                  message: "Username and password were successfully updated.",
                  actionTitle: "OK")
        
        print("\(user.username) and \(user.password)")
    }
}

// MARK: - Alert Controller

extension SettingsViewController {
    private func showAlert(title: String, message: String, actionTitle: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: actionTitle, style: .default)
        
        alert.addAction(action)
        present(alert, animated: true)
    }
}
