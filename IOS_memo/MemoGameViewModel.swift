//
//  MemoGameViewModel.swift
//  IOS_memo
//
//  Created by student on 05.11.2024.
//

import Foundation

class MemoGameViewModel {
    var contents: Array<String> = []
    var themeNumber: Int = 1
    
    static let emojis: [String] = ["😀", "🎉", "😎", "🥳", "🧩", "🐸"]
    static let emojis2: [String] = ["🐶", "🐱", "🐻", "🐼", "🐸", "🦊"]
    static let emojis3: [String] = ["🍎", "🍕", "🍔", "🍣", "🍩", "🍭","🥦","🌶️"]
    
    var model = generateMemoGameModel()
    
    static func generateMemoGameModel() -> MemoGameModel<String>{
        return MemoGameModel<String>(numberOfCards: emojis.count){
            index in if emojis.indices.contains(index){
                emojis[index]
            }
            else
            {
                "?!"
            }
        }
    }
    
    static func changeTheme(){
        
    }
}
