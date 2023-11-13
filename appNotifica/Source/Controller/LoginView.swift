//
//  LoginView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 12/11/23.
//

// criaçao da tela, desenho

import Foundation
import UIKit //sempre importar é para desenhar a tela
//MARK: - Inicializadores
class LoginView:UIView  {
    //:UIView é chamando o frame que me libera os componentes pois estou dizendo que ela herda de UIView ela é filha
    override init(frame: CGRect) {
        super.init(frame: frame);
        self.backgroundColor = .white
        setupVisualElements();
    }
    //precisamos definir pois pode resolver algo com o sboard, ele obriga, s[o apertar em fix
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented");
    }
    //MARK: - Setup elementos visuais
    func setupVisualElements(){
        
        //armazenando em constantes as propriedades dos componentes
        //imagem
        let loginImg : UIImageView = {
            let img = UIImageView();
            img.image = UIImage(named: "logo-login"); //nao precisa add caminho
            img.contentMode = .scaleAspectFit; //aumentar proporcionalmente
            //nao pode esquecer
            img.translatesAutoresizingMaskIntoConstraints = false; //para funcionar em tds os dispositivos
            
            return img
        }() //clousures: uma funçao que só iremos utilizar uma vez e como boa pratica colocamos dentro dessa func anonima utilizando () para chamar ela mesma no final
        
        //label
        let imgLabel : UILabel = {
            let label = UILabel();
            label.text = "Registre e gerencie as ocorrências do seu IF";
            label.textColor = UIColor(_colorLiteralRed: 138/255, green: 138/255, blue: 142/255, alpha: 1);
            label.textAlignment = .center;
            label.font = UIFont(name: "SPRoDisplay-Light", size: 17);
            label.translatesAutoresizingMaskIntoConstraints = false;
            
            return label
        }();
        
        //textfield
        
        let emailtxt : UITextField = {
            let txt = UITextField();
            txt.backgroundColor = .white;
            txt.placeholder = "   E-mail";
            txt.layer.cornerRadius = 16; // arredonda os lados
            txt.translatesAutoresizingMaskIntoConstraints = false;
            
            return txt
            
        }()
        
        let senhatxt : UITextField = {
            let txt = UITextField();
            txt.backgroundColor = .white;
            txt.placeholder = "    Senha";
            txt.layer.cornerRadius = 16; // arredonda os lados
            txt.translatesAutoresizingMaskIntoConstraints = false;
            
            return txt
            
        }()
        
        //button
        
        let loginbtn : UIButton = {
            let btn = UIButton();
            btn.backgroundColor = .btnColor;
            btn.setTitle("Logar", for: .normal);
            btn.layer.cornerRadius = 16;
            btn.translatesAutoresizingMaskIntoConstraints = false
            return btn
        }()
        
        let cadbtn : UIButton = {
            let btn = UIButton();
            btn.backgroundColor = .btnColor;
            btn.setTitle("Cadastro", for: .normal);
            btn.layer.cornerRadius = 16;
            btn.translatesAutoresizingMaskIntoConstraints = false
            return btn
        }()
        
        //subview para aparecer na view
        self.addSubview(loginImg);
        self.addSubview(imgLabel);
        self.addSubview(emailtxt);
        self.addSubview(senhatxt);
        self.addSubview(loginbtn);
        self.addSubview(cadbtn);
        
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
}
