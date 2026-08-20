//
//  ViewControllersFactoryProtocol.swift
//  Rick&Morty
//
//  Created by Maria Eliza on 19/08/26.
//

import Foundation

protocol ViewControllersFactoryProtocol: AnyObject {
    func makeSplashViewController(flowDelegate: SplashFlowDelegate) -> SplashViewController
}
