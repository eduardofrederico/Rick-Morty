//
//  SplashViewModel.swift
//  Rick&Morty
//
//  Created by Eduardo Frederico on 03/06/26.
//

import Foundation

class SplashViewModel {
    var successLoading: (() -> Void)?
    
    func doLoad() {
        if let successLoading {
            self.successLoading?()
        }
    }
    
}

