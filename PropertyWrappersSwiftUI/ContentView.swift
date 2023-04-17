//
//  ContentView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Yunus Emre Taşdemir on 17.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var darkModeEnable = false
    @State private var showDetailView = false
    
    var body: some View {
        ZStack {
            Color(darkModeEnable ? .black : .white)
            
            VStack {
                Button {
                    showDetailView.toggle()
                } label: {
                    Text("Show Detail View")
                }

            }
            .padding()
        }
        .sheet(isPresented: $showDetailView, content: {
            DetailView(showDetailView: $showDetailView, darkModeEnable: $darkModeEnable)
        })
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
