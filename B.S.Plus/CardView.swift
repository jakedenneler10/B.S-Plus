//
//  CardView.swift
//  B.S.Plus
//
//  Created by Karson Mellott on 10/24/24.
//

import SwiftUI

struct CardView: View {
    
    var cards = [DealerCard]()
    var card = DealerCard()
    
    func getSuit() -> Image {
       if (card.suit == "Spades") {
               return Image(systemName: "suit.spade.fill")
           }
        if (card.suit == "Hearts") {
               return Image(systemName: "suit.heart.fill")
           }
        if (card.suit == "Diamonds") {
               return Image(systemName: "suit.diamond.fill")
           }
        if (card.suit == "Clubs"){
               return Image(systemName: "suit.club.fill")
        } else {
                return Image(systemName: "j.circle.fill")
        }
    }
    
    func getValue() -> Text {
        if (card.value == 1) {
            return Text("A")
        } else if (card.value == 11) {
            return Text("J")
        } else if (card.value == 12) {
            return Text("Q")
        } else if (card.value == 13) {
            return Text("K")
        } else if (card.value == 0){
            return Text("Joker")
        } else {
            return Text ("\(card.value)")
        }
    }
    
    
    var body: some View {
        ZStack {
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                .frame(width: 300, height: 500)
            getValue()
                .font(.system(size: 100))
                .bold()
            VStack {
                HStack {
                    getSuit()
                        .font(.system(size: 50))
                    Spacer()
                }
                    .padding(.leading, 75)
                    .padding(.top, 170)
                Spacer()
                HStack {
                    Spacer()
                    getSuit()
                        .font(.system(size: 50))

                }
                    .padding(.trailing, 75)
                    .padding(.bottom, 170)
            }
        }
    }
}

#Preview {
    CardView()
}
