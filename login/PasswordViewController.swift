//
//  PasswordViewController.swift
//  login
//
//  Created by doug on 5/23/16.
//  Copyright © 2016 fireunit. All rights reserved.
//

import UIKit
import Material
import Firebase

class PasswordViewController: UIViewController {
    
    var email = ""
    
    private let passwordTextField: TextField = TextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        preparePasswordField()
        prepareSubmitButton()
    }

    private func prepareView() {
        view.backgroundColor = MaterialColor.white
    }
    
    private func preparePasswordField() {
        passwordTextField.placeholder = "Password"
        passwordTextField.font = RobotoFont.regularWithSize(16)
        passwordTextField.textColor = MaterialColor.black
        passwordTextField.secureTextEntry = true
        view.addSubview(passwordTextField)
       
        let margin = CGFloat(16)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        MaterialLayout.size(view, child: passwordTextField, width: view.frame.width - margin * 2, height: 25)
        MaterialLayout.alignFromTopLeft(view, child: passwordTextField, top:160 , left: margin)
    }

    private func prepareSubmitButton() {
        let loginButton: RaisedButton = RaisedButton(frame: CGRectMake(107, 207, 100, 35))
        loginButton.setTitle("Login", forState: .Normal)
        loginButton.titleLabel!.font = RobotoFont.mediumWithSize(14)
        loginButton.backgroundColor = MaterialColor.cyan.darken2
        loginButton.pulseColor = MaterialColor.white
        loginButton.addTarget(self, action: #selector(handleLoginButton), forControlEvents: .TouchUpInside)

        view.addSubview(loginButton)
    }
    
    func handleLoginButton() {
        if let password = passwordTextField.text {
            FIRAuth.auth()?.signInWithEmail(email, password: password) { (user, error) in
                if error != nil {
                    print(error)
                } else {
                    print(user)
                }
            }
        }
    }
    
}
