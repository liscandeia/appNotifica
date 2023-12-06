//
//  TabbarCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 01/12/23.
//

import Foundation
import UIKit

class TabbarCoordinator : Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    func start() {
        //inicializa o TabbarController
        let tabbarController = TabbarController()
        tabbarController.modalPresentationStyle = .overFullScreen
        let homeNavigation = UINavigationController()
        let homeViewCoordinator = HomeCoordinator(navigationController: homeNavigation)
        homeViewCoordinator.start()
        let sobreNavigation = UINavigationController()
        let sobreViewCoordinator = SobreCoordinator(navigationController: sobreNavigation)
        sobreViewCoordinator.start()
        let navigationControllers = [homeNavigation, sobreNavigation]
        tabbarController.setViewControllers(navigationControllers, animated: true)
                
        self.navigationController.present(tabbarController, animated: true)
    }
}

