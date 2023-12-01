//
//  TextFieldDefault.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 17/11/23.
//

import Foundation
import UIKit
class TextFieldDefault:UITextField{
    init(placeholder: String){
        super.init(frame: .zero)
        initTextFieldDefault(placeholder: placeholder, keyBoardType: .default , returnKeyType: .default )
    };

    
    init(placeholder: String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType){
        super.init(frame: .zero)
        initTextFieldDefault(placeholder: placeholder, keyBoardType: keyBoardType , returnKeyType: returnKeyType )
    };
    
    private func initTextFieldDefault(placeholder: String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType){
        let placeholderText = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor:UIColor.placeholderColor]);
        self.attributedPlaceholder = placeholderText;
        self.keyboardType = keyBoardType;
        self.returnKeyType = returnKeyType;
        self.layer.cornerRadius = 16; // arredonda os lados
        self.translatesAutoresizingMaskIntoConstraints = false;
        
    };
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    };
    
}
