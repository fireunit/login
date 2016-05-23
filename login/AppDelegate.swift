//
//  AppDelegate.swift
//  login
//
//  Created by doug on 5/23/16.
//  Copyright © 2016 fireunit. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        FIRApp.configure()
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window!.rootViewController = UINavigationController(rootViewController: LoginViewController())

        window!.makeKeyAndVisible()
        
        return true
    }

}

