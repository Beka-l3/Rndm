//
//  AppDelegate.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 28.12.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let nc = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        
        return true
    }


}

