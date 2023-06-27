//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Pavel Karunnyj on 27.06.2023.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    GradientRectangles()
                        .frame(width: 150, height: 150)
                    PathView()
                        .frame(width: 150, height: 150)
                    CurvesView()
                        .frame(width: 150, height: 150)
                    GeometryView()
                        .frame(width: 150, height: 150)
                }
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}

