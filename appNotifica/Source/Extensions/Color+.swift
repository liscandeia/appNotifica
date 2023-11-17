//
//  Color+.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 13/11/23.
//

import Foundation
import UIKit
//extencao da UIColor e estou nomenando uma cor, e uma extensao do pacote que ja existe
extension UIColor {
    static let buttonColor = UIColor(named: "buttonColor") ?? .gray
   // static var buttonColor = UIColor(red: 94/255.0, green: 163/255.0, blue: 163/255.0, alpha: 1.0);
    //fazendo refernciando no assets pois tem o tema escuro
    static let customlabelColor = UIColor(named: "customlabelColor") ?? .white
    static let placeholderColor = UIColor(named: "placeholderColor") ?? .white
    static let backgroundColor = UIColor(named: "backgrondColor") ?? .white
    
}
