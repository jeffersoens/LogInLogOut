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
    // нужно как-то получить данные user с LoginVC
    

    // MARK: - IBActions
    
    @IBAction func saveButtonTapped() {
        if newUsername.text!.isEmpty && newPassword.text!.isEmpty {
            showAlert(title: "Missing new values",
                      message: "Please enter either a new username or password.",
                      actionTitle: "OK")
        } else if newPassword.text!.isEmpty {
            // обновляем username
            //user.username = newUsername.text
            showAlert(title: "Success!",
                      message: "Username was successfuly updated.",
                      actionTitle: "OK")
        } else if newUsername.text!.isEmpty {
            // обновляем password
            //user.password = newPassword.text
            showAlert(title: "Success!",
                      message: "Password was successfuly updated.",
                      actionTitle: "OK")
        }
        
        //user.username = newUsername.text
        //user.password = newPassword.text
        newUsername.text = ""
        newPassword.text = ""
        showAlert(title: "Success!",
                  message: "Username and password were successfully updated.",
                  actionTitle: "OK")
    }
}

extension SettingsViewController {
private func showAlert(title: String, message: String, actionTitle: String) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: actionTitle, style: .default)
    
    alert.addAction(action)
    present(alert, animated: true)
}
}
