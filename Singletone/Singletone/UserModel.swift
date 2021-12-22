//
//  UserModel.swift
//  Singletone
//
//  Created by Тадевос Курдоглян on 22.12.2021.
//

import Foundation

class UserModel {
    static let shared = UserModel()
    private init(){}
    
    var name = ""
    var id =  0
}
