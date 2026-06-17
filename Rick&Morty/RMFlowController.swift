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
//MARK: Splash
extension RMFlowController: SplashFlowDelegate {
    func navigateToHome() {
        self.navigationController?.dismiss(animated: true)
        let viewController = UIViewController()
        viewController.view.backgroundColor = Colors.glowGreen
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
}
