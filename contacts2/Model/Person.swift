//
//  Person.swift
//  contacts2
//
//  Created by Matthieu Chappaz on 08/03/2017.
//  Copyright © 2017 Matthieu Chappaz. All rights reserved.
//

import UIKit

class Person: CustomStringConvertible {

    static let dateFormatter = initializeFormatter()
    var prenoms: [String]
    var nom: String
    var dateNaissance: Date
    
    init() {
        self.prenoms = [];
        self.nom = "";
        self.dateNaissance = Date();
    }
    
    convenience init(prenom :String) {
        self.init();
        self.prenoms.append(prenom);
    }
    
    var formattedDate :String {
        get {
            return Person.dateFormatter.string(from: self.dateNaissance);
        }
    }
    
    var description: String {
        get {
            return "Je suis \(self.prenoms) \(self.nom) et je suis né le \(self.formattedDate)"
        }
    }
}

private func initializeFormatter() -> DateFormatter {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter
}
