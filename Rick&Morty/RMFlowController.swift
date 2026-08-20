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
    private let viewControllerFactory: ViewControllersFactoryProtocol
 
    
    //MARK: Init
    public init() {
        self.viewControllerFactory = ViewControllersFactory()
    }
    //MARK: Start
    func start() -> UINavigationController? {
        let startViewController = viewControllerFactory.makeSplashViewController(flowDelegate: self)
        self.navigationController = UINavigationController(rootViewController: startViewController)
        return navigationController
    }
    
}
//MARK: Splash
extension RMFlowController: SplashFlowDelegate {
    func navigateToHome() {
        self.navigationController?.dismiss(animated: false)
        let viewController = UIViewController()
        viewController.view.backgroundColor = Colors.lightGreen
        self.navigationController?.pushViewController(viewController, animated: true)
        //carregar a home aqui
        
    }
    
    
}
