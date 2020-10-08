//
//  Section_1App.swift
//  Section 1
//
//  Created by L on 2020/9/25.
//

import SwiftUI

@main
struct Section_1App: App {
    var body: some Scene {
        WindowGroup {
            CategoryHome().environmentObject(UserData())
        }
    }
}
