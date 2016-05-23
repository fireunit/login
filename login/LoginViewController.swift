//
//  LoginViewController.swift
//  login
//
//  Created by doug on 5/23/16.
//  Copyright © 2016 fireunit. All rights reserved.
//

import UIKit
import Material

class LoginViewController: UIViewController {
    
    let emailTextField: TextField = TextField()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareNavigationController()
        prepareView()
        prepareEmailField()
        prepareNextButton()
    }
    
    private func prepareNavigationController() {
        let _ = navigationController?.navigationBar.subviews.map { $0.subviews.map { if $0 is UIImageView { $0.removeFromSuperview() } } }
        navigationController?.navigationBar.barTintColor = MaterialColor.white
    }
    
    private func prepareView() {
        view.backgroundColor = MaterialColor.white
    }
    
    private func prepareEmailField() {
        emailTextField.placeholder = "Email"
        emailTextField.font = RobotoFont.regularWithSize(16)
        emailTextField.textColor = MaterialColor.black
        view.addSubview(emailTextField)
        
        let margin = CGFloat(16)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        MaterialLayout.size(view, child: emailTextField, width: view.frame.width - margin * 2, height: 25)
        MaterialLayout.alignFromTopLeft(view, child: emailTextField, top:160 , left: margin)
    }
    
    private func prepareNextButton() {
        let nextButton: RaisedButton = RaisedButton(frame: CGRectMake(107, 207, 100, 35))
        nextButton.setTitle("Next", forState: .Normal)
        nextButton.titleLabel!.font = RobotoFont.mediumWithSize(14)
        nextButton.backgroundColor = MaterialColor.cyan.darken2
        nextButton.pulseColor = MaterialColor.white
        nextButton.addTarget(self, action: #selector(handleNextButton), forControlEvents: .TouchUpInside)
        view.addSubview(nextButton)
    }
    
    internal func handleNextButton() {
        if let email = emailTextField.text {
            let passwordVC = PasswordViewController()
            passwordVC.email = email
            navigationController?.pushViewController(passwordVC, animated: true)
        }
    }
    
}

