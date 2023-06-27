//
//  GeometryView.swift
//  AwardsCollectionApp
//
//  Created by Pavel Karunnyj on 27.06.2023.
//

import SwiftUI

struct GeometryView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            let size = min(width, height)
            
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let middle = size * 0.5
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: middle))
                path.addLine(to: CGPoint(x: middle, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: middle))
            }
            .fill(LinearGradient(
                gradient: Gradient(colors: [.red, .green, .blue, .purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ))
            
            Path { path in
                path.move(to: CGPoint(x: nearLine, y: middle))
                path.addLine(to: CGPoint(x: farLine, y: middle))
            }
            .stroke(Color.white, lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: middle, y: farLine))
            }
            .stroke(Color.white, lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
            }
            .stroke(Color.white, lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: nearLine, y: nearLine))
            }
            .stroke(Color.white, lineWidth: 2)
        }
    }
}

struct GeometryView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryView()
            .frame(width: 300, height: 300)
    }
}
