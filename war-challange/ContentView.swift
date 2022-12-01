//
//  ContentView.swift
//  war-challange
//
//  Created by Osman Onurcan on 15.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card4"
    @State private var cpuCard = "card5"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
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
                let playerRand = Int.random(in: 2...14)
                let cpuRand = Int.random(in: 2...14)
                
                playerCard = "card"+String(playerRand)
                cpuCard = "card"+String(cpuRand)
                
                if(playerRand>cpuRand){
                    playerScore+=1
                }
                else if(playerRand<cpuRand){
                    cpuScore+=1
                }
               
            } label: {
                Image("dealbutton")
            }

          
            Spacer()
            HStack{
                Spacer()
                VStack{
                    Text("Player 1").font(.system(size: 25)).padding().foregroundColor(.white)
                    Text(String(playerScore)).font(.system(size: 25)).padding().foregroundColor(.white)
                }
                Spacer()
                VStack{
                    Text("CPU").font(.system(size: 25)).padding().foregroundColor(.white)
                    Text(String(cpuScore)).font(.system(size: 25)).padding().foregroundColor(.white)
                }
                Spacer()

            }
            Spacer()
        }.background(Image("background")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
