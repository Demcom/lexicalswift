//
//  TokenIndexObj.swift
//  mylexico
//
//  Created by Daniel Moreno on 5/23/16.
//  Copyright (c) 2016 Daniel Moreno. All rights reserved.
//

import Foundation

class TokenIndexObj {
    var token: String
    var index: Int
    var word: String
    
    init(token:String, index:Int, word: String){
        self.token = token
        self.index = index
        self.word = word
    }
    
    func GetToken() -> String {
        return self.token
    }
    
    func GetIndex() -> Int {
        return self.index
    }
    
    func GetWord() -> String {
        return self.word
    }
    
}