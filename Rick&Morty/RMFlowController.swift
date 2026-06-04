//
//  RMFlowController.swift
//  Rick&Morty
//
//  Created by Eduardo Frederico on 29/05/26.
//

import Foundation
import UIKit

class RMFlowController {
    //MARK: Properties
    private var navigationController: UINavigationController?
 
    //MARK: Splash
    //MARK: Init
    public init() {
        
    }
    //MARK: Start
    func start() -> UINavigationController? {
        let startViewController = SplashViewController()
        self.navigationController = UINavigationController(rootViewController: startViewController)
        return navigationController
    }
    
}
