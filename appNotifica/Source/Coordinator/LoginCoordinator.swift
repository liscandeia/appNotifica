//
//  LoginCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 12/11/23.
//

import Foundation
import UIKit
class LoginCoordinator: Coordinator {
    //controle de navegaçao das view
    var navigationController : UINavigationController;
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //guardando a classe de controle da view em uma constante e renderizando
        let viewController = LoginViewController();
        self.navigationController.pushViewController(viewController, animated: true)
        viewController.onRegisterTap = {
                      self.gotoRegister()
                  }
            }
            
            //função que chama a registerView
            func  gotoRegister() {
               let coordinator = RegisterCoordinator(navigationController: navigationController)
                coordinator.start()
            }
}
