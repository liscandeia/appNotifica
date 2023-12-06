//
//  HomeView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 24/11/23.
//

import Foundation
import UIKit

class HomeView:ViewDefault{
    var viewModel:HomeViewModel
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupVisualElements() {
        super.setupVisualElements();
    }
}


