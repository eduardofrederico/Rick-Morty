//
//  SplashView.swift
//  Rick&Morty
//
//  Created by Maria Eliza on 04/03/26.
//

import Foundation
import UIKit

class SplashView: UIView {
    
    //Posso remover pois não vou usar imagem como logo, apenas texto
    private let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "rickAndMorty")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let titleLogoLabel: UILabel = {
        let label = UILabel()
        label.text = "Rick and Morty"
        label.font = AppFonts.medium
        //UIFont(name: "Get Schwifty", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(titleLogoLabel)
        self.addSubview(logoImageView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLogoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLogoLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    
    }
}
