//
//  HomeViewModel.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 06/12/23.
//

import Foundation
import UIKit

class HomeViewModel {
    var ocorrencias: [Ocorrencia] = []
    var coordinator: HomeCoordinator
        
        init(coordinator: HomeCoordinator) {
            self.coordinator = coordinator
        }
    func fetchData() {
        self.ocorrencias = DataManager.shared.ocorrencias
    }
        
        func didTapAdd(){
            coordinator.presentNovaOcorrencia()
            
        }
}
