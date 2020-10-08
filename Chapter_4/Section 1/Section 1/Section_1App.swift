//
//  Section_1App.swift
//  Section 1
//
//  Created by L on 2020/9/29.
//

import SwiftUI

@main
struct Section_1App: App {
    var body: some Scene {
        WindowGroup {
            PageView(features.map { FeatureCard(landmark: $0) }).aspectRatio(3/2, contentMode: .fit)
        }
    }
}
