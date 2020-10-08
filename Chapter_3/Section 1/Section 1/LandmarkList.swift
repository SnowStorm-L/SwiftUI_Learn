/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        Text("Hello")
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
