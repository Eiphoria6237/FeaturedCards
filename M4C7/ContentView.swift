//
//  ContentView.swift
//  M4C7
//
//  Created by LIU SHURUI on 2021/03/16.
//

import SwiftUI

struct ContentView: View {
    var cardcolor:Color {
        return Color(.sRGB,
                     red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1))
        
    }
    var body: some View {
        GeometryReader { geo in
            
            TabView {
                ForEach(0..<50) { index in
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(cardcolor)
                            .frame(width: geo.size.width-20, height: geo.size.height-50, alignment: .center)
                            .cornerRadius(20)
                            .shadow(radius: 10)
                        Image(systemName: "\(index+1).circle")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                          
                    }
                    
                }
              
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
