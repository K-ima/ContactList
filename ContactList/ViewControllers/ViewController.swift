//
//  ViewController.swift
//  ContactList
//
//  Created by Kima on 22.08.2023.
//

import UIKit

final class ViewController: UITableViewController {

    private let contactList = Person.getContactList()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contactDetailsVC = segue.destination as? ContactDetailsViewController
        contactDetailsVC?.person = contactList[indexPath.row]
    }
}

// MARK: - UITableViewDataSourse
extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        
        cell.contentConfiguration = content
        return cell
    }
}
