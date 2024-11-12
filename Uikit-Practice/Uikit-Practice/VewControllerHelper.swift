//
//  FVewControllerHelper.swift
//  Uikit-Practice
//
//  Created by Enkhtsetseg Unurbayar on 11/10/24.
//

import UIKit

extension ViewController {
    
    func setupLayoutConstraints() {
            // Disable autoresizing mask translation for all UI elements
            labelforSmalImage.translatesAutoresizingMaskIntoConstraints = false
            mainSmallimage.translatesAutoresizingMaskIntoConstraints = false
            mainImage.translatesAutoresizingMaskIntoConstraints = false
            greetingLabel.translatesAutoresizingMaskIntoConstraints = false
            loginBtn.translatesAutoresizingMaskIntoConstraints = false
            signUpBtn.translatesAutoresizingMaskIntoConstraints = false
            
            // Add constraints for labelforSmalImage
            let leftMargin: CGFloat = 40 // Increased left margin for better spacing
            let rightMargin: CGFloat = 40 // Increased right margin for symmetry
            
            NSLayoutConstraint.activate([
                labelforSmalImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50), // 50pts from the top
                labelforSmalImage.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
                labelforSmalImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leftMargin), // Increased left margin
                labelforSmalImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -rightMargin), // Increased right margin
                labelforSmalImage.widthAnchor.constraint(lessThanOrEqualToConstant: 350) // Max width for large devices
            ])
            
            // Add constraints for mainSmallimage
            NSLayoutConstraint.activate([
                mainSmallimage.topAnchor.constraint(equalTo: labelforSmalImage.bottomAnchor, constant: 20), // 20pts below the label
                mainSmallimage.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
                mainSmallimage.widthAnchor.constraint(equalToConstant: 150), // Fixed width for small image
                mainSmallimage.heightAnchor.constraint(equalToConstant: 150) // Fixed height for small image
            ])
            
            // Add constraints for mainImage
            NSLayoutConstraint.activate([
                mainImage.topAnchor.constraint(equalTo: mainSmallimage.bottomAnchor, constant: 30), // 30pts below the small image
                mainImage.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
                mainImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9), // 90% of the screen width
                mainImage.heightAnchor.constraint(equalTo: mainImage.widthAnchor, multiplier: 0.6) // Aspect ratio of 3:2
            ])
            
            // Add constraints for greetingLabel
            NSLayoutConstraint.activate([
                greetingLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 30), // 30pts below the main image
                greetingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
                greetingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leftMargin), // Increased left margin
                greetingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -rightMargin), // Increased right margin
                greetingLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 350) // Max width for large devices
            ])
            
            // Add constraints for loginBtn
            NSLayoutConstraint.activate([
                loginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
                loginBtn.topAnchor.constraint(equalTo: greetingLabel.bottomAnchor, constant: 30), // 30pts below the greeting label
                loginBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8), // 80% of the screen width
                loginBtn.heightAnchor.constraint(equalToConstant: 50) // Fixed height for the button
            ])
            
            // Add constraints for signUpBtn
            NSLayoutConstraint.activate([
                signUpBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
                signUpBtn.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 20), // 20pts below the login button
                signUpBtn.widthAnchor.constraint(equalTo: loginBtn.widthAnchor), // Same width as login button
                signUpBtn.heightAnchor.constraint(equalTo: loginBtn.heightAnchor) // Same height as login button
            ])
        }

        
   
}
