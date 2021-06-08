//
//  word.swift
//  GuessWord
//
//  Created by Rahul Khanna on 6/6/21.
//

import Foundation
import Keys

let keys = GuessWordKeys()
let wordnik = keys.wordnikAPIKey

// Format of the response for the random word API calls
struct APIResponse {
    var id: Int
    var word: String
    
    init(id: Int, word: String) {
        self.id = id
        self.word = word
    }
}


