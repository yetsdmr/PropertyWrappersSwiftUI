//
//  DetailView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Yunus Emre Taşdemir on 17.04.2023.
//

import SwiftUI

struct DetailView: View {
    @Binding var showDetailView : Bool
    @Binding var darkModeEnable : Bool
    
    var body: some View {
        VStack {
            Button {
                showDetailView.toggle()
            } label: {
                Text("Dismiss")
            }

            Toggle(isOn: $darkModeEnable) {
                Text("Dark Mode")
                    .foregroundColor(darkModeEnable ? .white : .black)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(showDetailView: .constant(false), darkModeEnable: .constant(true))
    }
}
