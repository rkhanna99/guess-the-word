//
//  WordView.swift
//  GuessWord
//
//  Created by Rahul Khanna on 6/10/21.
//

import Foundation
import FirebaseFirestore
import SwiftUI

struct WordView: View {
    // Get the firestore database
    private var db = Firestore.firestore()

    func loadWords() {
        //let asyncBlock = DispatchGroup()
        db.collection("words").getDocuments() { (words, err) in
            if let err = err {
                print("Error getting Words")
            } else {
                var placeholder: [Word] = []
                for word in words!.documents {
                    //asyncBlock.enter()
                    do {
                        let result = try word.data(as: Word.self)
                        placeholder.append(result!)
                    } catch {
                        print("Parse word failed")
                    }
                }
            }
            //asyncBlock.leave()
        }
    }
    
    var body: some View {
        Text("Words")
    }
}
