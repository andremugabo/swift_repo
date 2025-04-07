//
//  ContentView.swift
//  Xcode demo
//
//  Created by M.A on 4/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Vertical stack
        VStack( spacing: 9.0) {
            // image of the globe
            Image("13")
                .resizable(resizingMode: .stretch)
            Image("11")
                .resizable(resizingMode: .stretch)
                .imageScale(.small)
                .foregroundStyle(.purple)
                .cornerRadius(20)
                .contentMargins(10)
            //Label
            Text("Hello, Mugabo Andre")
            Text("Hello this my Changes")
                .foregroundStyle(Color("Primary Accent Color"))
                .fontWeight(.bold)
            Button(action:{print("Hihii")}){
                Text("Click Me")
                    .padding(10)
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
            
                
                
                
        }
        .padding(.top)
    }
}

#Preview {
    ContentView()
}
