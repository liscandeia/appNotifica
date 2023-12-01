//
//  ViewDefault.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 30/11/23.
//

import Foundation
import UIKit
class ViewDefault:UIView {
    //MARK: - Initialize
    override init(frame: CGRect) {
        super.init(frame: frame);
        self.backgroundColor = .backgroundColor;
        setupVisualElements();
        
    }

    func setupVisualElements(){
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented");
    }
}
