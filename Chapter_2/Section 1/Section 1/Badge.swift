//
//  Badge.swift
//  Section 1
//
//  Created by L on 2020/9/12.
//  Copyright © 2020 L. All rights reserved.
//

import SwiftUI

struct Badge: View {
    
    static let rotationCount = 8
    
    var badgeSymbols: some View {
        ForEach(0..<Badge.rotationCount) { i in
            RotatedBadgeSymbol(
                angle: .degrees(Double(i) / Double(Badge.rotationCount)) * 360.0
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                self.badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }.scaledToFit()
    }
    
}


#if DEBUG
struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(DeviceNames.all, id: \.self) { devicesName in
            Badge()
                .previewDevice(PreviewDevice(rawValue: devicesName))
                /*
                 .environment(\.sizeCategory, .extraSmall) // 字体大小
                 .environment(\.layoutDirection, .rightToLeft) // 布局方向
                 .environment(\.colorScheme, .dark) // 暗黑模式
                 */
                //.previewLayout(.fixed(width: 568, height: 320)) // 横屏设置
                .previewDisplayName(devicesName)
        }
    }
}
#endif

enum DeviceNames: String, CaseIterable {
    case iPhoneSE = "iPhone SE"
    case iPhoneX = "iPhone X"
    //case iPhoneXs = "iPhone Xs"
    //case iPhoneXsMax = "iPhone Xs Max"
    
    static var all: [String] {
        return DeviceNames.allCases.map { $0.rawValue }
    }
}
