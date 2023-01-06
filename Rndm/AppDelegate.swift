//
//  AppDelegate.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 28.12.2022.
//

import UIKit

protocol AppDelegateCommand {
    func startTheSession()
}


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let onboardingPage = OnboardingPage()
        let nc = UINavigationController(rootViewController: onboardingPage)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        
        let appCoordinator = AppCoordinator(onboardingPage: onboardingPage)
        appCoordinator.startTheSession()
        
        return true
    }
    
    

}

