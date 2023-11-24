//
//  LoginView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 12/11/23.
//

// criaçao da tela, desenho

import Foundation
import UIKit //sempre importar é para desenhar a tela
//MARK: - Initialize
class LoginView:UIView  {
    //:UIView é chamando o frame que me libera os componentes pois estou dizendo que ela herda de UIView ela é filha
    override init(frame: CGRect) {
        super.init(frame: frame);
        self.backgroundColor = .backgroundColor;
        setupVisualElements();
    }
    //precisamos definir pois pode resolver algo com o sboard, ele obriga, s[o apertar em fix
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented");
    }
    //MARK: -  Clouseres
     var onRegisterTap: (() -> Void)?
     var onLoginTap: (() -> Void)?
    //MARK: - Setup elementos visuais
    func setupVisualElements(){
        
        //imagem
        let loginImg = ImageDefault(image: "logo-login")
        //label
        let imgLabel = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF", size: 17, alignment: .center)
        //textfield
        let emailtxt = TextFieldDefault(placeholder: "   E-mail")
        let senhatxt = TextFieldDefault(placeholder: "   Senha")
        
        //button
        let loginbtn = ButtonDefault(button: "LOGIN")
        let cadbtn = ButtonDefault(button: "CADASTRAR")
        
        //subview para aparecer na view
        self.addSubview(loginImg);
        self.addSubview(imgLabel);
        self.addSubview(emailtxt);
        self.addSubview(senhatxt);
        self.addSubview(loginbtn);
        self.addSubview(cadbtn);
        cadbtn.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        loginbtn.addTarget(self, action: #selector(loginTap), for: .touchUpInside)

        
        //onde vai ficar na tela os componentes
        
        //MARK: - Ativando elementos
        NSLayoutConstraint.activate([
            loginImg.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            loginImg.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginImg.widthAnchor.constraint(equalToConstant: 274.99),
            loginImg.heightAnchor.constraint(equalToConstant: 82),
        
            imgLabel.topAnchor.constraint(equalTo: loginImg.bottomAnchor, constant: 5), //para ficar em baixo da imagem
            imgLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imgLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailtxt.topAnchor.constraint(equalTo: imgLabel.bottomAnchor, constant: 70),
            emailtxt.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            emailtxt.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            emailtxt.heightAnchor.constraint(equalToConstant: 60),
            
            senhatxt.topAnchor.constraint(equalTo: emailtxt.bottomAnchor, constant: 25),
            senhatxt.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            senhatxt.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            senhatxt.heightAnchor.constraint(equalToConstant: 60),
            
            loginbtn.topAnchor.constraint(equalTo: senhatxt.bottomAnchor, constant: 25),
            loginbtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            loginbtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            loginbtn.heightAnchor.constraint(equalToConstant: 60),
            
            cadbtn.topAnchor.constraint(equalTo: loginbtn.bottomAnchor, constant: 25),
            cadbtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            cadbtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            cadbtn.heightAnchor.constraint(equalToConstant: 60)
            
        ])
    }
    //MARK: - Actions
        @objc
        private func registerTap(){
            onRegisterTap?()
        }
        @objc
    private func loginTap(){
        onLoginTap?()
    }
}
