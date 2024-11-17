//
//  AuthManager.swift
//  AccessSpecifiersStudy
//
//  Created by Enkhtsetseg Unurbayar on 11/14/24.
//


import Foundation

class AuthManager {
    
    func login() {
        print("Logged in")
    }
    
    fileprivate func encryptData() {
        print("Encrypted data")
    }
}


class AnorherClassInSameFile{

    func testFilePrivate() {
        let authManager: AuthManager = AuthManager()
//        authManager.encryptData()
    }

}
