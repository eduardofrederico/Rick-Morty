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
    let contentView = SplashView()
    let viewModel = SplashViewModel()
    public weak var flowDelegate: SplashFlowDelegate?
    
    init(flowDelegate: SplashFlowDelegate) {
        self.flowDelegate = flowDelegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented!")
    }

    override func viewDidLoad() {
        contentView.delegate = self
        
        super.viewDidLoad()
        
        startBreathingAnimation()
        setup()
        setupGesture()
        bindViewModel()
    }
    
    /*private func decideNavigationFlow() {
        if let user = UserDefaultsManager
    }*/
    
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
    
    private func setupGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(goToHome))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func goToHome() {
       /* let home = Home()
        home.modalPresentationStyle = .overCurrentContext
        home.modalTransitionStyle = .crossDissolve
        self.present(home, animated: false) {
            home.animateShow()
        }*/
    }
    
    private func bindViewModel () {
        viewModel.successLoading = { [weak self] in
            self?.flowDelegate?.navigateToHome()
        }
    }
    
}

extension SplashViewController {
    private func startBreathingAnimation() {
        UIView.animate(withDuration: 1.6, delay: 0.4, animations: {
            //self.contentView.logoImageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        })
    }
}

extension SplashViewController: SplashFlowDelegate {
    func navigateToHome() {
        print("Go to Home!")
    }
}
