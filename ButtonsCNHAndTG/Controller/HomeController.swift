//
//  HomeController.swift
//  ButtonsCNHAndTG
//
//  Created by Marcio Habigzang Brufatto on 21/11/20.
//

import UIKit

class HomeController: UIViewController {
    
    var homeView: HomeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func setupView() {
        let mainView = HomeView(frame: self.view.frame)
        self.homeView = mainView
        
        self.view.addSubview(homeView)
        
        homeView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        homeView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        homeView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        homeView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        homeView.translatesAutoresizingMaskIntoConstraints = true
    }
}
