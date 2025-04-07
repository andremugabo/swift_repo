//
//  StoryView.swift
//  AboutApp
//
//  Created by M.A on 4/8/25.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        VStack {
            Text("My Story")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
        }
    }
}

struct StoryView_Prevoews: PreviewProvider{
    static var previews: some View{
        StoryView()
    }
}
