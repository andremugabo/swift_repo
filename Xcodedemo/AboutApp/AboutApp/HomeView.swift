//
//  HomeView.swift
//  AboutApp
//
//  Created by M.A on 4/7/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
       
            VStack {
                       Text("All About")
                           .font(.largeTitle)
                           .fontWeight(.bold)
                           .padding()
                       Image("11")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .cornerRadius(10)
                           .padding(40)
                       Text("This Home")
                   }
               }
        
       
}

struct HomeView_Preview: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}
