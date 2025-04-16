//
//  ContentView.swift
//  weatherdemo
//
//  Created by M.A on 4/16/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            }else{
                if locationManager.isLoading {
                    LoadingView()
                }else{
                    
                    WelcomeView()
                                    .environmentObject(locationManager)
                }
            }
            
           
        }
        .background(Color(hue: 0.663, saturation: 0.857, brightness: 0.498))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
