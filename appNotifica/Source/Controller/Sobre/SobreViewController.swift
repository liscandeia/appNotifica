//
//  SobreViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 01/12/23.
//

import Foundation
import UIKit

class SobreViewController: ViewControllerDeafault {
    
    //MARK: -  Clouseres
    
    //cria uma variável que é do
    
    lazy var sobreView: SobreView = {
        let sobreView = SobreView()
        
        
        return sobreView
    }()
    
    override func loadView(){
        self.view = sobreView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
    }
}
