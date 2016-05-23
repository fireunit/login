//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
import Material

struct Devices {
    let iPhoneSE = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
    let iPhone6 = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
    let iPhone6Plus = UIView(frame: CGRect(x: 375, y: 0, width: 414, height: 736))
}

/// Live View
var iPhone6 = Devices().iPhone6
iPhone6.backgroundColor = MaterialColor.white
let view = UIView(frame: iPhone6.frame)
XCPlaygroundPage.currentPage.liveView = view

view.addSubview(iPhone6)

let size = CGFloat(40)
let margin = CGFloat(16)
let buttonSize = CGFloat(64)
let largeMargin = 96

// TextField
let textField: TextField = TextField()
textField.placeholder = "Email"
textField.font = RobotoFont.regularWithSize(16)
textField.textColor = MaterialColor.black

let clearButton: FlatButton = FlatButton()
clearButton.pulseColor = MaterialColor.grey.base
clearButton.tintColor = MaterialColor.grey.base
view.addSubview(textField)


let submitButton: RaisedButton = RaisedButton(frame: CGRectMake(107, 207, 100, 35))
submitButton.setTitle("Next", forState: .Normal)
submitButton.titleLabel!.font = RobotoFont.mediumWithSize(14)
submitButton.backgroundColor = MaterialColor.cyan.darken2
submitButton.pulseColor = MaterialColor.white
view.addSubview(submitButton)

textField.translatesAutoresizingMaskIntoConstraints = false
MaterialLayout.size(view, child: textField, width: view.frame.width - margin * 2, height: 25)
MaterialLayout.alignFromTopLeft(view, child: textField, top:160 , left: margin)

