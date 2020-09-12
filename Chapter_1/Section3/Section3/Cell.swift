//
//  Cell.swift
//  Section3
//
//  Created by L on 2020/9/10.
//  Copyright © 2020 L. All rights reserved.
//

import SwiftUI

struct Cell: View {
    
    var model: Model
    
    var body: some View {
        HStack {
            Text("\(model.number)")
            Spacer()
            if model.isSelected {
                Image(systemName: "star.fill").imageScale(.medium).foregroundColor(.yellow)
            }
        }
    }
    
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(model: Model()).previewLayout(.fixed(width: 300, height: 70))
    }
}
