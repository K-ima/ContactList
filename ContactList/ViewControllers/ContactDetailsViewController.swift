//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Kima on 22.08.2023.
//

import UIKit

final class ContactDetailsViewController: UIViewController {

    @IBOutlet var numberPersonLabel: UILabel!
    @IBOutlet var emailPersonLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberPersonLabel.text = "Phone: \(person.number)"
        emailPersonLabel.text = "Email: \(person.mail)"
        title = person.fullName
    }
}
