//
//  PasswordViewController.swift
//  login
//
//  Created by doug on 5/23/16.
//  Copyright © 2016 fireunit. All rights reserved.
//

import UIKit
import Material

class PasswordViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
    }
    
    private func prepareView() {
        let margin = CGFloat(16)
        view.backgroundColor = MaterialColor.white
        // TextField
        let textField: TextField = TextField()
        textField.placeholder = "Password"
        textField.font = RobotoFont.regularWithSize(16)
        textField.textColor = MaterialColor.black
        
        let clearButton: FlatButton = FlatButton()
        clearButton.pulseColor = MaterialColor.grey.base
        clearButton.tintColor = MaterialColor.grey.base
        view.addSubview(textField)
        
        
        let submitButton: RaisedButton = RaisedButton(frame: CGRectMake(107, 207, 100, 35))
        submitButton.setTitle("Login", forState: .Normal)
        submitButton.titleLabel!.font = RobotoFont.mediumWithSize(14)
        submitButton.backgroundColor = MaterialColor.cyan.darken2
        submitButton.pulseColor = MaterialColor.white
        view.addSubview(submitButton)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        MaterialLayout.size(view, child: textField, width: view.frame.width - margin * 2, height: 25)
        MaterialLayout.alignFromTopLeft(view, child: textField, top:160 , left: margin)
        
    }
}
