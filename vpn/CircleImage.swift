//
//  CircleImage.swift
//  vpn
//
//  Created by mad on 3/22/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }.shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
