//
//  ModuleBuilder.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit


protocol ModuleBuilder {
    var viewController: UIViewController {get}
    var appCoordinator: AppCoordinator? {get set}
}
