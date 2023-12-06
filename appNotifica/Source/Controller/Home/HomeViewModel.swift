//
//  HomeViewModel.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 06/12/23.
//

import Foundation
import UIKit

class HomeViewModel {
    var coordinator: HomeCoordinator
        
        init(coordinator: HomeCoordinator) {
            self.coordinator = coordinator
        }
        
        func didTapAdd(){
            coordinator.presentNovaOcorrencia()
            
        }
}
