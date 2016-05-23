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

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
    }

    private func prepareView() {
        view.backgroundColor = MaterialColor.white
        
        let margin = CGFloat(16)
        
        // TextField
        let textField: TextField = TextField()
        textField.placeholder = "Email"
        textField.font = RobotoFont.regularWithSize(16)
        textField.textColor = MaterialColor.black
        
        let clearButton: FlatButton = FlatButton()
        clearButton.pulseColor = MaterialColor.grey.base
        clearButton.tintColor = MaterialColor.grey.base
        view.addSubview(textField)
        
        let nextButton: RaisedButton = RaisedButton(frame: CGRectMake(107, 207, 100, 35))
        nextButton.setTitle("Next", forState: .Normal)
        nextButton.titleLabel!.font = RobotoFont.mediumWithSize(14)
        nextButton.backgroundColor = MaterialColor.cyan.darken2
        nextButton.pulseColor = MaterialColor.white
        nextButton.addTarget(self, action: #selector(handleNextButton), forControlEvents: .TouchUpInside)
        view.addSubview(nextButton)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        MaterialLayout.size(view, child: textField, width: view.frame.width - margin * 2, height: 25)
        MaterialLayout.alignFromTopLeft(view, child: textField, top:160 , left: margin)

    }
    
    internal func handleNextButton() {
        print("nextButtonWasTapped")
        navigationController?.pushViewController(PasswordViewController(), animated: true)
    }

}

