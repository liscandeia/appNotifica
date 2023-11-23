//
//  LoginViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 12/11/23.
//

//eventos oq tem ou nao na pag
//Controlando a view: oq deve ser carregado primeiro etc, interaçoes
//override: polimorfismo, reescritura do metodo
import Foundation
import UIKit

class LoginViewController: UIViewController {

    //MARK: -  Clouseres
    var onRegisterTap: (() -> Void)?
    //var para receber a view que criamos
    lazy var viewLogin: LoginView = {
            let loginView = LoginView()
            loginView.onRegisterTap = {
                self.onRegisterTap?()
            }
            
            return loginView
        }()
    //func para chamar a view, por default ela vem na main entao mudamos para chamar nossa view
    override func loadView() {
        self.view = viewLogin; //dizendo que nossa view é da var que salvei com o nome de viewMain
    }
    //evento para aparecer texto do paragrafo
    override func viewDidLoad() {
        super.viewDidLoad();
        self.title = "Logar"; //self. e opcional
        self.navigationController?.navigationBar.prefersLargeTitles = true;
    }
}
