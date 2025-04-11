//
//  TLButtonView.swift
//  TodoList
//
//  Created by M.A on 4/10/25.
//

import SwiftUI

struct TLButtonView: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button{
            //Attemp Login
        }label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TLButtonView(title: "title", background: .pink){
        //action
        
    }
}
