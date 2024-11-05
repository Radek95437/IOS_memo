//
//  MemoGameModel.swift
//  IOS_memo
//
//  Created by student on 05.11.2024.
//

import Foundation

struct MemoGameModel<CardContent: Equatable> {
    private var mainCard: Card? = nil
    private var cards: Array<Card>
    
    init(numberOfCards: Int, cardContentFactory: (Int)-> CardContent)
    {
        cards = []
        let cardNumber = Int.random(in: 0..<numberOfCards)
        for i in 0 ..< numberOfCards{
            let content = cardContentFactory(i)
            self.cards.append(Card(id: String("\(i)a"), content: content))
            
            if (cardNumber == i){
                self.mainCard = Card(id: String("\(i)b"), content: content)
            }
        }
    }
    
    func selectCard(card: Card){
        
    }
    
    mutating func shuffleCard() {
        cards.shuffled()
    }
    
    struct Card: Equatable, Identifiable {
        var id: String
        var isVisible: Bool = true
        var foundMatch: Bool = false
        var content: CardContent
    }
}
