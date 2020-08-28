//
//  CircleImage.swift
//  Section1
//
//  Created by L on 2020/8/26.
//  Copyright © 2020 L. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("dog")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
