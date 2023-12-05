//
//  NovaOcorrenciaViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 01/12/23.
//

import Foundation
import UIKit

class NovaOcorrenciaViewController: ViewControllerDeafault {
    
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView()
        novaOcorrenciaView.onCameraTap = {
                    EscolherImagem().selecionadorImagem(self) { imagem in novaOcorrenciaView.setImage(image: imagem)
                    }
                }
        
        return novaOcorrenciaView
    }()
    
    override func loadView(){
        self.view = novaOcorrenciaView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
    }
}
