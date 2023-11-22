//
//  RegisterViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 22/11/23.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    var viewRegister = RegisterView();
    
    override func loadView() {
        self.view = viewRegister;
    }
    override func viewDidLoad() {
            super.viewDidLoad();
            self.title = "Registrar"; //self. e opcional
            self.navigationController?.navigationBar.prefersLargeTitles = true;
    }
}
    

