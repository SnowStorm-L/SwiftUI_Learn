//
//  ContentView.swift
//  Section1
//
//  Created by L on 2020/8/26.
//  Copyright © 2020 L. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().edgesIgnoringSafeArea(.top).frame(height: 300) // edgesIgnoringSafeArea 置于顶部
            CircleImage().offset(y: -130).padding(.bottom, -130) // padding 下方控件距离这个控件底部-130距离
            VStack(alignment: .leading) { // 垂直布局
                Text("Turtle Rock").font(.title).foregroundColor(.green)
                HStack { // 水平布局
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer() // 垫片, 类似空白视图占位用
                    Text("California").font(.subheadline)
                }
            }.padding() // 填充, 边缘间距
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(DeviceNames.all, id: \.self) { devicesName in
            ContentView()
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
