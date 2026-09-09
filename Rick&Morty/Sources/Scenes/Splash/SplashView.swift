//
//  SplashView.swift
//  Rick&Morty
//
//  Created by Eduardo Frederico on 04/03/26.
//

import Foundation
import UIKit

class SplashView: UIView {
    
    public weak var delegate: SplashFlowDelegate?
    
    let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Logo")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let titleLogoLabel: UILabel = {
        let label = UILabel()
        label.text = "Rick and Morty"
        label.font = AppFonts.medium
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
            titleLogoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 620),
            titleLogoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -80),
            
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 220),
        ])
    
    }
    
    //criar função que capture
    //o clique na splash após carregamento
    //para direcionar para a Home
}
