import SwiftUI

struct ContentView: View {
    let allCardContents: [String] = ["😀", "🎉", "😎", "🥳", "🧩", "🐸"]
    @State private var selectedTheme: String?
    @State private var displayedCards: [String] = []
    let cols = [
        GridItem(.adaptive(minimum: 90))
    ]
    var menu: some View{
        HStack {
            Button(action: {
                selectedTheme = "Happy"
            }) {
                VStack {
                    Text("😀")
                        .font(.title)
                    Text("Happy")
                        .font(.caption)
                }
            }
            .padding()
            
            Button(action: {
                selectedTheme = "Animals"
            }) {
                VStack {
                    Text("🐶")
                        .font(.title)
                    Text("Animals")
                        .font(.caption)
                }
            }
            .padding()
            
            Button(action: {
                selectedTheme = "Food"
            }) {
                VStack {
                    Text("🍎")
                        .font(.title)
                    Text("Food")
                        .font(.caption)
                }
            }
            .padding()
        }
    }
    
    var body: some View {
        VStack {
            
            Text("Memo").font(.largeTitle)
            
            if selectedTheme == "Happy" {
                HappyThemeView()
            } else if selectedTheme == "Animals" {
                AnimalThemeView()
            } else if selectedTheme == "Food" {
                FoodThemeView()
            } else {
                Text("Select a theme")
                    .font(.headline)
            }
            
            menu
        }
    }
}



#Preview {
    ContentView()
}
