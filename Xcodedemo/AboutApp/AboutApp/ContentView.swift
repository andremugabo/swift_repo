//
//  ContentView.swift
//  AboutApp
//
//  Created by M.A on 4/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "person")
                    }
            }
            TabView {
                StoryView()
                    .tabItem{
                        Label("My Story", systemImage: "book")
                    }
            }
        }
    }
}


struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
