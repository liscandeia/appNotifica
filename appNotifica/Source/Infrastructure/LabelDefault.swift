//
//  LabelDefault.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 17/11/23.
//

import Foundation
import UIKit

class LabelDefault:UILabel {
    init(text: String, size: Float, alignment: NSTextAlignment){
        super.init(frame: .zero)
        initLabelDefault(text: text, size: size, alignment: alignment)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initLabelDefault(text: String, size: Float, alignment: NSTextAlignment ){
        self.text = text
        self.textColor = .customlabelColor
        self.textAlignment = alignment;
        self.font = UIFont.systemFont(ofSize: CGFloat(size));
        self.translatesAutoresizingMaskIntoConstraints = false;
    }
    
}
