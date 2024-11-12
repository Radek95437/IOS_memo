//
//  FoodThemeView.swift
//  IOS_memo
//
//  Created by student on 29.10.2024.
//

//import SwiftUI
//
//struct FoodThemeView: View {
//    @State private var displayedCards: [String] = []
//    
//    let emojis: [String] = ["🍎", "🍕", "🍔", "🍣", "🍩", "🍭","🥦","🌶️"]
//    let cardColor: Color = .orange
//
//    var body: some View {
//        let cols = [
//            GridItem(.adaptive(minimum: 90))
//        ]
//        
//        ScrollView {
//            LazyVGrid(columns: cols, spacing: 20) {
//                ForEach(displayedCards, id: \.self) { content in
//                    CardView(content: content, cardColor: cardColor)
//                        .padding()
//                }
//            }
//            .padding()
//        }
//        .onAppear {
//            displayedCards = emojis.shuffled().prefix(8).map { $0 }
//        }
//    }
//}
//
//#Preview {
//    FoodThemeView()
//}
