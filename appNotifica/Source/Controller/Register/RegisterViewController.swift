//
//  RegisterViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 22/11/23.
//

import Foundation
import UIKit

class RegisterViewController: ViewControllerDeafault {
    var onLoginTap: (()-> Void)?
    lazy var viewRegister:RegisterView = {
        let registerView = RegisterView()
        registerView.onLoginTap = {
            self.onLoginTap?()
        }
        return registerView
    }()
    
    override func loadView() {
        self.view = viewRegister;
    }
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "Registrar"; //self. e opcional
    }
}
    

