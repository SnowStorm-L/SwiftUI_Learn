//
//  Model.swift
//  Section3
//
//  Created by L on 2020/9/10.
//  Copyright © 2020 L. All rights reserved.
//

import SwiftUI

struct Model: Identifiable {
   
    var id = UUID().uuidString
    
    var isSelected = Bool.random()
    
    var number = arc4random()%1000 + 100
    
}
