//
//  ContentView.swift
//  IOS_memo
//
//  Created by student on 22.10.2024.
//

import SwiftUI

struct ContentView: View {
    let cardContents: [String] = ["😀", "🎉", "😎", "🥳", "🧩", "🐸"]
    
    let cols = [
        //GridItem(.adaptive(minimum: 60))
        GridItem(.fixed(120)),
        GridItem(.fixed(120))
    ]

    var body: some View {
//        VStack {
//            ForEach(cardContents, id: \.self) { content in
//                CardView(content: content)
//                    .padding()
//            }
//        }
        
        ScrollView{
            LazyVGrid(columns: cols, spacing: 20){
                ForEach(cardContents, id: \.self) { content in
                    CardView(content: content)
                        .padding()
                }.padding()
            }.padding()
        }
        
    }
}



//import SwiftUI
//
//struct ContentView: View {
//    let allCardContents: [String] = ["😀", "🎉", "😎", "🥳", "🧩", "🐸"]
//    @State private var displayedCards: [String] = []
//    let cols = [
//            //GridItem(.adaptive(minimum: 60))
//            GridItem(.fixed(120)),
//            GridItem(.fixed(120))
//        ]
//
//    var body: some View {
//        VStack {
//            HStack {
//                Button(action: { adjustCardNumber(by: 2, symbol: "add") }) {
//                    Image(systemName: "plus.circle.fill")
//                        .resizable()
//                        .frame(width: 50, height: 50)
//                }
//                .disabled(displayedCards.count >= allCardContents.count)
//
//                Button(action: { adjustCardNumber(by: -2, symbol: "remove") }) {
//                    Image(systemName: "minus.circle.fill")
//                        .resizable()
//                        .frame(width: 50, height: 50)
//                }
//                .disabled(displayedCards.count < 2)
//            }
//            .padding()
//
//            ScrollView{
//                        LazyVGrid(columns: cols, spacing: 20){
//                            ForEach(displayedCards, id: \.self) { content in
//                                CardView(content: content)
//                                    .padding()
//                            }.padding()
//                        }.padding()
//                    }
//            .padding()
//        }
//        .onAppear {
//            
//            displayedCards = Array(allCardContents.prefix(2))
//        }
//    }
//
//    func adjustCardNumber(by offset: Int, symbol: String) {
//        let currentCount = displayedCards.count
//
//        if offset > 0 {
//            let newCount = currentCount + offset
//            if newCount <= allCardContents.count {
//                let additionalCards = Array(allCardContents[currentCount..<newCount])
//                displayedCards.append(contentsOf: additionalCards)
//            }
//        } else if offset < 0 {
//            let newCount = currentCount + offset
//            if newCount >= 2 {
//                displayedCards.removeLast(-offset)
//            }
//        }
//    }
//}


#Preview {
    ContentView()
}
