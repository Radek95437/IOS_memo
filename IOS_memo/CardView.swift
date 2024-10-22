import SwiftUI

struct CardView: View {
    @State private var isFaceUp: Bool = false
    var content: String

    var body: some View {
        let backgroundColor = isFaceUp ? Color.white : Color.blue

        Group {
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .stroke(lineWidth: 2)
                    .foregroundColor(Color.blue)
                    .background(backgroundColor)
                    .cornerRadius(12)
                    .opacity(isFaceUp ? 1 : 0.5)
                    .onTapGesture {
                        withAnimation {
                            isFaceUp.toggle()
                        }
                    }
                
                if isFaceUp {
                    Text(content)
                        .font(.largeTitle)
                }
            }
        }
        .frame(width: 100, height: 150)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "😀")
    }
}
