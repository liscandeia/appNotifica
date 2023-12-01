//
//  RegisterView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 22/11/23.
//

import Foundation
import UIKit
class RegisterView: ViewDefault{

    //MARK - Clousers
    var onLoginTap : (()-> Void)?
    let label = LabelDefault(text: "Entre com seu e-mail e senha para se registrar.", size: 20, alignment: .left)
    let emailtxt = TextFieldDefault(placeholder: "   E-mail", keyBoardType: .emailAddress, returnKeyType: .next)
    let senhatxt: TextFieldDefault = {
        let text = TextFieldDefault(placeholder: "   Senha",keyBoardType: .emailAddress, returnKeyType: .done)
        text.isSecureTextEntry = true;
        return text;
    }()
    let senharepetetxt: TextFieldDefault = {
        let text = TextFieldDefault(placeholder: "        Confirmar senha",keyBoardType: .emailAddress, returnKeyType: .done)
        text.isSecureTextEntry = true;
        return text;
    }()
    let cadbtn = ButtonDefault(button: "CADASTRAR")
    let loginbtn = ButtonDefault(button: "LOGIN")
    override func setupVisualElements () {
        super.setupVisualElements();
        emailtxt.delegate = self;
        senhatxt.delegate = self;
        senharepetetxt.delegate = self;
    
        self.addSubview(label)
        self.addSubview(emailtxt)
        self.addSubview(senhatxt)
        self.addSubview(senharepetetxt)
        self.addSubview(cadbtn)
        self.addSubview(loginbtn)
      
        loginbtn.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 188),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailtxt.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 70),
            emailtxt.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            emailtxt.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            emailtxt.heightAnchor.constraint(equalToConstant: 60),
            
            senhatxt.topAnchor.constraint(equalTo: emailtxt.bottomAnchor, constant: 25),
            senhatxt.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            senhatxt.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            senhatxt.heightAnchor.constraint(equalToConstant: 60),
            
            senharepetetxt.topAnchor.constraint(equalTo: senhatxt.bottomAnchor, constant: 25),
            senharepetetxt.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            senharepetetxt.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            senharepetetxt.heightAnchor.constraint(equalToConstant: 60),
            
            cadbtn.topAnchor.constraint(equalTo: senharepetetxt.bottomAnchor, constant: 25),
            cadbtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            cadbtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            cadbtn.heightAnchor.constraint(equalToConstant: 60),
            
            loginbtn.topAnchor.constraint(equalTo: cadbtn.bottomAnchor, constant: 25),
            loginbtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            loginbtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            loginbtn.heightAnchor.constraint(equalToConstant: 60),
            
        ])
    }
    @objc
    private func loginTap(){
        onLoginTap?()
    }
}
extension RegisterView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailtxt {
            self.senhatxt.becomeFirstResponder()
        }else if textField == senhatxt{
            self.senharepetetxt.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }

}

