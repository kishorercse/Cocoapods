//
//  AppDelegate.swift
//  Cocoapods
//
//  Created by kishore-pt5557 on 08/09/22.
//

import UIKit
import LGSideMenuController

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let rootNavigationController = UINavigationController(rootViewController: ViewController())

        let leftViewController = LeftViewController()
        let rightViewController = RightViewController()

        
        let sideMenuController = LGSideMenuController(rootViewController: rootNavigationController,
                                                      leftViewController: leftViewController,
                                                      rightViewController: rightViewController)

        
        sideMenuController.leftViewPresentationStyle = .slideAboveBlurred
        sideMenuController.rightViewPresentationStyle = .slideAboveBlurred

        
        sideMenuController.leftViewWidth = 250.0
        sideMenuController.rightViewWidth = 100.0
        
        window?.rootViewController = sideMenuController
        return true
    }



}

