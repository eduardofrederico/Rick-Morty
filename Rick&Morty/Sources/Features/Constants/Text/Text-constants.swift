//
//  Text-constants.swift
//  Rick&Morty
//
//  Created by Maria Eliza on 30/03/26.
//

import Foundation
import UIKit

enum FontName {
    static let getSchwifty = "Get Schwifty"
}

public struct AppFonts {
    
    static let medium = UIFont(name: FontName.getSchwifty, size: 40)
    static let huge = UIFont(name: FontName.getSchwifty, size: 60)
    
    //Verificar se esta validação será necessária
    /*static func logo(size: CGFloat) -> UIFont {
        l
        guard UIFont(name: FontName.getSchwifty, size: 80) != nil else {
            assertionFailure("Fonte Get Schwifty não carregada")
            return UIFont.systemFont(ofSize: 40, weight: .bold)
        }
        return UIFont(name: "Get Schwifty", size: title) ?? UIFont.systemFont(ofSize: , weight: .bold)
    }
    */
}
