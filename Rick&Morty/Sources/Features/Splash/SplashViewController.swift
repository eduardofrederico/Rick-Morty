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
        
        //Aqui devo criar o fluxo para ir para a home
        //após efeito da Splash
        //em caso de dúvida, voltar a partir da aula
        //criando login, e seguir a criação de
        //LoginBottomSheetViewController
        //LoginbottomSheetView
        
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
        self.flowDelegate?.navigateToHome()
       /* let home = Home() excluir
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
    
    /*func animateShow(completion: (() -> Void)? = nil) {
        self.view.layoutIfNeeded()
        homeView.transform = CGAffineTransform(translationX: 0, y: homeView.frame.height)
        UIView.animate(withDuration: 0.3, animations: {
            self.homeView.transform = .identity
            self.view.layoutIfNeeded()
        }) { _ in
            completion?()
        }
    }*/
    //excluir se não for necessário para ir para Home
    
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
