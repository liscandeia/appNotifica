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
    }
}
