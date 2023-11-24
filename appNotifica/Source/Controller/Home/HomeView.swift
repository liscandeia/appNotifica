//
//  HomeView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 24/11/23.
//

import Foundation
import UIKit

class HomeView:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame);
        self.backgroundColor = .backgroundColor;
    }
    //precisamos definir pois pode resolver algo com o sboard, ele obriga, s[o apertar em fix
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented");
    }
}


