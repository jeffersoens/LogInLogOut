//
//  UserInfoViewController.swift
//  LogInLogOut
//
//  Created by Вячеслав Горбатенко on 10.11.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var marriedLabel: UILabel!
    
    @IBOutlet weak var childrenTitleLabel: UILabel!
    @IBOutlet weak var childrenLabel: UILabel!
    
    @IBOutlet weak var companyLabel: UILabel!
    
    @IBOutlet weak var departmentTitleLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    
    @IBOutlet weak var positionTitleLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    // MARK: Public Properties
    
    var user: User!
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        previewUserInfo()
    }
}

// MARK: Labels configuration
extension UserInfoViewController {
    private func previewUserInfo() {
        
        usernameLabel.text = user.username
        
        firstNameLabel.text = user.person.firstName
        secondNameLabel.text = user.person.secondName
        ageLabel.text = user.person.age.formatted()
        
        cityLabel.text = user.person.city
        
        if user.person.married {
            marriedLabel.text = "Yes"
        } else {
            marriedLabel.text = "No"
        }
        
        if user.person.children {
            childrenLabel.text = String(user.person.childrenQty)
        } else {
            childrenTitleLabel.isHidden = true
            childrenLabel.isHidden = true
        }
        
        if user.person.job.working {
            companyLabel.text = user.person.job.company
            departmentLabel.text = user.person.job.department
            positionLabel.text = user.person.job.position
        } else {
            companyLabel.text = "Not working"
            departmentTitleLabel.isHidden = true
            departmentLabel.isHidden = true
            positionTitleLabel.isHidden = true
            positionLabel.isHidden = true
        }
    }
}
