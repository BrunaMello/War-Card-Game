//
//  ContentView.swift
//  War Card Game
//
//  Created by Bruna Crespo Mello on 09/04/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
            
                
                Button {
                   deal()
                } label: {
                    Image("button")
                }

                
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player 1")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()

                }
                .foregroundColor(.white)
                Spacer()

                
            }
        }
    }
    
    func deal() {
        //radomize the cards
        let playerValue = Int.random(in: 2...14)
        let cpuValue = Int.random(in: 2...14)

        playerCard = "card" + String(playerValue)
        cpuCard = "card" + String(cpuValue)
        
        if cpuValue > playerValue {
            cpuScore = cpuScore + 1
        } else if cpuValue < playerValue {
            playerScore = playerScore + 1
        }
        
    
    }
    
}

 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
