//
//  HomeCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 24/11/23.
//

import Foundation

import UIKit
class HomeCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        //adiciona o nome home na tabbar
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName: "homekit")
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
