//
//  AppCoordinator.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit


final class AppCoordinator: Colors, Glassmorphism {
    
    private let onboardingPage: OnboardingPage
    private let tabbarController: UITabBarController
    
    private var rPageBuilder: ModuleBuilder
    private var nPageBuilder: ModuleBuilder
    private var dPageBuilder: ModuleBuilder
    private var mPageBuilder: ModuleBuilder
    
    
    init(onboardingPage op: OnboardingPage) {
        self.onboardingPage = op
        self.tabbarController = UITabBarController()
        self.rPageBuilder = RModuleBuilder()
        self.nPageBuilder = RModuleBuilder()
        self.dPageBuilder = RModuleBuilder()
        self.mPageBuilder = RModuleBuilder()
        
        self.tabbarController.setViewControllers([
            rPageBuilder.viewController,
            nPageBuilder.viewController,
            dPageBuilder.viewController,
            mPageBuilder.viewController
        ], animated: true)
        
        rPageBuilder.appCoordinator = self
        nPageBuilder.appCoordinator = self
        dPageBuilder.appCoordinator = self
        mPageBuilder.appCoordinator = self
        
        setTabbarDesign()
    }
    
    private func pushTabbar() {
        self.onboardingPage.navigationController?.pushViewController(tabbarController, animated: true)
    }
    
    private func setTabbarDesign() {
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialDark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.tabbarController.tabBar.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.layer.cornerRadius = GConstants.largePadding
        blurEffectView.clipsToBounds = true
        blurEffectView.layer.opacity = fullOpacity
        blurEffectView.layer.compositingFilter = overlayBlendMode
        
        self.tabbarController.tabBar.addSubview(blurEffectView)
        self.tabbarController.tabBar.backgroundColor = semiClearBlack
        self.tabbarController.tabBar.layer.cornerRadius = GConstants.largePadding
        
        rPageBuilder.viewController.tabBarItem = UITabBarItem.init(title: GConstants.rTitle, image: GConstants.rImage, selectedImage: GConstants.rSelectedImage)
        nPageBuilder.viewController.tabBarItem = UITabBarItem.init(title: GConstants.nTitle, image: GConstants.nImage, selectedImage: GConstants.nSelectedImage)
        dPageBuilder.viewController.tabBarItem = UITabBarItem.init(title: GConstants.dTitle, image: GConstants.dImage, selectedImage: GConstants.dSelectedImage)
        mPageBuilder.viewController.tabBarItem = UITabBarItem.init(title: GConstants.mTitle, image: GConstants.mImage, selectedImage: GConstants.mSelectedImage)
        
        for item in tabbarController.tabBar.items! {
            item.setTitleTextAttributes([.foregroundColor: accent], for: .selected)
            item.setTitleTextAttributes([.foregroundColor: semiWhite], for: .normal)
        }
    }
}


extension AppCoordinator: AppDelegateCommand {
    func startTheSession() {
        self.pushTabbar()
    }
}