//
//  LandmarkDetail.swift
//  Section 2
//
//  Created by L on 2020/8/28.
//  Copyright © 2020 L. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            landmark.image
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
