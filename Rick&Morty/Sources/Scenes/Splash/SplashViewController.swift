//
//  SplashViewController.swift
//  Rick&Morty
//
//  Created by Eduardo Frederico on 04/03/26.
//

import Foundation
import UIKit


class SplashViewController: UIViewController {
    var mainNavigation: UINavigationController?
    let contentView: SplashView
    let viewModel = SplashViewModel()
    public weak var flowDelegate: SplashFlowDelegate?
    
    init(contentView: SplashView,
         flowDelegate: SplashFlowDelegate) {
        self.contentView = contentView
        self.flowDelegate = flowDelegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented!")
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        startBreathingAnimation()
        setup()
    }
    
    private func setup() {
        self.view.addSubview(contentView)
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = Colors.glowGreen
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    private func bindViewModel () {
        viewModel.doLoad()
        flowDelegate?.navigateToHome()
    }
}

//MARK: - Animations

extension SplashViewController {
    private func startBreathingAnimation() {
        UIView.animate(withDuration: 10.8, delay: 0.0, animations: {
            self.contentView.logoImageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }, completion: { _ in
            self.bindViewModel()
        })
    }
}
