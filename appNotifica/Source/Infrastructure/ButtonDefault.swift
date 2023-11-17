//
//  ButtonDefault.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 17/11/23.
//

import Foundation
import UIKit
class ButtonDefault:UIButton {
    init(button: String){
        super.init(frame: .zero)
        initButtonDefault(button: button)
    }
    private func initButtonDefault (button: String){
            self.backgroundColor = .buttonColor;
            self.setTitle("Logar", for: .normal);
            self.layer.cornerRadius = 16;
            self.translatesAutoresizingMaskIntoConstraints = false
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
