//
//  word.swift
//  GuessWord
//
//  Created by Rahul Khanna on 6/6/21.
//

import Foundation
import Keys
import FirebaseFirestore
import FirebaseFirestoreSwift

let keys = GuessWordKeys()
let wordnik = keys.wordnikAPIKey

// Create the struct for each word in our game
struct Word: Identifiable, Codable {
    @DocumentID var id: String?
    var word: String
    var definition: String
    var difficulty: String
    
    init(id: String?, word: String, definition: String, difficulty: String) {
        if let id = id {
            self.id = id
        }
        self.word = word
        self.definition = definition
        self.difficulty = difficulty
    }
    
}




