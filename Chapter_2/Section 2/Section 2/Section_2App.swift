//
//  Section_2App.swift
//  Section 2
//
//  Created by L on 2020/9/24.
//

import SwiftUI

@main
struct Section_2App: App {
    var body: some Scene {
        WindowGroup {
            HikeView(hike:hikeData[0])
        }
    }
}

struct Section_2App_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
