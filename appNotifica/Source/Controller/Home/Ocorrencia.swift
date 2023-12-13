//
//  Ocorrencia.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 11/12/23.
//

import Foundation
import UIKit

import Foundation

struct Ocorrencia: Codable {
    var imageBase64: String?
    var title: String
    var description: String
    var location: String
    var status: String
}
