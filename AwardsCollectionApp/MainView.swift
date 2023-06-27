//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Pavel Karunnyj on 27.06.2023.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(awardIsShowing ? "Hide Award" : "Show Award")
                Spacer()
                Image(systemName: "chevron.up.square")
                    .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                    .scaleEffect(awardIsShowing ? 2 : 1)
            }
            
            Spacer()
            
            if awardIsShowing {
                GeometryView()
                    .frame(width: 250, height: 250)
                    .transition(.customTransition)
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var customTransition: AnyTransition {
        let insertion = AnyTransition
            .scale(scale: 0.2)
            .combined(with: .opacity)
        let removal = AnyTransition
            .scale(scale: 1.0)
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
