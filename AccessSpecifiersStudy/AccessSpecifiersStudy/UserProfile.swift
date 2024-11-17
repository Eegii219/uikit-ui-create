//
//  UserProfile.swift
//  AccessSpecifiersStudy
//
//  Created by Enkhtsetseg Unurbayar on 11/14/24.
//

import Foundation

class UserProfile {
    private var password: String
    
    init(password: String) {
        self.password = password
    }
    
    func changePassword(to newPassword: String) {
        password = newPassword
    }
    
    private func isPasswordValid(_ input: String) -> Bool {
        return input == password
    }
}
