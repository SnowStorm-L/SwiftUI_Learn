//
//  UserData.swift
//  Section3
//
//  Created by L on 2020/9/10.
//  Copyright © 2020 L. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    
    @Published var showSelectedOnly = false
    @Published var dataSource = (0...10).map { _ in Model() } 
    
}
