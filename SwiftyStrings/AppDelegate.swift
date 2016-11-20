//
//  AppDelegate.swift
//  SwiftyStrings
//
//  Created by Maciej Piotrowski on 20/11/16.
//  Copyright © 2016 Maciej Piotrowski. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        configureWindow()
        return true
    }
    
    private func configureWindow() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = ViewController()
        window.backgroundColor = .white
        window.rootViewController = UINavigationController(rootViewController: viewController)
        window.makeKeyAndVisible()
        self.window = window
    }
}
