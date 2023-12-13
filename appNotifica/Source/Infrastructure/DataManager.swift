//
//  DataManager.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 11/12/23.
//

import Foundation

class DataManager{
    static var shared = DataManager()
    var ocorrencias: [Ocorrencia] = []
    private init () {
        self.ocorrencias = loadData()
//        self.ocorrencias = [
////            .init(title: "Ocorrencia 1", description: "Descrição", location: "Campus", status: "Náo resolvido"),
////            .init(title: "Ocorrencia 2", description: "Descrição", location: "Campus", status: "Náo resolvido"),
////            .init(title: "Ocorrencia 3", description: "Descrição", location: "Campus", status: "Náo resolvido"),
////            .init(title: "Ocorrencia 4", description: "Descrição", location: "Campus", status: "Náo resolvido")
//            
//        ]
    }
    func add(ocorrencia:Ocorrencia){
        ocorrencias.append(ocorrencia)
        if let data = try? JSONEncoder().encode(ocorrencias){
            UserDefaults.standard.setValue(data, forKey: "DATA_OCORRENCIAS")
        }
    }
    func loadData()-> [Ocorrencia]{
        if let data = UserDefaults.standard.data(forKey: "DATA_OCORRENCIAS"){
            do{
                let objects = try JSONDecoder().decode([Ocorrencia].self, from: data)
                return objects
            } catch {
                print(error)
            }
        }
        return []
    }
}
