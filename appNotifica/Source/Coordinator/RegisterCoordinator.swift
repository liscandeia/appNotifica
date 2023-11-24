//
//  RegisterCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 22/11/23.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator{
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let viewController = RegisterViewController();
        self.navigationController.pushViewController(viewController, animated: true)
        viewController.onLoginTap = {
            self.goToLogin()
        }
    }
    
    func goToLogin(){
        //mudando para .pop para poder voltar para a pag ao invés de dar um push para rederizar
        self.navigationController.popViewController(animated: true)
    }
}
