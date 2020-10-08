//
//  UserData.swift
//  Section 1
//
//  Created by L on 2020/9/25.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
