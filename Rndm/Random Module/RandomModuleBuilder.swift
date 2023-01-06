//
//  RandomModuleBuilder.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit


final class RModuleBuilder: ModuleBuilder {
    private(set) var viewController: UIViewController
    
    public var appCoordinator: AppCoordinator?
    
    init() {
        self.viewController = RViewController()
    }
}
