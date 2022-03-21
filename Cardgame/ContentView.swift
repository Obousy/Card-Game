//
//  ContentView.swift
//  Cardgame
//
//  Created by Mustafa Obousy on 08/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var Card1 = 2
    @State private var Card2 = 2
    
    @State private var point1 = 0
    @State private var point2 = 0
    
    @State private var value: CGFloat = 0
    @State private var imgname = "red_back"
    
    @State private var imgName = "yellow_back"
    
    @State private var fadeOut = false
    
    
    var body: some View {
        
        ZStack {
        
       
        
       
        
           
        VStack {
            
        
            
        Text("1 VS 1 Card Game")
            
            Spacer()
            
            HStack {
                Image("card" + String(Card1)).offset(x:-180, y:-1700).frame(width: 200, height: 200).scaleEffect(0.15)
            
            
                Image("card" + String(Card2)).offset(x:-130, y:-1700).frame(width: 100, height: 50).scaleEffect(0.15)
                    }
                
                
            }
            
            Spacer()
            
            Button(action: {
                self.Card1 =
                Int.random(in: 2...24)
                self.Card2 =
                Int.random(in: 2...24)
                
                if self.Card1 > self.Card2{
                    
                    self.point1 += 1
                
                }
                else if self.Card2 >
                            self.Card1{
                    self.point2 += 1
                }
                
            }) {
                Spacer()
                Text("CHALLENGE").font(.largeTitle).foregroundColor(.black)
                    .offset(x: -80,y: 50)
                    .onTapGesture {
                    self.imgname = "red_back"
                    self.imgName = "yellow_back"
                }
                    
            }
            
        
            Spacer()
            HStack{
                
                VStack {
                    Text("PLAYER")
                        .bold()
                        .padding(.bottom, 15)
                    Text(String(point1))
                }.padding(.leading,50).foregroundColor(.black).offset(x:0, y:180)
                Spacer()
                
            
                
                
            VStack{
                    Text("COMP")
                    .bold()
                    .padding(.bottom, 15)
                    Text(String(point2))
            }.padding(.leading, -100).foregroundColor(.black).offset(x: 0, y: 180)
                
            
        }
            Spacer()
    }
            
    }
}
    /*func CardType( value: Int) -> String{
        if (value == 1) { return "AD"}
        else if (value == 11) { return "JD"}
        else if (value == 12) { return "QD"}
        else if (value == 13) { return "KD"}
        else{
            return "\(value)D"
        }
    }*/


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

