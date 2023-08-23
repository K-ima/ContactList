//
//  Person.swift
//  ContactList
//
//  Created by Kima on 22.08.2023.
//

import Foundation

let data = DataStore()

struct Person {
    let name: String
    let family: String
    let mail: String
    let number: String
    var fullName: String {
        "\(name) \(family)"
    }
    
    static func getContactList() -> [Person] {
        var personContact: [Person] = []
        
        while personContact.count < data.name.count {
                let name = data.name[Int.random(in: 0..<data.name.count)]
                let family = data.family[Int.random(in: 0..<data.family.count)]
                let mail = data.mail[Int.random(in: 0..<data.mail.count)]
                let number = data.number[Int.random(in: 0..<data.number.count)]
                let contact = Person(
                    name: name,
                    family: family,
                    mail: mail,
                    number: number
                )
            
                personContact.append(contact)
        }
        return personContact
    }
}

