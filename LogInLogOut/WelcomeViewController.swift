//
//  WelcomeViewController.swift
//  LogInLogOut
//
//  Created by Вячеслав Горбатенко on 06.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var username: String!
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(username ?? "user")! 👋🏻"
    }

}
